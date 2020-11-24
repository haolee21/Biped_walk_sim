close all;
baseline = load('11191553.mat').result;
eff_hip = load('11191543.mat').result;
eff_kne = load('11200125.mat').result;
eff_ank = load('11201031.mat').result;
eff_ka = load('11201040.mat').result;
eff_ha = load('11191729.mat').result;
eff_hk = load('11191750.mat').result;


base_hip_p = [-baseline.x(3,:),baseline.x(4,:)+pi];
base_kne_p = [baseline.x(2,:),-baseline.x(5,:)];
base_ank_p = [baseline.x(1,:),-baseline.x(6,:)];
base_hip_u = [-baseline.x(3+6,:),baseline.x(4+6,:)];
base_kne_u = [baseline.x(2+6,:),-baseline.x(5+6,:)];
base_ank_u = [baseline.x(1+6,:),-baseline.x(6+6,:)];
base=[base_hip_p;base_kne_p;base_ank_p;base_hip_u;base_kne_u;base_ank_u];
base = base(:,[92:end,1:91]);
base_avg = (base(:,1:end-1)+base(:,2:end))/2;

eff_hip_hip_p = [-eff_hip.x(3,:),eff_hip.x(4,:)+pi];
eff_hip_kne_p = [eff_hip.x(2,:),-eff_hip.x(5,:)];
eff_hip_ank_p = [eff_hip.x(1,:),-eff_hip.x(6,:)];
eff_hip_hip_u = [-eff_hip.x(3+6,:),eff_hip.x(4+6,:)];
eff_hip_kne_u = [eff_hip.x(2+6,:),-eff_hip.x(5+6,:)];
eff_hip_ank_u = [eff_hip.x(1+6,:),-eff_hip.x(6+6,:)];
eff_hip = [eff_hip_hip_p;eff_hip_kne_p;eff_hip_ank_p;eff_hip_hip_u;eff_hip_kne_u;eff_hip_ank_u];
eff_hip = eff_hip(:,[92:end,1:91]);
eff_hip_avg = (eff_hip(:,1:end-1)+eff_hip(:,2:end))/2;

eff_kne_hip_p = [-eff_kne.x(3,:),eff_kne.x(4,:)+pi];
eff_kne_kne_p = [eff_kne.x(2,:),-eff_kne.x(5,:)];
eff_kne_ank_p = [eff_kne.x(1,:),-eff_kne.x(6,:)];
eff_kne_hip_u = [-eff_kne.x(3+6,:),eff_kne.x(4+6,:)];
eff_kne_kne_u = [eff_kne.x(2+6,:),-eff_kne.x(5+6,:)];
eff_kne_ank_u = [eff_kne.x(1+6,:),-eff_kne.x(6+6,:)];
eff_kne = [eff_kne_hip_p;eff_kne_kne_p;eff_kne_ank_p;eff_kne_hip_u;eff_kne_kne_u;eff_kne_ank_u];
eff_kne  = eff_kne(:,[92:end,1:91]);
eff_kne_avg = (eff_kne(:,1:end-1)+eff_kne(:,2:end))/2;

eff_ank_hip_p = [-eff_ank.x(3,:),eff_ank.x(4,:)+pi];
eff_ank_kne_p = [eff_ank.x(2,:),-eff_ank.x(5,:)];
eff_ank_ank_p = [eff_ank.x(1,:),-eff_ank.x(6,:)];
eff_ank_hip_u = [-eff_ank.x(3+6,:),eff_ank.x(4+6,:)];
eff_ank_kne_u = [eff_ank.x(2+6,:),-eff_ank.x(5+6,:)];
eff_ank_ank_u = [eff_ank.x(1+6,:),-eff_ank.x(6+6,:)];
eff_ank = [eff_ank_hip_p;eff_ank_kne_p;eff_ank_ank_p;eff_ank_hip_u;eff_ank_kne_u;eff_ank_ank_u];
eff_ank = eff_ank(:,[92:end,1:91]);
eff_ank_avg = (eff_ank(:,1:end-1)+eff_ank(:,2:end))/2;

