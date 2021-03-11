function output = batch_sim_single(model,hipLen,w,knee_dir,sim_order,knee_order,gaitT)
%%
% knee_dir=1 if forward, 0 if backward
if nargin<7
    gaitT=0.5;
end
output.knee_dir = knee_dir;
if knee_dir==1
    knee_dir='forward';
else
    knee_dir='backward';
end
res = opt_discrete(model,hipLen,0.95,w,0.1,gaitT,knee_dir,sim_order,knee_order);

output.hipLen = hipLen;
output.modelName = model;
output.const_violat = res.output.constrviolation;
output.fileName = res.fileName;
output.w = w;

end