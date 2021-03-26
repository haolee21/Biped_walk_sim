#!/bin/bash
# 
# WRAPPER SCRIPT TO SUBMIT MATLAB PARALLEL JOBS 
# USER CAN SELECT MATLAB VERSION, MEMORY, RUNTIME, NO. OF SLOTS, etc.
# AUTHOR=RD (hpc@ucla.edu)
# CREATED = 2020/03/27
# LAST MODIFIED = 2020/03/27
#
##################################################################################### 
# DOCUMENTATION:
#
# The script:
#
#	 ./matlab_batch_parallel_job_submit.sh 
#
#generates and submits a MATLAB batch job for parallel execution via the
#MATLAB Distributed Computing Toolbox.
#
#YOU WILL NEED TO HAVE HAD ALREADY RUN AT THE MATLAB PROMPT THE COMMANDS:
#
#rehash toolboxcache
#configcluser
#
#-> Do NOT include the MATLAB parpool or batch commands in your script <-
#
#This submission script generates an intermediate matlab script
#(named IDRE_XXXXX.m - where XXXXXX is a random alphanumeric sequence)
#which contains the lines:
#
#	 addpath('/YOUR/CURRENT/DIR')
#	 job=batch('matlab script name','Pool',slots)
#
#this intermediate script starts the actual MATLAB batch job submission.
#
#TO RETRIEVE INFO ON THIS JOB, LOOK IN THE joblog FOR THE MATLAB ID OF THE JOB
#(use: grep ID: job_name.joblog.JOBID | awk '{print $2}'), THEN START AN 
#INTERACTIVE MATLAB SESSION AND USE:
#
#	c=parcluster();
#	myjob=findJob(c,'ID',id_number);
#	fetchOutputs(myjob);
#	diary(myjob);
#	etc.
#
#where id_number is the integer job ID number that MATLAB 
#has assigned to the job (not the scheduler).
#
#Usage:
# ./matlab_batch_parallel_job_submit.sh  [-t time in hours] 
#   [ -s number of processes ] [-m memory per process (in GB)]
#   [-hp to run on owned nodes] [-ex to run exclusively]
#   [-v MATLAB version] [-f matlab script (with .m extension)]  
#   [-ns (to build a submission script without submitting the job)]
#   [-nts (to not add time stamp to cmd file name)] [ --help ]
######################################################################################

function usage {
    echo -e "\nUsage:\n $0  [-t time in hours] \n   [ -s number of processes ] [-m memory per process (in GB)]\n   [-hp to run on owned nodes] [-ex to run exclusively]\n   [-v MATLAB version] [-f matlab script (with .m extension)]  \n   [-ns (to build a submission script without submitting the job)]\n   [-nts (to not add time stamp to cmd file name)] [ --help ]\n"
}


function isanumber {
    if ! [[ $1 =~ ^-?[0-9]+$ ]]; then
        echo -e "\n\t$2 needs to be an integer"
        echo -e "Enter:\n\t $0 -h\n for help\n"
        exit
    fi

}

slots=1
mem=2
dir=`pwd`
FLAG=""
FLAG2=""
FLAG3=""
FLAG4=""
FLAG5=""
hp=""
exclusive=""
PE="matlab"
name=""
list=""
time=2
hp=""
arc=""
list_arc=""
inc=""
list_inc=""

if [ $# == 0 ]; then
    usage
    exit
fi

testfile=`mktemp`

while [[ $# > 0 ]]
do
key="$1"

case $key in
    -t|--time)
	time=$2
	isanumber $time "time in hours"
	if [[ "$time" -gt "24" ]]; then
	    hp=",highp"
	fi
	shift # past argument
	;;
    -s|--slots)
	slots=$2
	#echo "$@"
	isanumber $slots $key
	shift # past argument
	;;
    -m|--memory)
	mem=$2
	#echo "$@"
	isanumber $mem $key
	shift # past argument
	;;
     -f|--file)
	file=$2
	if [ ! -e ${file} ]; then
	    echo -e "\n\tThe matlab script \"${file}\" is not present in this directory"
            echo -e "\tplease enter the name of a valid matlab script (with .m extension)"
            echo -e "\tand try again.\n"
            usage
            exit
	fi
	if [ "$name" == "" ]; then
	    name=${file%.*}
	fi
	list="$list $file"
	shift # past argument
	;;
    -v|--version)
        ver=/$2
        #echo $ver
        module av matlab${ver} >> $testfile 2>&1
        grep ERROR $testfile > /dev/null
        if [ $? == 0 ]; then
            echo -e "\n\tMATLAB version ${ver} is not available please on Hoffman2"
            echo -e "\tPlease see which version of MATLAB are available with:"
            echo -e "\n\t module av MATLAB"
            usage
            exit
        fi
        #echo "$@"
        #isanumber $mem $key
        shift # past argument
        ;;
    -ns|--nosubmit)
        FLAG=SET
	;;
    -nts|--notimestamp)
        FLAG2=SET
        ;; 
    -hp|--highp)
        FLAG4=SET
        ;;
    -ex|--exclusive)
        FLAG5=SET
        ;;
    -h|--help)
	    echo -e "\nThe script:\n\n\t $0 \n\ngenerates and submits a MATLAB batch job for parallel execution via the\nMATLAB Distributed Computing Toolbox.\n\nYOU WILL NEED TO HAVE HAD ALREADY RUN AT THE MATLAB PROMPT THE COMMANDS:\n\nrehash toolboxcache\nconfigcluser\n\n-> Do NOT include the MATLAB parpool or batch commands in your script <-\n\nThis submission script generates an intermediate matlab script\n(named IDRE_XXXXX.m - where XXXXXX is a random alphanumeric sequence)\nwhich contains the lines:\n\n\t addpath('/YOUR/CURRENT/DIR')\n\t job=batch('matlab script name','Pool',slots)\n\nthis intermediate script starts the actual MATLAB batch job submission.\n\nTO RETRIEVE INFO ON THIS JOB, LOOK IN THE joblog FOR THE MATLAB ID OF THE JOB\n(use: grep ID: job_name.joblog.JOBID | awk '{print \$2}'), THEN START AN \nINTERACTIVE MATLAB SESSION AND USE:\n\n\tc=parcluster();\n\tmyjob=findJob(c,'ID',id_number);\n\tfetchOutputs(myjob);\n\tdiary(myjob);\n\tetc.\n\nwhere id_number is the integer job ID number that MATLAB \nhas assigned to the job (not the scheduler)."
        usage
	echo ""
        exit
	;;
    *)        
        echo "\n\t$key is an unknown option..."
        usage
        exit
	;;
