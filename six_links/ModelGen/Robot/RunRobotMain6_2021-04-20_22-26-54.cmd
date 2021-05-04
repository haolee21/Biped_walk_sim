#!/bin/bash
#
#  UGE job for example.cmd built Fri May 26 13:52:07 PDT 2017
#
#  The following items pertain to this script
#  Use current working directory
#$ -cwd
#  input           = /dev/null
#  output          = ./RunRobotMain6.joblog
#$ -o ./RunRobotMain6.joblog.$JOB_ID
#  error           = Merged with joblog
#$ -j y
#
#  Resources requested
# #$ -pe matlab 1 #50
#$ -l h_data=12g,h_vmem=INFINITY,h_rt=23:00:00
#
#  Name of application for log
#$ -v QQAPP=parallel
#  Email address to notify
#$ -M haolee@mail
#  Notify at beginning and end of job
#$ -m bea
#  Job is not rerunable
#$ -r n
#  Uncomment the next line to have your environment variables used by SGE
#$ -V
#

echo ""
echo "Job $JOB_ID started on:   "` hostname -s `
echo "Job $JOB_ID started on:   "` date `
echo ""

. /u/local/Modules/default/init/modules.sh
module load matlab/9.7
module li
export MCR_CACHE_ROOT=$TMPDIR
echo " "

echo "Number of slots for this run is $NSLOTS"
echo "Number of slots that will be requested by MATLAB's batch job is 51"
 
echo " "

echo "Now running..."
echo " "

# use -nojvm if no graphics will be generated:
#echo "matlab -nojvm -nodisplay -nosplash -r IDRE_tWOpwEHv -logfile IDRE_tWOpwEHv.output.$JOB_ID"
#echo " "
#matlab -nojvm -nodisplay -nosplash -r IDRE_tWOpwEHv -logfile IDRE_tWOpwEHv.output.$JOB_ID
#echo " "

echo "matlab -nodisplay -nosplash -r IDRE_tWOpwEHv -logfile RunRobotMain6.output.$JOB_ID"
echo " "
matlab -nodisplay -nosplash -r IDRE_tWOpwEHv -logfile RunRobotMain6.output.$JOB_ID
echo " "

# license check out error rescheduling support:
if [[ `tail -n2 RunRobotMain6.joblog.$JOB_ID | grep "Licensed number of users already reached" | wc -l` != 0 ]] || [[ `tail -n2 RunRobotMain6.joblog.$JOB_ID | grep "No licenses available for toolbox" | wc -l` != 0 ]] || [[ `tail -n2 RunRobotMain6.joblog.$JOB_ID | grep "License checkout failed" | wc -l` != 0 ]] || [[ `tail -n2 RunRobotMain6.joblog.$JOB_ID | grep "Error checking out license" | wc -l` != 0 ]] || [[ `tail -n2 RunRobotMain6.joblog.$JOB_ID | grep "Licensing error:" | wc -l` != 0 ]]; then
	sleep 10m
	exit 99 
fi
echo "... done"
echo " "

echo ""
echo "Job $JOB_ID terminated on: "`date`
echo ""

