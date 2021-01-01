function result = singleBatch_analysis(data,video_gen,model)
addpath([model,'robotGen']);
addpath([model,'robotGen/dyn']);
addpath([model,'robotGen/grad']);
addpath([model,'robotGen/grf']);

batchName = data.batchName;
result.batchName = batchName;
result.hipLen = data.baseline.param.hipLen;
baseline = data.baseline;
eff_hip = data.eff_hip;
eff_kne = data.eff_kne;
eff_ank = data.eff_ank;
eff_hk = data.eff_hk;
eff_ha = data.eff_ha;
eff_ka = data.eff_ka;

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

base_hip_p = [-baseline.x(3,:),baseline.x(4,:)+pi];
base_kne_p = [baseline.x(2,:),-baseline.x(5,:)];
base_ank_p = [-baseline.x(1,:)+pi/2,baseline.x(6,:)+pi/2];
base_hip_u = [-baseline.x(3+6,:),baseline.x(4+6,:)];
base_kne_u = [baseline.x(2+6,:),-baseline.x(5+6,:)];
base_ank_u = [-baseline.x(1+6,:),baseline.x(6+6,:)];
base=[base_hip_p;base_kne_p;base_ank_p;base_hip_u;base_kne_u;base_ank_u];
base = base(:,[startIdx:end,1:startIdx-1]);
base_avg = (base(:,1:end-1)+base(:,2:end))/2;
q_diff_base = base(1:3,2:end)-base(1:3,1:end-1);
sign_n_base = (q_diff_base(1:3,:).*base_avg(4:6,:))<-0.001;
neg_u_base= base_avg(4:6,:).*sign_n_base;
result.data.base.neg_u = neg_u_base;
result.data.base.x_avg=base_avg;
result.data.base.x = base;



eff_hip_hip_p = [-eff_hip.x(3,:),eff_hip.x(4,:)+pi];
eff_hip_kne_p = [eff_hip.x(2,:),-eff_hip.x(5,:)];
eff_hip_ank_p = [-eff_hip.x(1,:)+pi/2,eff_hip.x(6,:)+pi/2];
eff_hip_hip_u = [-eff_hip.x(3+6,:),eff_hip.x(4+6,:)];
eff_hip_kne_u = [eff_hip.x(2+6,:),-eff_hip.x(5+6,:)];
eff_hip_ank_u = [-eff_hip.x(1+6,:),eff_hip.x(6+6,:)];
eff_hip = [eff_hip_hip_p;eff_hip_kne_p;eff_hip_ank_p;eff_hip_hip_u;eff_hip_kne_u;eff_hip_ank_u];
eff_hip = eff_hip(:,[startIdx:end,1:startIdx-1]);
eff_hip_avg = (eff_hip(:,1:end-1)+eff_hip(:,2:end))/2;
q_diff_hip = eff_hip(1:3,2:end)-eff_hip(1:3,1:end-1);
sign_n_hip = (q_diff_hip(1:3,:).*eff_hip_avg(4:6,:))<-0.001;
result.data.eff_hip.neg_u = eff_hip_avg(4:6,:).*sign_n_hip;
result.data.eff_hip.x_avg = eff_hip_avg; 
result.data.eff_hip.x = eff_hip;



