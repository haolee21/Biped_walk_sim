function fig=plot_u(base_avg,eff_avg,sign_neg,leg_str,time,batchName,saveFig)


fig=figure('visible','off');
subplot(3,1,1);
grid on;
hold on;
plot(time,base_avg(4,:));
plot(time,eff_avg(4,:));
plot(time(sign_neg(1,:)),eff_avg([false(3,size(sign_neg,2));sign_neg(1,:);false(2,size(sign_neg,2))]),'*');
hold off;

% ylim([-70,70]);
ylabel('Torque (Nm)');
subplot(3,1,2);
grid on;
hold on;
plot(time,base_avg(5,:));
plot(time,eff_avg(5,:));
plot(time(sign_neg(2,:)),eff_avg([false(3,size(sign_neg,2));false(1,size(sign_neg,2));sign_neg(2,:);false(1,size(sign_neg,2))]),'*');
hold off;
% legend('baseline',leg_str,'negative work','Location','south','NumColumns',2);
% ylim([-70,70]);
ylabel('Torque (Nm)');
subplot(3,1,3);
grid on;
hold on;
plot(time,base_avg(6,:));
plot(time,eff_avg(6,:));
plot(time(sign_neg(3,:)),eff_avg([false(3,size(sign_neg,2));false(2,size(sign_neg,2));sign_neg(3,:)]),'*');
hold off;

% ylim([-70,70]);
ylabel('Torque (Nm)');
xlabel('Gait Period (%)');
if(saveFig)
    saveas(figure(fig),[batchName,'_',leg_str],'fig');
end


end