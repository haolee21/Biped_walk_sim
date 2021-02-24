function fig = plot_pos(result,time,batchName,savefig)

base_avg=result.baseline.pos;
eff_hip_avg=result.eff_hip.pos;
eff_kne_avg=result.eff_kne.pos;
eff_ank_avg=result.eff_ank.pos;
eff_hk_avg=result.eff_hk.pos;
eff_ha_avg=result.eff_ha.pos;
eff_ka_avg=result.eff_ka.pos;

fig=figure('visible','off');
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
legend('baseline','eff hip','eff knee','eff ank','eff hk','eff ha','eff ka','Position',[0.01 0.2800 0.0706 0.5250]);
title('Ankle');
xlabel('Gait Period (%)');
ylabel('Joint Angle (deg)');
grid on;
hold off;
if(savefig)
    saveas(figure(fig),[batchName,'_baseline.fig']);
end
end