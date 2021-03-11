function plot_torque1(human,time,fig_title)
fig = figure('Units','normalized');
curFigSize = get(gcf,'Position');
set(gcf,'Position',[curFigSize(1),curFigSize(2),1000,420]);
time2 = linspace(0,100,size(human.u_all(1,:),2));
subplot(3,2,1);
grid on;
hold on;
plot(time,human.tor_act(1,:));
plot(time,human.tor_all(1,:),'--');
plot(time,human.tor_elastic(1,:));
plot(time(abs(human.neg_u_all(1,:))>0.01),human.neg_u_all(1,abs(human.neg_u_all(1,:))>0.01),'*');

title("Hip Torque");
hold off;
subplot(3,2,3);
grid on;
hold on;
plot(time,human.tor_act(2,:));
plot(time,human.tor_all(2,:),'--');
plot(time,human.tor_elastic(2,:));
plot(time(abs(human.neg_u_all(2,:))>0.01),human.neg_u_all(2,abs(human.neg_u_all(2,:))>0.01),'*');

title('Knee Torque');
hold off;
subplot(3,2,5);
grid on;
hold on;
title('Ankle Torque');
plot(time,human.tor_act(3,:));
plot(time,human.tor_all(3,:),'--');
plot(time,human.tor_elastic(3,:));
plot(time(abs(human.neg_u_all(3,:))>0.01),human.neg_u_all(3,abs(human.neg_u_all(3,:))>0.01),'*');
legend('Muscle Torque','Joint Torque','SEE Torque','Location','northwest'); %SEE stands for series elastic elements
hold off;

subplot(3,2,2);
grid on;
hold on;
title("Hip");
plot(time2,-human.u_all(3,:))
plot(time2,human.u_all(4,:));

hold off;

subplot(3,2,4);
grid on;
hold on;
title('Knee');
plot(time2,human.u_all(2,:));
plot(time2,-human.u_all(5,:));

hold off;

subplot(3,2,6);
grid on;
hold on;
title('Ankle');
plot(time2,-human.u_all(1,:));
plot(time2,human.u_all(6,:));
legend('Front','Rear','Location','north');

hold off;
sgtitle(fig_title);
% if(saveFig)
%     saveas(figure(fig),[human.batchName,'_',leg_str],'fig');
% end
end