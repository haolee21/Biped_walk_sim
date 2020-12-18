close all;
%% small step
% baseLine_name = '11251710.mat';
% eff_hip_name = '11251802.mat';
% eff_kne_name = '11251726.mat';
% eff_ank_name = '11251725.mat';
% eff_hk_name = '11251729.mat';
% eff_ha_name = '11251730.mat';
% eff_ka_name = '11251755.mat';

% baseLine_name = '11261341.mat';
% eff_hip_name = '11261345.mat';
% eff_kne_name = '1126140433.mat';
% eff_ank_name = '11261344.mat';
% eff_hk_name = '1126140431.mat';
% eff_ha_name = '11261346.mat';
% eff_ka_name = '1126140426.mat';

% baseLine_name = '11251825.mat';
% eff_hip_name = '11251802.mat';
% eff_kne_name = '11251827.mat';
% eff_ank_name = '11252255.mat';
% eff_hk_name = '11251822.mat';
% eff_ha_name = '11251828.mat';
% eff_ka_name = '11251820.mat';

%% big step
% baseLine_name = '1126143246.mat';
% eff_hip_name = '1126143527.mat';
% eff_kne_name = '1126152319.mat';
% eff_ank_name = '1126153949.mat';
% eff_hk_name = '1126152516.mat';
% eff_ha_name = '1126152515.mat';
% eff_ka_name = '1126152456.mat';

% baseLine_name = '1126142739.mat';
% eff_hip_name = '1126142834.mat';
% eff_kne_name = '1126141422.mat';
% eff_ank_name = '1126142950.mat';
% eff_hk_name = '1126143015.mat';
% eff_ha_name = '1126145536.mat';
% eff_ka_name = '1126145513.mat';

% baseLine_name = '1127032114.mat';
% eff_hip_name = '1126162044.mat';
% eff_kne_name = '1126162051.mat';
% eff_ank_name = '1126162012.mat';
% eff_hk_name = '1126162118.mat';
% eff_ha_name = '1126161922.mat';
% eff_ka_name = '1126163727.mat';


%% large step
% baseLine_name = '1127175013.mat';
% eff_hip_name = '1127174854.mat';
% eff_kne_name = '1127175040.mat';
% eff_ank_name = '1127175015.mat';
% eff_hk_name = '112718267.mat';
% eff_ha_name = '1127175224.mat';
% eff_ka_name = '112719320.mat';

% baseLine_name = '112717027.mat';
% eff_hip_name = '1127170239.mat';
% eff_kne_name = '1127170522.mat';
% eff_ank_name = '112717059.mat';
% eff_hk_name = '1127170356.mat';
% eff_ha_name = '1127171628.mat';
% eff_ka_name = '1127171212.mat';
% 
% baseLine_name = '1127161033.mat';
% eff_hip_name = '112716127.mat';
% eff_kne_name = '1127161159.mat';
% eff_ank_name = '1127161242.mat';
% eff_hk_name = '1127162225.mat';
% eff_ha_name = '1127162418.mat';
% eff_ka_name = '1127161357.mat';

%% big step 2

% baseLine_name = '1129174027.mat';
% eff_hip_name = '1129174144.mat';
% eff_kne_name = '1129175925.mat';
% eff_ank_name = '1129184552.mat';
% eff_hk_name = '1129175923.mat';
% eff_ha_name = '1129174336.mat';
% eff_ka_name = '1129181132.mat';

% baseLine_name = '1129213310.mat';
% eff_hip_name = '1129212258.mat';
% eff_kne_name = '1129213346.mat';
% eff_ank_name = '1129214507.mat';
% eff_hk_name = '1129214442.mat';
% eff_ha_name = '1129213456.mat';
% eff_ka_name = '1129214449.mat';

