function fig=plot_u(human,human_load,exo,time,fig_title)


plot_torque1(human,time,['Human-',fig_title]);
plot_torque1(human_load,time,['Human+Load-',fig_title]);
plot_torque1(exo,time,['Human+Exo+Load-',fig_title]);

plot_torque2(human,human_load,exo,time,fig_title);


% fig=figure('visible','off');
% subplot(3,1,1);
% grid on;
% hold on;
% plot(time,base_avg(4,:));
% plot(time,eff_avg(4,:));
% plot(time(sign_neg(1,:)),eff_avg([false(3,size(sign_neg,2));sign_neg(1,:);false(2,size(sign_neg,2))]),'*');
% hold off;
% 
% % ylim([-70,70]);
% ylabel('Torque (Nm)');
% subplot(3,1,2);
% grid on;
% hold on;
% plot(time,base_avg(5,:));
% plot(time,eff_avg(5,:));
% plot(time(sign_neg(2,:)),eff_avg([false(3,size(sign_neg,2));false(1,size(sign_neg,2));sign_neg(2,:);false(1,size(sign_neg,2))]),'*');
% hold off;
% % legend('baseline',leg_str,'negative work','Location','south','NumColumns',2);
% % ylim([-70,70]);
% ylabel('Torque (Nm)');
% subplot(3,1,3);
% grid on;
% hold on;
% plot(time,base_avg(6,:));
% plot(time,eff_avg(6,:));
% plot(time(sign_neg(3,:)),eff_avg([false(3,size(sign_neg,2));false(2,size(sign_neg,2));sign_neg(3,:)]),'*');
% hold off;
% 
% % ylim([-70,70]);
% ylabel('Torque (Nm)');
% xlabel('Gait Period (%)');
% if(saveFig)
%     saveas(figure(fig),[batchName,'_',leg_str],'fig');
% end


end
%%
% plot different torque from same trial
function plot_torque1(human,time,fig_title)
fig = figure('Units','normalized');
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
legend('Muscle Torque','Joint Torque','SEE Torque','Location','northeast'); %SEE stands for series elastic elements
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

hold off;
sgtitle(fig_title);
% if(saveFig)
%     saveas(figure(fig),[human.batchName,'_',leg_str],'fig');
% end
end

%% 
% compare different model's torque
function plot_torque2(human,human_load,exo,time,fig_title)
fig = figure('Units','normalized');

subplot(3,1,1);
grid on;
hold on;
plot(time,human.tor_all(1,:));
plot(time,human_load.tor_all(1,:));
plot(time,exo.tor_all(1,:));
title("Hip Torque");
hold off;
subplot(3,1,2);
grid on;
hold on;
plot(time,human.tor_all(2,:));
plot(time,human_load.tor_all(2,:));
plot(time,exo.tor_all(2,:));

title('Knee Torque');
hold off;
subplot(3,1,3);
grid on;
hold on;
title('Ankle Torque');
plot(time,human.tor_all(3,:));
plot(time,human_load.tor_all(3,:));
plot(time,exo.tor_all(3,:));
legend('No Load','Human+Load','Human+Exo+Load','Location','northeast');
sgtitle(fig_title);
hold off;
end