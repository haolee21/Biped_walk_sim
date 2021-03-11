function result = singleBatch_analysis(data,video_gen,model)
addpath(['../',model,'/robotGen']);
addpath(['../',model,'/robotGen/dyn']);
addpath(['../',model,'/robotGen/grad']);
addpath(['../',model,'/robotGen/grf']);
addpath('../traj_opt_grf');

batchName = data.batchName;
result.batchName = batchName;
result.hipLen = data.base.param.hipLen;
baseline = data.base;
eff_hip = data.hip;
eff_kne = data.knee;
eff_ank = data.ank;
eff_hk = data.hk;
eff_ha = data.ha;
eff_ka = data.ka;

tasks=cell(1,7);

tasks{1,1}=@()drawRobot_video(baseline.x,baseline.param,1,[batchName,'_baseline']);
tasks{1,2}=@()drawRobot_video(eff_hip.x,eff_hip.param,1,[batchName,'_eff_hip']);
tasks{1,3}=@()drawRobot_video(eff_kne.x,eff_kne.param,1,[batchName,'_eff_knee']);
tasks{1,4}=@()drawRobot_video(eff_ank.x,eff_ank.param,1,[batchName,'_eff_ank']);
tasks{1,5}=@()drawRobot_video(eff_hk.x,eff_hk.param,1,[batchName,'_eff_hk']);
tasks{1,6}=@()drawRobot_video(eff_ha.x,eff_ha.param,1,[batchName,'_eff_ha']);
tasks{1,7}=@()drawRobot_video(eff_ka.x,eff_ka.param,1,[batchName,'_eff_ka']);
if(video_gen)
    parfor i=1:7
        tasks{1,i}();
    end
end

startIdx=89;

%% calculate joint full torque, including tendon torque
result.base=torque_cal(baseline,startIdx);
result.hip = torque_cal(eff_hip,startIdx);
result.knee = torque_cal(eff_kne,startIdx);
result.ank = torque_cal(eff_ank,startIdx);
result.hk = torque_cal(eff_hk,startIdx);
result.ha = torque_cal(eff_ha,startIdx);
result.ka = torque_cal(eff_ka,startIdx);



time = linspace(0,100,size(result.base.pos,2));
% time = (time_ori(1:end-1)+time_ori(2:end))/2;



plot_pos(result,time,batchName,1);
result.fig.pos = @()plot_pos(result,time,batchName,0);

close all;

result.time = time;


rmpath(['../',model,'/robotGen']);
rmpath(['../',model,'/robotGen/dyn']);
rmpath(['../',model,'/robotGen/grad']);
rmpath(['../',model,'/robotGen/grf']);
end

function data = torque_cal(data,startIdx)
% this function will calculate the negative torque, and add position
% offsets
u_all = biped_tor(data.x,data.param);
u_elastic = u_all-data.x(7:12,:);
data.u_all = u_all;
hip_p = [-data.x(3,:),data.x(4,:)+pi];
kne_p = [data.x(2,:),-data.x(5,:)];
ank_p = [-data.x(1,:)+pi/2,data.x(6,:)+pi/2];
data.pos=[hip_p;kne_p;ank_p];
data.pos = data.pos(:,[startIdx:end,1:startIdx-1]);
q_diff = data.pos(:,2:end)-data.pos(:,1:end-1);
data.pos = (data.pos(:,1:end-1)+data.pos(:,2:end))/2;


hip_u = [-data.x(3+6,:),data.x(4+6,:)];
kne_u = [data.x(2+6,:),-data.x(5+6,:)];
ank_u = [-data.x(1+6,:),data.x(6+6,:)];
data.tor_act=[hip_u;kne_u;ank_u];
data.tor_act = data.tor_act(:,[startIdx:end,1:startIdx-1]);
data.tor_act = (data.tor_act(:,1:end-1)+data.tor_act(:,2:end))/2;


hip_u = [-u_all(3,:),u_all(4,:)];
kne_u = [u_all(2,:),-u_all(5,:)];
ank_u = [-u_all(1,:),u_all(6,:)];
data.tor_all=[hip_u;kne_u;ank_u];
data.tor_all = data.tor_all(:,[startIdx:end,1:startIdx-1]);
data.tor_all = (data.tor_all(:,1:end-1)+data.tor_all(:,2:end))/2;



hip_u = [-u_elastic(3,:),u_elastic(4,:)];
kne_u = [u_elastic(2,:),-u_elastic(5,:)];
ank_u = [-u_elastic(1,:),u_elastic(6,:)];
data.tor_elastic=[hip_u;kne_u;ank_u];
data.tor_elastic=data.tor_elastic(:,[startIdx:end,1:startIdx-1]);
data.tor_elastic = (data.tor_elastic(:,1:end-1)+data.tor_elastic(:,2:end))/2;


data.sign_n = (q_diff(:,:).*data.tor_all)<-0.1;

data.neg_u_all= data.tor_all.*data.sign_n;
data.neg_u_act = data.tor_act.*data.sign_n;

end