% baseLine_name = '1130010823.mat';
% eff_hip_name = '1130010912.mat';
% eff_kne_name = '1130010209.mat';
% eff_ank_name = '1130010138.mat';
% eff_hk_name = '1130010236.mat';
% eff_ha_name = '1130011030.mat';
% eff_ka_name = '1130010345.mat';

%% small step 2
% baseLine_name = '1202005851.mat';
% eff_hip_name = '1202005921.mat';
% eff_kne_name = '1202005807.mat';
% eff_ank_name = '1202005919.mat';
% eff_hk_name = '1202010009.mat';
% eff_ha_name = '1202005918.mat';
% eff_ka_name = '1202005841.mat';

% baseLine_name = '1202012437.mat';
% eff_hip_name = '1202012510.mat';
% eff_kne_name = '1202012410.mat';
% eff_ank_name = '1202012422.mat';
% eff_hk_name = '1202014037.mat';
% eff_ha_name = '1202012627.mat';
% eff_ka_name = '1202012658.mat';
% 
baseLine_name = '1202015821.mat';
eff_hip_name = '1202015917.mat';
eff_kne_name = '1202015839.mat';
eff_ank_name = '1202015902.mat';
eff_hk_name = '1202015729.mat';
eff_ha_name = '1202015018.mat';
eff_ka_name = '1202015856.mat';


%%
baseline = load(baseLine_name).result;
eff_hip =  load(eff_hip_name).result;
eff_kne =  load(eff_kne_name).result;
eff_ank =  load(eff_ank_name).result;
eff_hk =   load(eff_hk_name).result;
eff_ha =   load(eff_ha_name).result;
eff_ka =   load(eff_ka_name).result;
tasks=cell(1,7);

tasks{1,1}=@()drawRobot_video(baseline.x,baseline.param,1,'baseline');
tasks{1,2}=@()drawRobot_video(eff_hip.x,eff_hip.param,1,'eff_hip');
tasks{1,3}=@()drawRobot_video(eff_kne.x,eff_kne.param,1,'eff_knee');
tasks{1,4}=@()drawRobot_video(eff_ank.x,eff_ank.param,1,'eff_ank');
tasks{1,5}=@()drawRobot_video(eff_hk.x,eff_hk.param,1,'eff_hk');
tasks{1,6}=@()drawRobot_video(eff_ha.x,eff_ha.param,1,'eff_ha');
tasks{1,7}=@()drawRobot_video(eff_ka.x,eff_ka.param,1,'eff_ka');
% parfor i=1:7
%     tasks{1,i}();
% end
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
neg_u = base_avg(4:6,:).*sign_n_base;


disp('baseline:');
totHip_u = sum(abs(base_avg(4,:)),'all');
disp(['hip torque: ',num2str(totHip_u),', negative torque: ',num2str(sum(abs(neg_u(1,:)),'all'))]);
totKne_u = sum(abs(base_avg(5,:)),'all');
disp(['Knee torque: ',num2str(totKne_u),', negative torque: ',num2str(sum(abs(neg_u(2,:)),'all'))]);
totAnk_u = sum(abs(base_avg(6,:)),'all');
disp(['Ankle torque: ',num2str(totAnk_u),', negative torque: ',num2str(sum(abs(neg_u(3,:)),'all'))]);
disp(['Total Effort: ',num2str(totHip_u+totKne_u+totAnk_u)]);
fprintf('\n');



eff_hip_hip_p = [-eff_hip.x(3,:),eff_hip.x(4,:)+pi];
eff_hip_kne_p = [eff_hip.x(2,:),-eff_hip.x(5,:)];
eff_hip_ank_p = [-eff_hip.x(1,:)+pi/2,eff_hip.x(6,:)+pi/2];
eff_hip_hip_u = [-eff_hip.x(3+6,:),eff_hip.x(4+6,:)];
eff_hip_kne_u = [eff_hip.x(2+6,:),-eff_hip.x(5+6,:)];
eff_hip_ank_u = [-eff_hip.x(1+6,:),eff_hip.x(6+6,:)];
eff_hip = [eff_hip_hip_p;eff_hip_kne_p;eff_hip_ank_p;eff_hip_hip_u;eff_hip_kne_u;eff_hip_ank_u];
eff_hip = eff_hip(:,[startIdx:end,1:startIdx-1]);
eff_hip_avg = (eff_hip(:,1:end-1)+eff_hip(:,2:end))/2;