eff_kne_hip_p = [-eff_kne.x(3,:),eff_kne.x(4,:)+pi];
eff_kne_kne_p = [eff_kne.x(2,:),-eff_kne.x(5,:)];
eff_kne_ank_p = [-eff_kne.x(1,:)+pi/2,eff_kne.x(6,:)+pi/2];
eff_kne_hip_u = [-eff_kne.x(3+6,:),eff_kne.x(4+6,:)];
eff_kne_kne_u = [eff_kne.x(2+6,:),-eff_kne.x(5+6,:)];
eff_kne_ank_u = [-eff_kne.x(1+6,:),eff_kne.x(6+6,:)];
eff_kne = [eff_kne_hip_p;eff_kne_kne_p;eff_kne_ank_p;eff_kne_hip_u;eff_kne_kne_u;eff_kne_ank_u];
eff_kne  = eff_kne(:,[startIdx:end,1:startIdx-1]);
eff_kne_avg = (eff_kne(:,1:end-1)+eff_kne(:,2:end))/2;
q_diff_kne = eff_kne(1:3,2:end)-eff_kne(1:3,1:end-1);
sign_n_kne = (q_diff_kne(1:3,:).*eff_kne_avg(4:6,:))<-0.001;
result.data.eff_kne.neg_u = eff_kne_avg(4:6,:).*sign_n_kne;
result.data.eff_kne.x_avg = eff_kne_avg;
result.data.eff_kne.x=eff_kne;

eff_ank_hip_p = [-eff_ank.x(3,:),eff_ank.x(4,:)+pi];
eff_ank_kne_p = [eff_ank.x(2,:),-eff_ank.x(5,:)];
eff_ank_ank_p = [-eff_ank.x(1,:)+pi/2,eff_ank.x(6,:)+pi/2];
eff_ank_hip_u = [-eff_ank.x(3+6,:),eff_ank.x(4+6,:)];
eff_ank_kne_u = [eff_ank.x(2+6,:),-eff_ank.x(5+6,:)];
eff_ank_ank_u = [-eff_ank.x(1+6,:),eff_ank.x(6+6,:)];
eff_ank = [eff_ank_hip_p;eff_ank_kne_p;eff_ank_ank_p;eff_ank_hip_u;eff_ank_kne_u;eff_ank_ank_u];
eff_ank = eff_ank(:,[startIdx:end,1:startIdx-1]);
eff_ank_avg = (eff_ank(:,1:end-1)+eff_ank(:,2:end))/2;
q_diff_ank = eff_ank(1:3,2:end)-eff_ank(1:3,1:end-1);
sign_n_ank = (q_diff_ank(1:3,:).*eff_ank_avg(4:6,:))<-0.001;
result.data.eff_ank.neg_u = eff_ank_avg(4:6,:).*sign_n_ank;
result.data.eff_ank.x_avg = eff_ank_avg;
result.data.eff_ank.x = eff_ank;


eff_ka_hip_p = [-eff_ka.x(3,:),eff_ka.x(4,:)+pi];
eff_ka_kne_p = [eff_ka.x(2,:),-eff_ka.x(5,:)];
eff_ka_ank_p = [-eff_ka.x(1,:)+pi/2,eff_ka.x(6,:)+pi/2];
eff_ka_hip_u = [-eff_ka.x(3+6,:),eff_ka.x(4+6,:)];
eff_ka_kne_u = [eff_ka.x(2+6,:),-eff_ka.x(5+6,:)];
eff_ka_ank_u = [-eff_ka.x(1+6,:),eff_ka.x(6+6,:)];
eff_ka = [eff_ka_hip_p;eff_ka_kne_p;eff_ka_ank_p;eff_ka_hip_u;eff_ka_kne_u;eff_ka_ank_u];
eff_ka = eff_ka(:,[startIdx:end,1:startIdx-1]);
eff_ka_avg = (eff_ka(:,1:end-1)+eff_ka(:,2:end))/2;
q_diff_ka = eff_ka(1:3,2:end)-eff_ka(1:3,1:end-1);
sign_n_ka = (q_diff_ka(1:3,:).*eff_ka_avg(4:6,:))<-0.001;
result.data.eff_ka.neg_u = eff_ka_avg(4:6,:).*sign_n_ka;
result.data.eff_ka.x_avg = eff_ka_avg;
result.data.eff_ka.x=eff_ka;

