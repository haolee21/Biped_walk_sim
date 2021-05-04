function output = batch_sim_single(model,modelType,hipLen,w,knee_dir,gaitT,hipLen_idx)
%%
% knee_dir=1 if forward, 0 if backward

output.knee_dir = knee_dir;
if knee_dir==1
    knee_dir='forward';
    
else
    knee_dir='backward';

end
res = opt_discrete(model,modelType,hipLen,0.95,w,0.12,gaitT,knee_dir,hipLen_idx);
      

output.hipLen = hipLen;
output.modelName = model;
output.const_violat = res.output.constrviolation;
output.fileName = res.fileName;
output.w = w;

end