eff_kne_hip_p = [-eff_kne.x(3,:),eff_kne.x(4,:)+pi];
eff_kne_kne_p = [eff_kne.x(2,:),-eff_kne.x(5,:)];
eff_kne_ank_p = [-eff_kne.x(1,:)+pi/2,eff_kne.x(6,:)+pi/2];
eff_kne_hip_u = [-eff_kne.x(3+6,:),eff_kne.x(4+6,:)];
eff_kne_kne_u = [eff_kne.x(2+6,:),-eff_kne.x(5+6,:)];
eff_kne_ank_u = [-eff_kne.x(1+6,:),eff_kne.x(6+6,:)];
eff_kne = [eff_kne_hip_p;eff_kne_kne_p;eff_kne_ank_p;eff_kne_hip_u;eff_kne_kne_u;eff_kne_ank_u];
eff_kne  = eff_kne(:,[startIdx:end,1:startIdx-1]);
eff_kne_avg = (eff_kne(:,1:end-1)+eff_kne(:,2:end))/2;



eff_ank_hip_p = [-eff_ank.x(3,:),eff_ank.x(4,:)+pi];
eff_ank_kne_p = [eff_ank.x(2,:),-eff_ank.x(5,:)];
eff_ank_ank_p = [-eff_ank.x(1,:)+pi/2,eff_ank.x(6,:)+pi/2];
eff_ank_hip_u = [-eff_ank.x(3+6,:),eff_ank.x(4+6,:)];
eff_ank_kne_u = [eff_ank.x(2+6,:),-eff_ank.x(5+6,:)];
eff_ank_ank_u = [-eff_ank.x(1+6,:),eff_ank.x(6+6,:)];
eff_ank = [eff_ank_hip_p;eff_ank_kne_p;eff_ank_ank_p;eff_ank_hip_u;eff_ank_kne_u;eff_ank_ank_u];
eff_ank = eff_ank(:,[startIdx:end,1:startIdx-1]);
eff_ank_avg = (eff_ank(:,1:end-1)+eff_ank(:,2:end))/2;



eff_ka_hip_p = [-eff_ka.x(3,:),eff_ka.x(4,:)+pi];
eff_ka_kne_p = [eff_ka.x(2,:),-eff_ka.x(5,:)];
eff_ka_ank_p = [-eff_ka.x(1,:)+pi/2,eff_ka.x(6,:)+pi/2];
eff_ka_hip_u = [-eff_ka.x(3+6,:),eff_ka.x(4+6,:)];
eff_ka_kne_u = [eff_ka.x(2+6,:),-eff_ka.x(5+6,:)];
eff_ka_ank_u = [-eff_ka.x(1+6,:),eff_ka.x(6+6,:)];
eff_ka = [eff_ka_hip_p;eff_ka_kne_p;eff_ka_ank_p;eff_ka_hip_u;eff_ka_kne_u;eff_ka_ank_u];
eff_ka = eff_ka(:,[startIdx:end,1:startIdx-1]);
eff_ka_avg = (eff_ka(:,1:end-1)+eff_ka(:,2:end))/2;