esac
shift # past argument or value
done
    
if [[ "$FLAG" == "" ]]; then 
  echo "Running $name on $slots processes each with ${mem}GB of memory for $time hours"
elif [[ "$FLAG" == "SET" ]]; then
  echo "Preparing submit script for $name on $slots processes each with ${mem}GB of memory for $time hours"	
fi
timestamp=`date "+%F_%H-%M-%S"`

if [[ "$FLAG2" == "" ]]; then 
   timestamp=`date "+%F_%H-%M-%S"`
   name_submit_script=${name}_${timestamp}
else
   name_submit_script=${name}
fi

if [[ "$FLAG4" != "" ]]; then
    hp=",highp"
fi

if [[ "$FLAG5" != "" ]]; then
    ex=",exclusive"
fi


currdir=`pwd`
filetmp=IDRE_$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
cat << EOF > ${filetmp}.m

c=parcluster;
c.AdditionalProperties.EmailAddress = '$USER@mail';
c.AdditionalProperties.MemUsage = '${mem}G';
c.AdditionalProperties.WallTime = '${time}:00:00';
c.AdditionalProperties
addpath('$currdir')
job=batch(c,'$name','Pool',$slots)

EOF

myname=${filetmp%.*}

cat << EOF > ./${name}_${timestamp}.cmd
#!/bin/bash
#
#  UGE job for example.cmd built Fri May 26 13:52:07 PDT 2017
#
#  The following items pertain to this script
#  Use current working directory
#$ -cwd
#  input           = /dev/null
#  output          = ./${name}.joblog
#$ -o ./${name}.joblog.\$JOB_ID
#  error           = Merged with joblog
#$ -j y
#
#  Resources requested
# #$ -pe $PE 1 #$slots
#$ -l h_data=${mem}g,h_vmem=INFINITY,h_rt=${time}:00:00${hp}${ex}
#
#  Name of application for log
#$ -v QQAPP=parallel
#  Email address to notify
#$ -M $USER@mail
#  Notify at beginning and end of job
#$ -m bea
#  Job is not rerunable
#$ -r n
#  Uncomment the next line to have your environment variables used by SGE
#$ -V
#

echo ""
echo "Job \$JOB_ID started on:   "\` hostname -s \`
echo "Job \$JOB_ID started on:   "\` date \`
echo ""

. /u/local/Modules/default/init/modules.sh
module load matlab${ver}
module li
export MCR_CACHE_ROOT=\$TMPDIR
echo " "

echo "Number of slots for this run is \$NSLOTS"
echo "Number of slots that will be requested by MATLAB's batch job is $((slots+1))"
 
echo " "

echo "Now running..."
echo " "

# use -nojvm if no graphics will be generated:
#echo "matlab -nojvm -nodisplay -nosplash -r ${myname} -logfile ${myname}.output.\$JOB_ID"
#echo " "
#matlab -nojvm -nodisplay -nosplash -r ${myname} -logfile ${myname}.output.\$JOB_ID
#echo " "

echo "matlab -nodisplay -nosplash -r ${myname} -logfile ${name}.output.\$JOB_ID"
echo " "
matlab -nodisplay -nosplash -r ${myname} -logfile ${name}.output.\$JOB_ID
echo " "

# license check out error rescheduling support:
if [[ \`tail -n2 ${name}.joblog.\$JOB_ID | grep "Licensed number of users already reached" | wc -l\` != 0 ]] || [[ \`tail -n2 ${name}.joblog.\$JOB_ID | grep "No licenses available for toolbox" | wc -l\` != 0 ]] || [[ \`tail -n2 ${name}.joblog.\$JOB_ID | grep "License checkout failed" | wc -l\` != 0 ]] || [[ \`tail -n2 ${name}.joblog.\$JOB_ID | grep "Error checking out license" | wc -l\` != 0 ]] || [[ \`tail -n2 ${name}.joblog.\$JOB_ID | grep "Licensing error:" | wc -l\` != 0 ]]; then
	sleep 10m
	exit 99 
fi
echo "... done"
echo " "

echo ""
echo "Job \$JOB_ID terminated on: "\`date\`
echo ""

EOF

chmod u+x ${name}_${timestamp}.cmd

#echo "FLAG="$FLAG

if [[ -x ${name}_${timestamp}.cmd ]] & [[ "$FLAG" == "" ]]; then
  qsub ${name}_${timestamp}.cmd
elif [[ -x ${name}_${timestamp}.cmd ]] & [[ "$FLAG" == "SET" ]]; then
  echo "The submission script: ${name}_${timestamp}.cmd was successfully created"
else
  echo "No submission file found please try again... report a problem to hpc@ucla.edu"
fi

rm $testfile
