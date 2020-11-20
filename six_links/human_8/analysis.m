baseline = load('11191553.mat').result;
eff_hip = load('11191543.mat').result;
eff_kne = load('11191649.mat').result;
eff_ank = load('11191604.mat').result;
eff_ka = load('11191657.mat').result;
eff_ha = load('11191729.mat').result;
eff_hk = load('11191750.mat').result;




base_hip_p = [-baseline.x(3,:),baseline.x(4,:)+pi];
base_kne_p = [baseline.x(2,:),-baseline.x(5,:)];
base_ank_p = [baseline.x(1,:),-baseline.x(6,:)];
base_hip_u = [-baseline.x(3+6,:),baseline.x(4+6,:)];
base_kne_u = [baseline.x(2+6,:),-baseline.x(5+6,:)];
base_ank_u = [baseline.x(1+6,:),-baseline.x(6+6,:)];


eff_hip_hip_p = [-eff_hip.x(3,:),eff_hip.x(4,:)+pi];
eff_hip_kne_p = [eff_hip.x(2,:),-eff_hip.x(5,:)];
eff_hip_ank_p = [eff_hip.x(1,:),-eff_hip.x(6,:)];
eff_hip_hip_u = [-eff_hip.x(3+6,:),eff_hip.x(4+6,:)];
eff_hip_kne_u = [eff_hip.x(2+6,:),-eff_hip.x(5+6,:)];
eff_hip_ank_u = [eff_hip.x(1+6,:),-eff_hip.x(6+6,:)];


eff_kne_hip_p = [-eff_kne.x(3,:),eff_kne.x(4,:)+pi];
eff_kne_kne_p = [eff_kne.x(2,:),-eff_kne.x(5,:)];
eff_kne_ank_p = [eff_kne.x(1,:),-eff_kne.x(6,:)];
eff_kne_hip_u = [-eff_kne.x(3+6,:),eff_kne.x(4+6,:)];
eff_kne_kne_u = [eff_kne.x(2+6,:),-eff_kne.x(5+6,:)];
eff_kne_ank_u = [eff_kne.x(1+6,:),-eff_kne.x(6+6,:)];

eff_ank_hip_p = [-eff_ank.x(3,:),eff_ank.x(4,:)+pi];
eff_ank_kne_p = [eff_ank.x(2,:),-eff_ank.x(5,:)];
eff_ank_ank_p = [eff_ank.x(1,:),-eff_ank.x(6,:)];
eff_ank_hip_u = [-eff_ank.x(3+6,:),eff_ank.x(4+6,:)];
eff_ank_kne_u = [eff_ank.x(2+6,:),-eff_ank.x(5+6,:)];
eff_ank_ank_u = [eff_ank.x(1+6,:),-eff_ank.x(6+6,:)];

eff_ka_hip_p = [-eff_ka.x(3,:),eff_ka.x(4,:)+pi];
eff_ka_kne_p = [eff_ka.x(2,:),-eff_ka.x(5,:)];
eff_ka_ank_p = [eff_ka.x(1,:),-eff_ka.x(6,:)];
eff_ka_hip_u = [-eff_ka.x(3+6,:),eff_ka.x(4+6,:)];
eff_ka_kne_u = [eff_ka.x(2+6,:),-eff_ka.x(5+6,:)];
eff_ka_ank_u = [eff_ka.x(1+6,:),-eff_ka.x(6+6,:)];

eff_ha_hip_p = [-eff_ha.x(3,:),eff_ha.x(4,:)+pi];
eff_ha_kne_p = [eff_ha.x(2,:),-eff_ha.x(5,:)];
eff_ha_ank_p = [eff_ha.x(1,:),-eff_ha.x(6,:)];
eff_ha_hip_u = [-eff_ha.x(3+6,:),eff_ha.x(4+6,:)];
eff_ha_kne_u = [eff_ha.x(2+6,:),-eff_ha.x(5+6,:)];
eff_ha_ank_u = [eff_ha.x(1+6,:),-eff_ha.x(6+6,:)];

eff_hk_hip_p = [-eff_hk.x(3,:),eff_hk.x(4,:)+pi];
eff_hk_kne_p = [eff_hk.x(2,:),-eff_hk.x(5,:)];
eff_hk_ank_p = [eff_hk.x(1,:),-eff_hk.x(6,:)];
eff_hk_hip_u = [-eff_hk.x(3+6,:),eff_hk.x(4+6,:)+pi];
eff_hk_kne_u = [eff_hk.x(2+6,:),-eff_hk.x(5+6,:)];
eff_hk_ank_u = [eff_hk.x(1+6,:),-eff_hk.x(6+6,:)];

time = linspace(0,100,length(base_ank_u));
figure(1);
subplot(3,1,1);
plot(base_hip_p([92:end,1:91]));
subplot(3,1,2);
plot(base_kne_p([92:end,1:91]));
subplot(3,1,3);
plot(base_ank_p([92:end,1:91]));
grid on;
figure(2);
subplot(3,1,1);
grid on;
hold on;
plot(time,base_hip_u([92:end,1:91]));
plot(time,eff_hip_hip_u([92:end,1:91]));
legend('baseline','eff hip');
ylim([-20,20]);
hold off;
subplot(3,1,2);
grid on;
hold on;
plot(time,base_kne_u([92:end,1:91]));
plot(time,eff_hip_kne_u([92:end,1:91]));
legend('baseline','eff hip');
ylim([-20,20]);
hold off;
subplot(3,1,3);
grid on;
hold on;
plot(time,base_ank_u([92:end,1:91]));
plot(time,eff_hip_ank_u([92:end,1:91]));
legend('baseline','eff hip');
ylim([-20,20]);
hold off;


figure(3);
subplot(3,1,1);
grid on;
hold on;
plot(time,base_hip_u([92:end,1:91]));
plot(time,eff_kne_hip_u([92:end,1:91]));
legend('baseline','eff knee');
ylim([-20,20]);
hold off;
subplot(3,1,2);
grid on;
hold on;
plot(time,base_kne_u([92:end,1:91]));
plot(time,eff_kne_kne_u([92:end,1:91]));
legend('baseline','eff knee');
ylim([-20,20]);
hold off;
subplot(3,1,3);
grid on;
hold on;
plot(time,base_ank_u([92:end,1:91]));
plot(time,eff_kne_ank_u([92:end,1:91]));
legend('baseline','eff knee');
ylim([-20,20]);
hold off;


figure(4);
subplot(3,1,1);
grid on;
hold on;
plot(time,base_hip_u([92:end,1:91]));
plot(time,eff_ank_hip_u([92:end,1:91]));
legend('baseline','eff ankle');
ylim([-20,20]);
hold off;
subplot(3,1,2);
grid on;
hold on;
plot(time,base_kne_u([92:end,1:91]));
plot(time,eff_ank_kne_u([92:end,1:91]));
legend('baseline','eff ankle');
ylim([-20,20]);
hold off;
subplot(3,1,3);
grid on;
hold on;
plot(time,base_ank_u([92:end,1:91]));
plot(time,eff_ank_ank_u([92:end,1:91]));
legend('baseline','eff ankle');
ylim([-20,20]);
hold off;