eff_ha_hip_p = [-eff_ha.x(3,:),eff_ha.x(4,:)+pi];
eff_ha_kne_p = [eff_ha.x(2,:),-eff_ha.x(5,:)];
eff_ha_ank_p = [-eff_ha.x(1,:)+pi/2,eff_ha.x(6,:)+pi/2];
eff_ha_hip_u = [-eff_ha.x(3+6,:),eff_ha.x(4+6,:)];
eff_ha_kne_u = [eff_ha.x(2+6,:),-eff_ha.x(5+6,:)];
eff_ha_ank_u = [-eff_ha.x(1+6,:),eff_ha.x(6+6,:)];
eff_ha = [eff_ha_hip_p;eff_ha_kne_p;eff_ha_ank_p;eff_ha_hip_u;eff_ha_kne_u;eff_ha_ank_u];
eff_ha = eff_ha(:,[startIdx:end,1:startIdx-1]);
eff_ha_avg = (eff_ha(:,1:end-1)+eff_ha(:,2:end))/2;



eff_hk_hip_p = [-eff_hk.x(3,:),eff_hk.x(4,:)+pi];
eff_hk_kne_p = [eff_hk.x(2,:),-eff_hk.x(5,:)];
eff_hk_ank_p = [-eff_hk.x(1,:)+pi/2,eff_hk.x(6,:)+pi/2];
eff_hk_hip_u = [-eff_hk.x(3+6,:),eff_hk.x(4+6,:)+pi];
eff_hk_kne_u = [eff_hk.x(2+6,:),-eff_hk.x(5+6,:)];
eff_hk_ank_u = [-eff_hk.x(1+6,:),eff_hk.x(6+6,:)];
eff_hk = [eff_hk_hip_p;eff_hk_kne_p;eff_hk_ank_p;eff_hk_hip_u;eff_hk_kne_u;eff_hk_ank_u];
eff_hk = eff_hk(:,[startIdx:end,1:startIdx-1]);
eff_hk_avg = (eff_hk(:,2:end)+eff_hk(:,1:end-1))/2;




time_ori = linspace(0,100,size(base,2));
time = (time_ori(1:end-1)+time_ori(2:end))/2;

fig=figure(1);
set(gcf,'Position',[233 499 1303 200]);
subplot(1,3,3);
hold on;
plot(time,base_avg(1,:)*180/pi);
plot(time,eff_hip_avg(1,:)*180/pi);
plot(time,eff_kne_avg(1,:)*180/pi);
plot(time,eff_ank_avg(1,:)*180/pi);
plot(time,eff_hk_avg(1,:)*180/pi);
plot(time,eff_ha_avg(1,:)*180/pi);
plot(time,eff_ka_avg(1,:)*180/pi);
title('Hip');
xlabel('Gait Period (%)');
ylabel('Joint Angle (deg)');
grid on;

hold off;
subplot(1,3,2);
hold on;
plot(time,base_avg(2,:)*180/pi);
plot(time,eff_hip_avg(2,:)*180/pi);
plot(time,eff_kne_avg(2,:)*180/pi);
plot(time,eff_ank_avg(2,:)*180/pi);
plot(time,eff_hk_avg(2,:)*180/pi);
plot(time,eff_ha_avg(2,:)*180/pi);
plot(time,eff_ka_avg(2,:)*180/pi);
title('Knee');
xlabel('Gait Period (%)');
ylabel('Joint Angle (deg)');
grid on;
hold off;
subplot(1,3,1);
hold on;
plot(time,base_avg(3,:)*180/pi);
plot(time,eff_hip_avg(3,:)*180/pi);
plot(time,eff_kne_avg(3,:)*180/pi);
plot(time,eff_ank_avg(3,:)*180/pi);
plot(time,eff_hk_avg(3,:)*180/pi);
plot(time,eff_ha_avg(3,:)*180/pi);
plot(time,eff_ka_avg(3,:)*180/pi);
leg = legend('baseline','eff hip','eff knee','eff ank','eff hk','eff ha','eff ka','Position',[0.01 0.2800 0.0706 0.5250]);
title('Ankle');
xlabel('Gait Period (%)');
ylabel('Joint Angle (deg)');
grid on;
hold off;
saveas(fig,'baseline.fig');

