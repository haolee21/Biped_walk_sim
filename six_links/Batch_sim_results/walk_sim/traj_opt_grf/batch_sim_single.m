function output = batch_sim_single(model,hipLen,w,knee_dir,sim_order,knee_order)
%%
% knee_dir=1 if forward, 0 if backward
output.knee_dir = knee_dir;
if knee_dir==1
    knee_dir='forward';
else
    knee_dir='backward';
end
res = opt_discrete(model,hipLen,0.95,w,0.1,0.5,knee_dir,sim_order,knee_order);

output.hipLen = hipLen;
output.modelName = model;
output.const_violat = res.output.constrviolation;
output.fileName = res.fileName;
output.w = w;

end