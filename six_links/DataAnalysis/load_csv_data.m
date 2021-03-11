%% this script is to load the csv files generated from cluster's optimization
%  and load to the dataAnalysis

function res = load_csv_data(batchName,csv_fileName,video_gen)

data = readtable(csv_fileName,'Format','%s%s%f%s%d%f');
models = unique(data.modelName);

for i1 =1:size(models,1)
    cur_model = models{i1};
    cur_struct = struct();
    for kneeDir=0:1
        select_fileNames = data{strcmp(data.modelName,cur_model) & data.kneeDir==kneeDir,'fileName'};
        select_weight = data{strcmp(data.modelName,cur_model) & data.kneeDir==kneeDir,'weight'};
        
        
        % load the files
        for i2=1:size(select_fileNames,1)
            if kneeDir==1
                cur_struct.forward.(select_weight{i2})=load(['../',cur_model,'/',select_fileNames{i2},'.mat']).result;
            else
                cur_struct.backward.(select_weight{i2})=load(['../',cur_model,'/',select_fileNames{i2},'.mat']).result;
            end
            
        end
        
    end

    cur_struct.forward.batchName = [batchName,'_',cur_model,'_forward'];
    cur_struct.backward.batchName= [batchName,'_',cur_model,'_backward'];
    cur_res.forward = singleBatch_analysis(cur_struct.forward,video_gen,cur_model);
    cur_res.backward = singleBatch_analysis(cur_struct.backward,video_gen,cur_model);
    res.(cur_model)=cur_res;
    
end



end