q_diff_hip = eff_hip(1:3,2:end)-eff_hip(1:3,1:end-1);
sign_n_hip = (q_diff_hip(1:3,:).*eff_hip_avg(4:6,:))<-0.001;
neg_u = eff_hip_avg(4:6,:).*sign_n_hip;
disp('eff Hip:');
totHip_u = sum(abs(eff_hip_avg(4,:)),'all');
disp(['hip torque: ',num2str(totHip_u),', negative torque: ',num2str(sum(abs(neg_u(1,:)),'all'))]);
totKne_u = sum(abs(eff_hip_avg(5,:)),'all');
disp(['Knee torque: ',num2str(totKne_u),', negative torque: ',num2str(sum(abs(neg_u(2,:)),'all'))]);
totAnk_u = sum(abs(eff_hip_avg(6,:)),'all');
disp(['Ankle torque: ',num2str(totAnk_u),', negative torque: ',num2str(sum(abs(neg_u(3,:)),'all'))]);
disp(['Total Effort: ',num2str(totHip_u+totKne_u+totAnk_u)]);
fprintf('\n');


fig=figure(2);
subplot(3,1,1);
grid on;
hold on;
plot(time,base_avg(4,:));
plot(time,eff_hip_avg(4,:));
plot(time(sign_n_hip(1,:)),eff_hip_avg([false(3,size(sign_n_hip,2));sign_n_hip(1,:);false(2,size(sign_n_hip,2))]),'*');
hold off;

ylim([-20,20]);
ylabel('Torque (Nm)');
subplot(3,1,2);
grid on;
hold on;
plot(time,base_avg(5,:));
plot(time,eff_hip_avg(5,:));
plot(time(sign_n_hip(2,:)),eff_hip_avg([false(3,size(sign_n_hip,2));false(1,size(sign_n_hip,2));sign_n_hip(2,:);false(1,size(sign_n_hip,2))]),'*');
hold off;
legend('baseline','eff hip','negative work','Location','northwest','NumColumns',2);
ylim([-20,20]);
ylabel('Torque (Nm)');
subplot(3,1,3);
grid on;
hold on;
plot(time,base_avg(6,:));
plot(time,eff_hip_avg(6,:));
plot(time(sign_n_hip(3,:)),eff_hip_avg([false(3,size(sign_n_hip,2));false(2,size(sign_n_hip,2));sign_n_hip(3,:)]),'*');
hold off;

ylim([-20,20]);
ylabel('Torque (Nm)');
xlabel('Gait Period (%)');
saveas(fig,'eff_hip.fig');
% eff Knee
q_diff_kne = eff_kne(1:3,2:end)-eff_kne(1:3,1:end-1);
sign_n_kne = (q_diff_kne(1:3,:).*eff_kne_avg(4:6,:))<-0.001;
neg_u = eff_kne_avg(4:6,:).*sign_n_kne;
disp('eff Knee:');
totHip_u = sum(abs(eff_kne_avg(4,:)),'all');
disp(['hip torque: ',num2str(totHip_u),', negative torque: ',num2str(sum(abs(neg_u(1,:)),'all'))]);
totKne_u = sum(abs(eff_kne_avg(5,:)),'all');
disp(['Knee torque: ',num2str(totKne_u),', negative torque: ',num2str(sum(abs(neg_u(2,:)),'all'))]);
totAnk_u = sum(abs(eff_kne_avg(6,:)),'all');
disp(['Ankle torque: ',num2str(totAnk_u),', negative torque: ',num2str(sum(abs(neg_u(3,:)),'all'))]);
disp(['Total Effort: ',num2str(totHip_u+totKne_u+totAnk_u)]);
fprintf('\n');


fig=figure(3);
subplot(3,1,1);
grid on;
hold on;
plot(time,base_avg(4,:));
plot(time,eff_kne_avg(4,:));
plot(time(sign_n_kne(1,:)),eff_kne_avg([false(3,size(sign_n_kne,2));sign_n_kne(1,:);false(2,size(sign_n_kne,2))]),'*');

