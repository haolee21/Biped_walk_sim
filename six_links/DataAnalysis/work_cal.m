function [b,opt] = work_cal(result_struct,sup_eff,rec_eff)
%%
% calculate the positive work and negative work

modelName = fieldnames(result_struct);
knee_dir = {'forward','backward'};
b = struct();
for i1=1:size(modelName,1)
    for i2=1:size(knee_dir,2)
        data_list.(modelName{i1})={result_struct.(modelName{i1}).(knee_dir{i2}).base,result_struct.(modelName{i1}).(knee_dir{i2}).hip,...
        result_struct.(modelName{i1}).(knee_dir{i2}).knee,result_struct.(modelName{i1}).(knee_dir{i2}).ank,result_struct.(modelName{i1}).(knee_dir{i2}).hk,...
        result_struct.(modelName{i1}).(knee_dir{i2}).ha,result_struct.(modelName{i1}).(knee_dir{i2}).ka};
        b.(modelName{i1}).(knee_dir{i2}) =  work_cal_single(result_struct.(modelName{i1}).(knee_dir{i2}),sup_eff,rec_eff);
        [~,h_idx] = sort(b.(modelName{i1}).(knee_dir{i2}).("W tot(scaled)"));
        [~,exo_idx] = sort(b.(modelName{i1}).(knee_dir{i2}).("W rec KA (scaled)"));
        
        opt.human.(modelName{i1}).(knee_dir{i2})=data_list.(modelName{i1}){h_idx(1)};
        opt.exo.(modelName{i1}).(knee_dir{i2}) = data_list.(modelName{i1}){exo_idx(1)};
    end
    
end

end

function b = work_cal_single(data,sup_eff,rec_eff)

w_act = [sum(abs(data.base.tor_all),2),...
         sum(abs(data.hip.tor_all),2),...
         sum(abs(data.knee.tor_all),2),...
         sum(abs(data.ank.tor_all),2),...
         sum(abs(data.hk.tor_all),2),...
         sum(abs(data.ha.tor_all),2),...
         sum(abs(data.ka.tor_all),2)];

w_neg = [sum(abs(data.base.neg_u_all),2),...
         sum(abs(data.hip.neg_u_all),2),...
         sum(abs(data.knee.neg_u_all),2),...
         sum(abs(data.ank.neg_u_all),2),...
         sum(abs(data.hk.neg_u_all),2),...
         sum(abs(data.ha.neg_u_all),2),...
         sum(abs(data.ka.neg_u_all),2)];
w_pos = w_act-w_neg;
 

w_ratio=w_neg./w_pos;
w_rec = w_act-w_neg*(sup_eff+sup_eff*rec_eff);
w_rec = sum(w_rec,1)/data.hipLen;
w_rec_ka = sum(w_act,1)/data.hipLen-(sup_eff+sup_eff*rec_eff)*sum(w_neg(2:3,:),1)/data.hipLen;
w_tot = sum(w_act,1)/data.hipLen;
w_red = (w_tot-w_rec)./w_tot; % work reduce percentage
w_red_ka = (w_tot-w_rec_ka)./w_tot;
w_work = sum(w_act,1);

b = table(w_act(1,:).',w_ratio(1,:).',w_act(2,:).',w_ratio(2,:).',w_act(3,:).',w_ratio(3,:).',w_work.',w_tot.',w_rec.',w_red.',w_rec_ka.',w_red_ka.',...
         'VariableNames',{'Hip','Hip N/P','Knee','Knee N/P','Ank','Ankle N/P','W tot','W tot(scaled)','W rec(scaled)','Red(%)','W rec KA (scaled)','Red KA(%)'},...
          'RowNames',{'Baseline','Eff Hip','Eff Knee','Eff Ank','Eff HK', 'Eff HA', 'Eff KA'});
end