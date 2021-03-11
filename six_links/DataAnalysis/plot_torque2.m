% compare different model's torque
function plot_torque2(opt_human,opt_exo,time,fig_title,leg)
%% we need to manually select the opt_human, opt_exo data since the code may generate opt.human.exo data
fig = figure('Units','normalized');


subplot(3,1,1);
grid on;
hold on;
for i=1:size(opt_human,2)
    plot(time,opt_human{i}.tor_all(1,:));
end
for i=1:size(opt_exo,2)
    plot(time,opt_exo{i}.tor_all(1,:));
end
title("Hip Torque");
hold off;
subplot(3,1,2);
grid on;
hold on;
for i=1:size(opt_human,2)
    plot(time,opt_human{i}.tor_all(2,:));
end
for i=1:size(opt_exo,2)
    plot(time,opt_exo{i}.tor_all(2,:));
end

title('Knee Torque');
hold off;
subplot(3,1,3);
grid on;
hold on;
title('Ankle Torque');
for i=1:size(opt_human,2)
    plot(time,opt_human{i}.tor_all(3,:));
end
for i=1:size(opt_exo,2)
    plot(time,opt_exo{i}.tor_all(3,:));
end
legend(leg,'Location','northwest');
sgtitle(fig_title);
hold off;
end