ylim([-20,20]);
ylabel('Torque (Nm)');
hold off;
subplot(3,1,2);
grid on;
hold on;
plot(time,base_avg(5,:));
plot(time,eff_kne_avg(5,:));
plot(time(sign_n_kne(2,:)),eff_kne_avg([false(3,size(sign_n_kne,2));false(1,size(sign_n_kne,2));sign_n_kne(2,:);false(1,size(sign_n_kne,2))]),'*');
legend('baseline','eff knee','negative work','Location','northwest','NumColumns',2);
ylim([-20,20]);
ylabel('Torque (Nm)');
hold off;
subplot(3,1,3);
grid on;
hold on;
plot(time,base_avg(6,:));
plot(time,eff_kne_avg(6,:));
plot(time(sign_n_kne(3,:)),eff_kne_avg([false(3,size(sign_n_kne,2));false(2,size(sign_n_kne,2));sign_n_kne(3,:)]),'*');

ylim([-20,20]);
ylabel('Torque (Nm)');
xlabel('Gait Period (%)');

hold off;
saveas(fig,'eff_knee.fig');
% eff ank

q_diff_ank = eff_ank(1:3,2:end)-eff_ank(1:3,1:end-1);
sign_n_ank = (q_diff_ank(1:3,:).*eff_ank_avg(4:6,:))<-0.001;
neg_u = eff_ank_avg(4:6,:).*sign_n_ank;
disp('eff Ankle:');
totHip_u = sum(abs(eff_ank_avg(4,:)),'all');
disp(['hip torque: ',num2str(totHip_u),', negative torque: ',num2str(sum(abs(neg_u(1,:)),'all'))]);
totKne_u = sum(abs(eff_ank_avg(5,:)),'all');
disp(['Knee torque: ',num2str(totKne_u),', negative torque: ',num2str(sum(abs(neg_u(2,:)),'all'))]);
totAnk_u = sum(abs(eff_ank_avg(6,:)),'all');
disp(['Ankle torque: ',num2str(totAnk_u),', negative torque: ',num2str(sum(abs(neg_u(3,:)),'all'))]);
disp(['Total Effort: ',num2str(totHip_u+totKne_u+totAnk_u)]);
fprintf('\n');

fig=figure(4);
subplot(3,1,1);
grid on;
hold on;
plot(time,base_avg(4,:));
plot(time,eff_ank_avg(4,:));
plot(time(sign_n_ank(1,:)),eff_ank_avg([false(3,size(sign_n_ank,2));sign_n_ank(1,:);false(2,size(sign_n_ank,2))]),'*');

ylim([-20,20]);
ylabel('Torque (Nm)');
hold off;
subplot(3,1,2);
grid on;
hold on;
plot(time,base_avg(5,:));
plot(time,eff_ank_avg(5,:));
plot(time(sign_n_ank(2,:)),eff_ank_avg([false(3,size(sign_n_ank,2));false(1,size(sign_n_ank,2));sign_n_ank(2,:);false(1,size(sign_n_ank,2))]),'*');
legend('baseline','eff ankle','negative work','Location','northwest','NumColumns',2);
ylim([-20,20]);
ylabel('Torque (Nm)');
hold off;
subplot(3,1,3);
grid on;
hold on;
plot(time,base_avg(6,:));
plot(time,eff_ank_avg(6,:));
plot(time(sign_n_ank(3,:)),eff_ank_avg([false(3,size(sign_n_ank,2));false(2,size(sign_n_ank,2));sign_n_ank(3,:)]),'*');

ylim([-20,20]);
ylabel('Torque (Nm)');
hold off;
xlabel('Gait Period (%)');
saveas(fig,'eff_ank.fig');