eff_ha_hip_p = [-eff_ha.x(3,:),eff_ha.x(4,:)+pi];
eff_ha_kne_p = [eff_ha.x(2,:),-eff_ha.x(5,:)];
eff_ha_ank_p = [-eff_ha.x(1,:)+pi/2,eff_ha.x(6,:)+pi/2];
eff_ha_hip_u = [-eff_ha.x(3+6,:),eff_ha.x(4+6,:)];
eff_ha_kne_u = [eff_ha.x(2+6,:),-eff_ha.x(5+6,:)];
eff_ha_ank_u = [-eff_ha.x(1+6,:),eff_ha.x(6+6,:)];
eff_ha = [eff_ha_hip_p;eff_ha_kne_p;eff_ha_ank_p;eff_ha_hip_u;eff_ha_kne_u;eff_ha_ank_u];
eff_ha = eff_ha(:,[startIdx:end,1:startIdx-1]);
eff_ha_avg = (eff_ha(:,1:end-1)+eff_ha(:,2:end))/2;
q_diff_ha = eff_ha(1:3,2:end)-eff_ha(1:3,1:end-1);
sign_n_ha = (q_diff_ha(1:3,:).*eff_ha_avg(4:6,:))<-0.001;
result.data.eff_ha.neg_u = eff_ha_avg(4:6,:).*sign_n_ha;
result.data.eff_ha.x_avg = eff_ha_avg;
result.data.eff_ha.x = eff_ha;


eff_hk_hip_p = [-eff_hk.x(3,:),eff_hk.x(4,:)+pi];
eff_hk_kne_p = [eff_hk.x(2,:),-eff_hk.x(5,:)];
eff_hk_ank_p = [-eff_hk.x(1,:)+pi/2,eff_hk.x(6,:)+pi/2];
eff_hk_hip_u = [-eff_hk.x(3+6,:),eff_hk.x(4+6,:)+pi];
eff_hk_kne_u = [eff_hk.x(2+6,:),-eff_hk.x(5+6,:)];
eff_hk_ank_u = [-eff_hk.x(1+6,:),eff_hk.x(6+6,:)];
eff_hk = [eff_hk_hip_p;eff_hk_kne_p;eff_hk_ank_p;eff_hk_hip_u;eff_hk_kne_u;eff_hk_ank_u];
eff_hk = eff_hk(:,[startIdx:end,1:startIdx-1]);
eff_hk_avg = (eff_hk(:,2:end)+eff_hk(:,1:end-1))/2;
q_diff_hk = eff_hk(1:3,2:end)-eff_hk(1:3,1:end-1);
sign_n_hk = (q_diff_hk(1:3,:).*eff_hk_avg(4:6,:))<-0.001;
result.data.eff_hk.neg_u = eff_hk_avg(4:6,:).*sign_n_hk;
result.data.eff_hk.x_avg = eff_hk_avg;
result.data.eff_hk.x = eff_hk;



time_ori = linspace(0,100,size(base,2));
time = (time_ori(1:end-1)+time_ori(2:end))/2;

