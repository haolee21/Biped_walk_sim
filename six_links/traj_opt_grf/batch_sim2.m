%% 
% batch simulation

% models = {'human_11','human_11_load1','human_11_load2','human_11_load3','human_11_exo_load1','human_11_exo_load2','human_11_exo_load3'};
modelName = 'human_11';
models = {'human_exo_load1'};
hipLen = [2.0754,2.1,2.2,1.8,1.6];

weights = [30,30,30,30,30,30;
          30,30, 6, 6,30,30;
          30, 6,30,30, 6,30;
           6,30,30,30,30, 6;
          30,10,10,10,10,30;
          10,30,10,10,30,10;
          10,10,30,30,10,10];
knee_dirs=[1,0];

      
task_i = 1; 
tasks = cell(1,size(models,2)*size(weights,1)*size(hipLen,2)*size(knee_dirs,2));

for i1=1:size(models,2)
    for i2=1:size(weights,1)
        for i3=1:size(hipLen,2)
            for i4=1:size(knee_dirs,2)
                tasks{1,task_i}=@()batch_sim_single(modelName,models{1,i1},hipLen(1,i3),weights(i2,:),knee_dirs(1,i4),0.55,i3);
                
                task_i = task_i+1;
            end
            
            
        end
    end
end

%preparing parallel pool (for hoffman2 usage)
% if(isempty(gcp('nocreate')))
%     n=50;
%     p = parpool('local',n);
% end
% poolobj = gcp('nocreate'); % If no pool, do not create new one.
% if isempty(poolobj)
%     poolsize = 0;
% else
%     poolsize = poolobj.NumWorkers;
% end


outputs = cell(1,size(tasks,2));

parfor i=1:size(tasks,2)
    outputs{1,i}=tasks{1,i}();
    disp(['done ',num2str(i)]);
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