%% determine positive/negative work
q_diff_ka = eff_ka(1:3,2:end)-eff_ka(1:3,1:end-1);
sign_n_ka = (q_diff_ka(1:3,:).*eff_ka_avg(4:6,:))<-0.001;
neg_u = eff_ka_avg(4:6,:).*sign_n_ka;
disp('eff Knee-Ankle:');
totHip_u = sum(abs(eff_ka_avg(4,:)),'all');
disp(['hip torque: ',num2str(totHip_u),', negative torque: ',num2str(sum(abs(neg_u(1,:)),'all'))]);
totKne_u = sum(abs(eff_ka_avg(5,:)),'all');
disp(['Knee torque: ',num2str(totKne_u),', negative torque: ',num2str(sum(abs(neg_u(2,:)),'all'))]);
totAnk_u = sum(abs(eff_ka_avg(6,:)),'all');
disp(['Ankle torque: ',num2str(totAnk_u),', negative torque: ',num2str(sum(abs(neg_u(3,:)),'all'))]);
disp(['Total Effort: ',num2str(totHip_u+totKne_u+totAnk_u)]);
fprintf('\n');


fig=figure(8);
subplot(3,1,1);
grid on;
hold on;
plot(time,base_avg(4,:));
plot(time,eff_ka_avg(4,:));
plot(time(sign_n_ka(1,:)),eff_ka_avg([false(3,size(sign_n_ka,2));sign_n_ka(1,:);false(2,size(sign_n_ka,2))]),'*');

ylim([-20,20]);
ylabel('Torque (Nm)');
hold off;
subplot(3,1,2);
grid on;
hold on;
plot(time,base_avg(5,:));
plot(time,eff_ka_avg(5,:));
plot(time(sign_n_ka(2,:)),eff_ka_avg([false(3,size(sign_n_ka,2));false(1,size(sign_n_ka,2));sign_n_ka(2,:);false(1,size(sign_n_ka,2))]),'*');
legend('baseline','eff knee/ankle','negative work','Location','northwest','NumColumns',2);
ylim([-20,20]);
ylabel('Torque (Nm)');
hold off;
subplot(3,1,3);
grid on;
hold on;
plot(time,base_avg(6,:));
plot(time,eff_ka_avg(6,:));
plot(time(sign_n_ka(3,:)),eff_ka_avg([false(3,size(sign_n_ka,2));false(2,size(sign_n_ka,2));sign_n_ka(3,:)]),'*');

ylim([-20,20]);
ylabel('Torque (Nm)');
hold off;
xlabel('Gait Period (%)');
saveas(fig,'eff_ka.fig');
% hip and ankle 
q_diff_ha = eff_ha(1:3,2:end)-eff_ha(1:3,1:end-1);
sign_n_ha = (q_diff_ha(1:3,:).*eff_ha_avg(4:6,:))<-0.001;
neg_u = eff_ha_avg(4:6,:).*sign_n_ha;
disp('eff Hip-Ankle:');
totHip_u = sum(abs(eff_ha_avg(4,:)),'all');
disp(['hip torque: ',num2str(totHip_u),', negative torque: ',num2str(sum(abs(neg_u(1,:)),'all'))]);
totKne_u = sum(abs(eff_ha_avg(5,:)),'all');
disp(['Knee torque: ',num2str(totKne_u),', negative torque: ',num2str(sum(abs(neg_u(2,:)),'all'))]);
totAnk_u = sum(abs(eff_ha_avg(6,:)),'all');
disp(['Ankle torque: ',num2str(totAnk_u),', negative torque: ',num2str(sum(abs(neg_u(3,:)),'all'))]);
disp(['Total Effort: ',num2str(totHip_u+totKne_u+totAnk_u)]);
fprintf('\n');

fig=figure(9);
subplot(3,1,1);
grid on;
hold on;
plot(time,base_avg(4,:));
plot(time,eff_ha_avg(4,:));
plot(time(sign_n_ha(1,:)),eff_ha_avg([false(3,size(sign_n_ha,2));sign_n_ha(1,:);false(2,size(sign_n_ha,2))]),'*');

