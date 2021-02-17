function [b,bExo,human,human_load,exo] = work_cal(result_struct,sup_eff,rec_eff)
%%
% calculate the positive work and negative work

human_data ={result_struct.human.data.base,result_struct.human.data.eff_hip,...
    result_struct.human.data.eff_kne,result_struct.human.data.eff_ank,result_struct.human.data.eff_hk,...
    result_struct.human.data.eff_ha,result_struct.human.data.eff_ka};
human_load_data ={result_struct.human_load.data.base,result_struct.human_load.data.eff_hip,...
    result_struct.human_load.data.eff_kne,result_struct.human_load.data.eff_ank,result_struct.human_load.data.eff_hk,...
    result_struct.human_load.data.eff_ha,result_struct.human_load.data.eff_ka};
exo_data ={result_struct.exo.data.base,result_struct.exo.data.eff_hip,...
    result_struct.exo.data.eff_kne,result_struct.exo.data.eff_ank,result_struct.exo.data.eff_hk,...
    result_struct.exo.data.eff_ha,result_struct.exo.data.eff_ka};
b =  work_cal_single(result_struct.human.data,result_struct.human,sup_eff,rec_eff);
b_load = work_cal_single(result_struct.human_load.data,result_struct.human_load,sup_eff,rec_eff);
bExo = work_cal_single(result_struct.exo.data,result_struct.exo,sup_eff,rec_eff);

[~,h_idx]=sort(b.("W tot(scaled)"));
[~,h_load_idx]=sort(b_load.("W tot(scaled)"));
[~,exo_idx]=sort(bExo.("W rec KA (scaled)"));

human=human_data{h_idx(1)};
human_load = human_load_data{h_load_idx(1)};
exo = exo_data{exo_idx(1)};
end

function b = work_cal_single(data,result,sup_eff,rec_eff)

w_all = [sum(data.base.x_avg.^2,2),...
         sum(data.eff_hip.x_avg.^2,2),...
         sum(data.eff_kne.x_avg.^2,2),...
         sum(data.eff_ank.x_avg.^2,2),...
         sum(data.eff_hk.x_avg.^2,2),...
         sum(data.eff_ha.x_avg.^2,2),...
         sum(data.eff_ka.x_avg.^2,2)];
w_all = w_all(4:6,:);
w_neg = [sum(data.base.neg_u.^2,2),...
         sum(data.eff_hip.neg_u.^2,2),...
         sum(data.eff_kne.neg_u.^2,2),...
         sum(data.eff_ank.neg_u.^2,2),...
         sum(data.eff_hk.neg_u.^2,2),...
         sum(data.eff_ha.neg_u.^2,2),...
         sum(data.eff_ka.neg_u.^2,2)];
w_pos = w_all-w_neg;
 

w_ratio=w_neg./w_pos;
w_rec = w_all-w_neg*(sup_eff+sup_eff*rec_eff);
w_rec = sum(w_rec,1)/result.hipLen;
w_rec_ka = sum(w_all,1)/result.hipLen-(sup_eff+sup_eff*rec_eff)*sum(w_neg(2:3,:),1)/result.hipLen;
w_tot = sum(w_all,1)/result.hipLen;
w_red = (w_tot-w_rec)./w_tot; % work reduce percentage
w_red_ka = (w_tot-w_rec_ka)./w_tot;
w_work = sum(w_all,1);

b = table(w_all(1,:).',w_ratio(1,:).',w_all(2,:).',w_ratio(2,:).',w_all(3,:).',w_ratio(3,:).',w_work.',w_tot.',w_rec.',w_red.',w_rec_ka.',w_red_ka.',...
         'VariableNames',{'Hip','Hip N/P','Knee','Knee N/P','Ank','Ankle N/P','W tot','W tot(scaled)','W rec(scaled)','Red(%)','W rec KA (scaled)','Red KA(%)'},...
          'RowNames',{'Baseline','Eff Hip','Eff Knee','Eff Ank','Eff HK', 'Eff HA', 'Eff KA'});
end