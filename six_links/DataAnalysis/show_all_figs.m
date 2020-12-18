function show_all_figs(res,plot_idx)

figure(res.fig.pos());
plotList = {res.fig.eff_hip,res.fig.eff_kne,res.fig.eff_ank,res.fig.eff_hk,res.fig.eff_ha,res.fig.eff_ka};
for i=1:length(plot_idx)
    plotList{1,plot_idx(1,i)}();
end
% figure(res.fig.eff_hip());
% figure(res.fig.eff_kne());
% figure(res.fig.eff_ank());
% figure(res.fig.eff_hk());
% figure(res.fig.eff_ha());
% figure(res.fig.eff_ka());
end