ylim([-20,20]);
ylabel('Torque (Nm)');
hold off;
subplot(3,1,2);
grid on;
hold on;
plot(time,base_avg(5,:));
plot(time,eff_ha_avg(5,:));
plot(time(sign_n_ha(2,:)),eff_ha_avg([false(3,size(sign_n_ha,2));false(1,size(sign_n_ha,2));sign_n_ha(2,:);false(1,size(sign_n_ha,2))]),'*');
legend('baseline','eff hip/ankle','negative work','Location','northwest','NumColumns',2);
ylim([-20,20]);
ylabel('Torque (Nm)');
hold off;
subplot(3,1,3);
grid on;
hold on;
plot(time,base_avg(6,:));
plot(time,eff_ha_avg(6,:));
plot(time(sign_n_ha(3,:)),eff_ha_avg([false(3,size(sign_n_ha,2));false(2,size(sign_n_ha,2));sign_n_ha(3,:)]),'*');

ylim([-20,20]);
hold off;
xlabel('Gait Period (%)');
ylabel('Torque (Nm)');
saveas(fig,'eff_ha.fig');
% hip and knee

q_diff_hk = eff_hk(1:3,2:end)-eff_hk(1:3,1:end-1);
sign_n_hk = (q_diff_hk(1:3,:).*eff_hk_avg(4:6,:))<-0.001;
neg_u = eff_hk_avg(4:6,:).*sign_n_hk;
disp('eff Hip-Knee:');
totHip_u = sum(abs(eff_hk_avg(4,:)),'all');
disp(['hip torque: ',num2str(totHip_u),', negative torque: ',num2str(sum(abs(neg_u(1,:)),'all'))]);
totKne_u = sum(abs(eff_hk_avg(5,:)),'all');
disp(['Knee torque: ',num2str(totKne_u),', negative torque: ',num2str(sum(abs(neg_u(2,:)),'all'))]);
totAnk_u = sum(abs(eff_hk_avg(6,:)),'all');
disp(['Ankle torque: ',num2str(totAnk_u),', negative torque: ',num2str(sum(abs(neg_u(3,:)),'all'))]);
disp(['Total Effort: ',num2str(totHip_u+totKne_u+totAnk_u)]);
fprintf('\n');

fig=figure(10);
subplot(3,1,1);
grid on;
hold on;
plot(time,base_avg(4,:));
plot(time,eff_hk_avg(4,:));
plot(time(sign_n_hk(1,:)),eff_hk_avg([false(3,size(sign_n_hk,2));sign_n_hk(1,:);false(2,size(sign_n_hk,2))]),'*');

ylim([-20,20]);
ylabel('Torque (Nm)');
hold off;
subplot(3,1,2);
grid on;
hold on;
plot(time,base_avg(5,:));
plot(time,eff_hk_avg(5,:));
plot(time(sign_n_hk(2,:)),eff_hk_avg([false(3,size(sign_n_hk,2));false(1,size(sign_n_hk,2));sign_n_hk(2,:);false(1,size(sign_n_hk,2))]),'*');
legend('baseline','eff hip/knee','negative work','Location','northwest','NumColumns',2);
ylim([-20,20]);
ylabel('Torque (Nm)');
hold off;
subplot(3,1,3);
grid on;
hold on;
plot(time,base_avg(6,:));
plot(time,eff_hk_avg(6,:));
plot(time(sign_n_hk(3,:)),eff_hk_avg([false(3,size(sign_n_hk,2));false(2,size(sign_n_hk,2));sign_n_hk(3,:)]),'*');

ylim([-20,20]);
hold off;
xlabel('Gait Period (%)');
ylabel('Torque (Nm)');
saveas(fig,'eff_hk.fig');