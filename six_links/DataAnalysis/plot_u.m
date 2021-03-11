function fig=plot_u(opt_data,time,fig_title)


plot_torque1(human,time,['Human-',fig_title]);
plot_torque1(human_load,time,['Human+Load-',fig_title]);
plot_torque1(exo,time,['Human+Exo+Load-',fig_title]);

plot_torque2(human,human_load,exo,time,fig_title);



end
%%
% plot different torque from same trial


%% 