eff_ka_hip_p = [-eff_ka.x(3,:),eff_ka.x(4,:)+pi];
eff_ka_kne_p = [eff_ka.x(2,:),-eff_ka.x(5,:)];
eff_ka_ank_p = [eff_ka.x(1,:),-eff_ka.x(6,:)];
eff_ka_hip_u = [-eff_ka.x(3+6,:),eff_ka.x(4+6,:)];
eff_ka_kne_u = [eff_ka.x(2+6,:),-eff_ka.x(5+6,:)];
eff_ka_ank_u = [eff_ka.x(1+6,:),-eff_ka.x(6+6,:)];
eff_ka = [eff_ka_hip_p;eff_ka_kne_p;eff_ka_ank_p;eff_ka_hip_u;eff_ka_kne_u;eff_ka_ank_u];
eff_ka = eff_ka(:,[92:end,1:91]);
eff_ka_avg = (eff_ka(:,1:end-1)+eff_ka(:,2:end))/2;



eff_ha_hip_p = [-eff_ha.x(3,:),eff_ha.x(4,:)+pi];
eff_ha_kne_p = [eff_ha.x(2,:),-eff_ha.x(5,:)];
eff_ha_ank_p = [eff_ha.x(1,:),-eff_ha.x(6,:)];
eff_ha_hip_u = [-eff_ha.x(3+6,:),eff_ha.x(4+6,:)];
eff_ha_kne_u = [eff_ha.x(2+6,:),-eff_ha.x(5+6,:)];
eff_ha_ank_u = [eff_ha.x(1+6,:),-eff_ha.x(6+6,:)];
eff_ha = [eff_ha_hip_p;eff_ha_kne_p;eff_ha_ank_p;eff_ha_hip_u;eff_ha_kne_u;eff_ha_ank_u];
eff_ha = eff_ha(:,[92:end,1:91]);
eff_ha_avg = (eff_ha(:,1:end-1)+eff_ha(:,2:end))/2;

eff_hk_hip_p = [-eff_hk.x(3,:),eff_hk.x(4,:)+pi];
eff_hk_kne_p = [eff_hk.x(2,:),-eff_hk.x(5,:)];
eff_hk_ank_p = [eff_hk.x(1,:),-eff_hk.x(6,:)];
eff_hk_hip_u = [-eff_hk.x(3+6,:),eff_hk.x(4+6,:)+pi];
eff_hk_kne_u = [eff_hk.x(2+6,:),-eff_hk.x(5+6,:)];
eff_hk_ank_u = [eff_hk.x(1+6,:),-eff_hk.x(6+6,:)];
eff_hk = [eff_hk_hip_p;eff_hk_kne_p;eff_hk_ank_p;eff_hk_hip_u;eff_hk_kne_u;eff_hk_ank_u];
eff_hk = eff_hk(:,[92:end,1:91]);
eff_hk_avg = (eff_hk(:,2:end)+eff_hk(:,1:end-1))/2;

time_ori = linspace(0,100,size(base,2));
time = (time_ori(1:end-1)+time_ori(2:end))/2;

figure(1);
subplot(1,3,3);
plot(time,base_avg(1,:)*180/pi);
title('Hip');
xlabel('Gait Period (%)');
ylabel('Joint Angle (deg)');
grid on;
subplot(1,3,2);
plot(time,base_avg(2,:)*180/pi);
title('Knee');
xlabel('Gait Period (%)');
ylabel('Joint Angle (deg)');
grid on;
subplot(1,3,1);
plot(time,base_avg(3,:)*180/pi);
title('Ankle');
xlabel('Gait Period (%)');
ylabel('Joint Angle (deg)');
grid on;
figure(2);
subplot(3,1,1);
grid on;
hold on;
plot(time,base_avg(4,:));
plot(time,eff_hip_avg(4,:));
hold off;
legend('baseline','eff hip');
ylim([-20,20]);
subplot(3,1,2);
grid on;
hold on;
plot(time,base_avg(5,:));
plot(time,eff_hip_avg(5,:));
hold off;
legend('baseline','eff hip');
ylim([-20,20]);
subplot(3,1,3);
grid on;
hold on;
plot(time,base_avg(6,:));
plot(time,eff_hip_avg(6,:));
hold off;
legend('baseline','eff hip');
ylim([-20,20]);



