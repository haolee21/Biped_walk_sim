%% this script will re-run the ones that violate the constraints
data = readtable('rerun.csv','Format','%s%s%f%s%d%f');

task_i=1;
tasks = cell(1,size(data,1));
hip_lens = unique(data{:,3});

for i=1:size(data,1)
    modelName = data{i,2}{:};
    
    % hipLen and related file name
    hipLen = data{i,3};
    
    
    %weight
    
    if strcmp(data{i,4}{:},'base')
        w = [30,30,30,30,30,30];
    elseif strcmp(data{i,4}{:},'hip')
        w = [30,30,6,6,30,30];
    elseif strcmp(data{i,4}{:},'knee')
        w = [30,6,30,30,6,30];
    elseif strcmp(data{i,4}{:},'ank')
        w = [6,30,30,30,30,6];
    elseif strcmp(data{i,4}{:},'hk')
        w = [30,10,10,10,10,30];
    elseif strcmp(data{i,4}{:},'ha')
        w = [10,30,10,10,30,10];
    elseif strcmp(data{i,4}{:},'ka')
        w = [10,10,30,30,10,10];    
    end
    
    %knee dir
    kneeDir = data{i,5};

    
    tasks{1,task_i}=@()batch_sim_single(modelName,hipLen,w,kneeDir,find(hip_lens==hipLen),kneeDir);
    task_i = task_i+1;
end

outputs = cell(1,size(tasks,2));

parfor i=1:size(tasks,2)
    outputs{1,i}=tasks{1,i}();
end


%% prepare table for simulation results
fileNames = cell(1,size(outputs,2));
modelNames = cell(1,size(outputs,2));
const_violat = zeros(1,size(outputs,2));
hipLens= zeros(1,size(outputs,2));
knee_dir = zeros(1,size(outputs,2));
w = cell(1,size(outputs,2));
for i=1:size(outputs,2)
    fileNames{1,i}=outputs{1,i}.fileName;
    modelNames{1,i}=outputs{1,i}.modelName;
    hipLens(1,i)=outputs{1,i}.hipLen;
    knee_dir(1,i)=outputs{1,i}.knee_dir;
    const_violat(1,i)=outputs{1,i}.const_violat;
    cur_w = outputs{1,i}.w;
    if sum(cur_w == [30,30,30,30,30,30])==6
        w{1,i}='base';
    elseif sum(cur_w==[30,30,6,6,30,30])==6
        w{1,i}='hip';
    elseif sum(cur_w==[30,6,30,30,6,30])==6
        w{1,i}='knee';
    elseif sum(cur_w==[6,30,30,30,30,6])==6
        w{1,i}='ank'; 
    elseif sum(cur_w==[30,10,10,10,10,30])==6
        w{1,i}='hk';
    elseif sum(cur_w==[10,30,10,10,30,10])==6
        w{1,i}='ha';
    elseif sum(cur_w==[10,10,30,30,10,10])==6
        w{1,i}='ka';
    end
end
[t1,~]=clock;
batchName = [num2str(t1(2),'%02d'),num2str(t1(3),'%02d'),num2str(t1(4),'%02d'),num2str(t1(5),'%02d'),num2str(floor(t1(6)),'%02d')];

T = table(fileNames.',modelNames.',hipLens.',w.',knee_dir.',const_violat.');
T.Properties.VariableNames={'fileName','modelName','hipLen','weight','kneeDir','constViolat'};
writetable(T,[batchName,'.csv'],'Delimiter',',');