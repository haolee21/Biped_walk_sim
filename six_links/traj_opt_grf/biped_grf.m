function grf = biped_grf(sol,p,model)

addpath([model,'/robotGen']);
addpath([model,'/robotGen/grf']);
addpath([model,'/robotGen/dyn']);

dq = (sol(1:p.numJ,2:end)-sol(1:p.numJ,1:end-1))/p.sampT;
sol = (sol(:,1:end-1)+sol(:,2:end))/2;
grf = zeros(4,size(sol,2)-2);

for frame=1:size(sol,2)

    Fs_toe = sol(p.numJ*2+1,frame);
    Fs_heel = sol(p.numJ*2+2,frame);
    Fn_toe=0;
    Fn_heel=0;
    if(frame>p.phase2_idx)
        if(toePos_y(sol(:,frame).')<p.toe_th)
            Fn_toe = Fy_toe(sol(:,frame).',dq(:,frame).',p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
            
        end
        %     [~,~,Fn_toe,Fs_toe]=toe_grf(sol(:,frame).',p);
        
        % force act on the heel
        
        
        if(heelPos_y(sol(:,frame).')<p.toe_th)
            Fn_heel = Fy_heel(sol(:,frame).',dq(:,frame).',p.toe_th,p.k,p.cmax_heel,p.dmax,p.sampT);
            
        end
    elseif(frame<=p.phase1_idx)
        Fs_heel =0;
        Fn_toe = sol(p.numJ*2+3,frame);
    end
%     [~,~,Fn_heel,Fs_heel]=heel_grf(sol(:,frame).',p);
        
    grf(:,frame) = [Fs_toe;Fn_toe;Fs_heel;Fn_heel];

    
   
end
rmpath([model,'/robotGen']);
rmpath([model,'/robotGen/grf']);
rmpath([model,'robotGen/dyn']);
end