figure(3);
subplot(3,1,1);
grid on;
hold on;
plot(time,base_avg(4,:));
plot(time,eff_kne_avg(4,:));
legend('baseline','eff knee');
ylim([-20,20]);
hold off;
subplot(3,1,2);
grid on;
hold on;
plot(time,base_avg(5,:));
plot(time,eff_kne_avg(5,:));
legend('baseline','eff knee');
ylim([-20,20]);
hold off;
subplot(3,1,3);
grid on;
hold on;
plot(time,base_avg(6,:));
plot(time,eff_kne_avg(6,:));
legend('baseline','eff knee');
ylim([-20,20]);
hold off;


figure(4);
subplot(3,1,1);
grid on;
hold on;
plot(time,base_avg(4,:));
plot(time,eff_ank_avg(4,:));
legend('baseline','eff ankle');
ylim([-20,20]);
hold off;
subplot(3,1,2);
grid on;
hold on;
plot(time,base_avg(5,:));
plot(time,eff_ank_avg(5,:));
legend('baseline','eff ankle');
ylim([-20,20]);
hold off;
subplot(3,1,3);
grid on;
hold on;
plot(time,base_avg(6,:));
plot(time,eff_ank_avg(6,:));
legend('baseline','eff ankle');
ylim([-20,20]);
hold off;

figure(5);
subplot(3,1,1);
grid on;
hold on;
plot(time,base_avg(4,:));
plot(time,eff_ka_avg(4,:));
legend('baseline','eff knee/ankle');
ylim([-20,20]);
hold off;
subplot(3,1,2);
grid on;
hold on;
plot(time,base_avg(5,:));
plot(time,eff_ka_avg(5,:));
legend('baseline','eff knee/ankle');
ylim([-20,20]);
hold off;
subplot(3,1,3);
grid on;
hold on;
plot(time,base_avg(6,:));
plot(time,eff_ka_avg(6,:));
legend('baseline','eff knee/ankle');
ylim([-20,20]);
hold off;


figure(6);
subplot(3,1,1);
grid on;
hold on;
plot(time,base_avg(4,:));
plot(time,eff_hk_avg(4,:));
legend('baseline','eff hip/knee');
ylim([-20,20]);
hold off;
subplot(3,1,2);
grid on;
hold on;
plot(time,base_avg(5,:));
plot(time,eff_hk_avg(5,:));
legend('baseline','eff hip/knee');
ylim([-20,20]);
hold off;
subplot(3,1,3);
grid on;
hold on;
plot(time,base_avg(6,:));
plot(time,eff_hk_avg(6,:));
legend('baseline','eff hip/knee');
ylim([-20,20]);
hold off;

figure(7);
subplot(3,1,1);
grid on;
hold on;
plot(time,base_avg(4,:));
plot(time,eff_hk_avg(4,:));
legend('baseline','eff hip/ankle');
ylim([-20,20]);
hold off;
subplot(3,1,2);
grid on;
hold on;
plot(time,base_avg(5,:));
plot(time,eff_hk_avg(5,:));
legend('baseline','eff hip/ankle');
ylim([-20,20]);
hold off;
subplot(3,1,3);
grid on;
hold on;
plot(time,base_avg(6,:));
plot(time,eff_hk_avg(6,:));
legend('baseline','eff hip/ankle');
ylim([-20,20]);
hold off;



%% determine positive/negative work
q_diff_ka = eff_ka(1:3,2:end)-eff_ka(1:3,1:end-1);
sign_n_ka = (q_diff_ka(1:3,:).*eff_ka_avg(4:6,:))<-0.001;


