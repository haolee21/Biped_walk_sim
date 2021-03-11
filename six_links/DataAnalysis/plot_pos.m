function fig = plot_pos(result,time,batchName,savefig)

base_avg=result.base.pos;
hip_avg=result.hip.pos;
knee_avg=result.knee.pos;
ank_avg=result.ank.pos;
hk_avg=result.hk.pos;
ha_avg=result.ha.pos;
ka_avg=result.ka.pos;

fig=figure('visible','off');
set(gcf,'Position',[233 499 1303 200]);
subplot(1,3,3);
hold on;
plot(time,base_avg(1,:)*180/pi);
plot(time,hip_avg(1,:)*180/pi);
plot(time,knee_avg(1,:)*180/pi);
plot(time,ank_avg(1,:)*180/pi);
plot(time,hk_avg(1,:)*180/pi);
plot(time,ha_avg(1,:)*180/pi);
plot(time,ka_avg(1,:)*180/pi);
title('Hip');
xlabel('Gait Period (%)');
ylabel('Joint Angle (deg)');
grid on;

hold off;
subplot(1,3,2);
hold on;
plot(time,base_avg(2,:)*180/pi);
plot(time,hip_avg(2,:)*180/pi);
plot(time,knee_avg(2,:)*180/pi);
plot(time,ank_avg(2,:)*180/pi);
plot(time,hk_avg(2,:)*180/pi);
plot(time,ha_avg(2,:)*180/pi);
plot(time,ka_avg(2,:)*180/pi);
title('Knee');
xlabel('Gait Period (%)');
ylabel('Joint Angle (deg)');
grid on;
hold off;
subplot(1,3,1);
hold on;
plot(time,base_avg(3,:)*180/pi);
plot(time,hip_avg(3,:)*180/pi);
plot(time,knee_avg(3,:)*180/pi);
plot(time,ank_avg(3,:)*180/pi);
plot(time,hk_avg(3,:)*180/pi);
plot(time,ha_avg(3,:)*180/pi);
plot(time,ka_avg(3,:)*180/pi);
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