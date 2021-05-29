%% this script will re-run the ones that violate the constraints
data = readtable('rerun.csv','Format','%s%s%s%f%f%s%d%f');

task_i=1;
tasks = cell(1,size(data,1));
hip_lens = unique(data{:,3});

for i=1:size(data,1)
    modelName = data{i,2}{:};
    modelType = data{i,3}{:};
    % hipLen and related file name
    hipLen = data{i,4};
    h = data{i,5};
    
    
    %weight
    
    if strcmp(data{i,6}{:},'base')
        w = [30,30,30,30,30,30];
    elseif strcmp(data{i,6}{:},'hip')
        w = [30,30,6,6,30,30];
    elseif strcmp(data{i,6}{:},'knee')
        w = [30,6,30,30,6,30];
    elseif strcmp(data{i,6}{:},'ank')
        w = [6,30,30,30,30,6];
    elseif strcmp(data{i,6}{:},'hk')
        w = [30,10,10,10,10,30];
    elseif strcmp(data{i,6}{:},'ha')
        w = [10,30,10,10,30,10];
    elseif strcmp(data{i,6}{:},'ka')
        w = [10,10,30,30,10,10];    
    end
    
    %knee dir
    kneeDir = data{i,7};

    
    tasks{1,task_i}=@()batch_sim_single(modelName,modelType,hipLen,h,w,kneeDir,0.55,mod(i,99));
    task_i = task_i+1;
end

outputs = cell(1,size(tasks,2));

parfor i=1:size(tasks,2)
    outputs{1,i}=tasks{1,i}();
end