% result.fig.pos=figure('visible','off');
% set(gcf,'Position',[233 499 1303 200]);
% subplot(1,3,3);
% hold on;
% plot(time,base_avg(1,:)*180/pi);
% plot(time,eff_hip_avg(1,:)*180/pi);
% plot(time,eff_kne_avg(1,:)*180/pi);
% plot(time,eff_ank_avg(1,:)*180/pi);
% plot(time,eff_hk_avg(1,:)*180/pi);
% plot(time,eff_ha_avg(1,:)*180/pi);
% plot(time,eff_ka_avg(1,:)*180/pi);
% title('Hip');
% xlabel('Gait Period (%)');
% ylabel('Joint Angle (deg)');
% grid on;
% 
% hold off;
% subplot(1,3,2);
% hold on;
% plot(time,base_avg(2,:)*180/pi);
% plot(time,eff_hip_avg(2,:)*180/pi);
% plot(time,eff_kne_avg(2,:)*180/pi);
% plot(time,eff_ank_avg(2,:)*180/pi);
% plot(time,eff_hk_avg(2,:)*180/pi);
% plot(time,eff_ha_avg(2,:)*180/pi);
% plot(time,eff_ka_avg(2,:)*180/pi);
% title('Knee');
% xlabel('Gait Period (%)');
% ylabel('Joint Angle (deg)');
% grid on;
% hold off;
% subplot(1,3,1);
% hold on;
% plot(time,base_avg(3,:)*180/pi);
% plot(time,eff_hip_avg(3,:)*180/pi);
% plot(time,eff_kne_avg(3,:)*180/pi);
% plot(time,eff_ank_avg(3,:)*180/pi);
% plot(time,eff_hk_avg(3,:)*180/pi);
% plot(time,eff_ha_avg(3,:)*180/pi);
% plot(time,eff_ka_avg(3,:)*180/pi);
% legend('baseline','eff hip','eff knee','eff ank','eff hk','eff ha','eff ka','Position',[0.01 0.2800 0.0706 0.5250]);
% title('Ankle');
% xlabel('Gait Period (%)');
% ylabel('Joint Angle (deg)');
% grid on;
% hold off;
% saveas(figure(result.fig.pos),[batchName,'_baseline.fig']);

plot_pos(base_avg,eff_hip_avg,eff_kne_avg,eff_ank_avg,eff_hk_avg,eff_ha_avg,eff_ka_avg,time,batchName,1);
result.fig.pos = @()plot_pos(base_avg,eff_hip_avg,eff_kne_avg,eff_ank_avg,eff_hk_avg,eff_ha_avg,eff_ka_avg,time,batchName,0);
% plot_u(base_avg,base_avg,sign_n_base,'base rec',time,batchName,1);
% plot_u(base_avg,eff_hip_avg,sign_n_hip,'eff hip',time,batchName,1);
% plot_u(base_avg,eff_kne_avg,sign_n_kne,'eff kne',time,batchName,1);
% plot_u(base_avg,eff_ank_avg,sign_n_ank,'eff ank',time,batchName,1);
% plot_u(base_avg,eff_hk_avg,sign_n_hk,'eff hk',time,batchName,1);
% plot_u(base_avg,eff_ha_avg,sign_n_ha,'eff ha',time,batchName,1);
% plot_u(base_avg,eff_ka_avg,sign_n_ka,'eff ka',time,batchName,1);
close all;
% result.fig.base_rec =@()plot_u(base_avg,base_avg,sign_n_base,'base rec',time,batchName,0);
% result.fig.eff_hip = @()plot_u(base_avg,eff_hip_avg,sign_n_hip,'eff hip',time,batchName,0);
% result.fig.eff_kne = @()plot_u(base_avg,eff_kne_avg,sign_n_kne,'eff kne',time,batchName,0);
% result.fig.eff_ank = @()plot_u(base_avg,eff_ank_avg,sign_n_ank,'eff ank',time,batchName,0);
% result.fig.eff_hk  = @()plot_u(base_avg,eff_hk_avg,sign_n_hk,'eff hk',time,batchName,0);
% result.fig.eff_ha  = @()plot_u(base_avg,eff_ha_avg,sign_n_ha,'eff ha',time,batchName,0);
% result.fig.eff_ka  = @()plot_u(base_avg,eff_ka_avg,sign_n_ka,'eff ka',time,batchName,0);
result.time = time;
result.data.sign.base = sign_n_base;
result.data.sign.eff_hip = sign_n_hip;
result.data.sign.eff_kne = sign_n_kne;
result.data.sign.eff_ank = sign_n_ank;
result.data.sign.eff_hk = sign_n_hk;
result.data.sign.eff_ha = sign_n_ha;
result.data.sign.eff_ka = sign_n_ka;

rmpath([model,'robotGen']);
rmpath([model,'robotGen/dyn']);
rmpath([model,'robotGen/grad']);
rmpath([model,'robotGen/grf']);
end