figure(8);
subplot(3,1,1);
grid on;
hold on;
plot(time,base_avg(4,:));
plot(time,eff_ka_avg(4,:));
plot(time(sign_n_ka(1,:)),eff_ka_avg([false(3,size(sign_n_ka,2));sign_n_ka(1,:);false(2,size(sign_n_ka,2))]),'*');
legend('baseline','eff knee/ankle','negative work');
ylim([-20,20]);
hold off;
subplot(3,1,2);
grid on;
hold on;
plot(time,base_avg(5,:));
plot(time,eff_ka_avg(5,:));
plot(time(sign_n_ka(2,:)),eff_ka_avg([false(3,size(sign_n_ka,2));false(1,size(sign_n_ka,2));sign_n_ka(2,:);false(1,size(sign_n_ka,2))]),'*');
legend('baseline','eff knee/ankle','negative work');
ylim([-20,20]);
hold off;
subplot(3,1,3);
grid on;
hold on;
plot(time,base_avg(6,:));
plot(time,eff_ka_avg(6,:));
plot(time(sign_n_ka(3,:)),eff_ka_avg([false(3,size(sign_n_ka,2));false(2,size(sign_n_ka,2));sign_n_ka(3,:)]),'*');
legend('baseline','eff knee/ankle','negative work');
ylim([-20,20]);
hold off;


% hip and ankle 
q_diff_ha = eff_ha(1:3,2:end)-eff_ha(1:3,1:end-1);
sign_n_ha = (q_diff_ha(1:3,:).*eff_ha_avg(4:6,:))<-0.001;


figure(9);
subplot(3,1,1);
grid on;
hold on;
plot(time,base_avg(4,:));
plot(time,eff_ha_avg(4,:));
plot(time(sign_n_ha(1,:)),eff_ha_avg([false(3,size(sign_n_ha,2));sign_n_ha(1,:);false(2,size(sign_n_ha,2))]),'*');
legend('baseline','eff hip/ankle','negative work');
ylim([-20,20]);
hold off;
subplot(3,1,2);
grid on;
hold on;
plot(time,base_avg(5,:));
plot(time,eff_ha_avg(5,:));
plot(time(sign_n_ha(2,:)),eff_ha_avg([false(3,size(sign_n_ha,2));false(1,size(sign_n_ha,2));sign_n_ha(2,:);false(1,size(sign_n_ha,2))]),'*');
legend('baseline','eff hip/ankle','negative work');
ylim([-20,20]);
hold off;
subplot(3,1,3);
grid on;
hold on;
plot(time,base_avg(6,:));
plot(time,eff_ha_avg(6,:));
plot(time(sign_n_ha(3,:)),eff_ha_avg([false(3,size(sign_n_ha,2));false(2,size(sign_n_ha,2));sign_n_ha(3,:)]),'*');
legend('baseline','eff hip/ankle','negative work');
ylim([-20,20]);
hold off;


% hip and knee

q_diff_hk = eff_hk(1:3,2:end)-eff_hk(1:3,1:end-1);
sign_n_hk = (q_diff_hk(1:3,:).*eff_hk_avg(4:6,:))<-0.001;

figure(10);
subplot(3,1,1);
grid on;
hold on;
plot(time,base_avg(4,:));
plot(time,eff_hk_avg(4,:));
plot(time(sign_n_hk(1,:)),eff_hk_avg([false(3,size(sign_n_hk,2));sign_n_hk(1,:);false(2,size(sign_n_hk,2))]),'*');
legend('baseline','eff hip/knee','negative work');
ylim([-20,20]);
hold off;
subplot(3,1,2);
grid on;
hold on;
plot(time,base_avg(5,:));
plot(time,eff_hk_avg(5,:));
plot(time(sign_n_hk(2,:)),eff_hk_avg([false(3,size(sign_n_hk,2));false(1,size(sign_n_hk,2));sign_n_hk(2,:);false(1,size(sign_n_hk,2))]),'*');
legend('baseline','eff hip/knee','negative work');
ylim([-20,20]);
hold off;
subplot(3,1,3);
grid on;
hold on;
plot(time,base_avg(6,:));
plot(time,eff_hk_avg(6,:));
plot(time(sign_n_hk(3,:)),eff_hk_avg([false(3,size(sign_n_hk,2));false(2,size(sign_n_hk,2));sign_n_hk(3,:)]),'*');
legend('baseline','eff hip/knee','negative work');
ylim([-20,20]);
hold off;

