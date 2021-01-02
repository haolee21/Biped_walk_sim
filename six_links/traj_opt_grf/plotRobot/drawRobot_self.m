function drawRobot_self(sol,p,grf_plot,idx)
% drawRobot(q,p)
%
% This function draws the robot with configuration q and parameters p
%
% INPUTS:
%   q = [5, 1] = column vector of a single robot configuration
%   p = parameter struct
%

if nargin <4
    idx = 0;
end
if nargin <3
    grf_plot=1;
end

    
dq = (sol(1:p.numJ,2:end)-sol(1:p.numJ,1:end-1))/p.sampT;
sol = (sol(:,1:end-1)+sol(:,2:end))/2;
% Compute the points that will be used for plotting
if idx~=0
    sol = sol(:,idx);
    dq = dq(:,idx);
end



%% define mass for each segments

m_foot = p.model.m_foot;
m_calf = p.model.m_calf;
m_thigh = p.model.m_thigh;
m_torso = p.model.m_torso;
m_tot = p.model.totM;
startHip = -100;
%%
off_set_q =0; %this is for toe_off of the original supporting leg
fig = figure();
syms('q');

for frame=1:size(sol,2)
    P = getRobotPos(sol(1,frame),sol(2,frame),sol(3,frame),sol(4,frame),sol(5,frame),sol(6,frame));
 
    
    
    P1 = P(1:2,1);
    P2 = P(1:2,2);
    P3 = P(1:2,3);
    P4 = P(1:2,4);
    P5 = P(1:2,5);
    P6 = P(1:2,6);
    P7 = P(1:2,7);
    x = [0,P1(1),P2(1),P3(1),P4(1),P5(1),P7(1),P6(1)]; % P7 is heel, P6 is toe
    y = [0,P1(2),P2(2),P3(2),P4(2),P5(2),P7(2),P6(2)];
    
    G1 = P(4:5,1);
    G2 = P(4:5,2);
    G3 = P(4:5,3);
    G4 = P(4:5,4);
    G5 = P(4:5,5);
    G6 = P(4:5,6);
    
    com_x =( G1(1)*m_calf+G2(1)*m_thigh+G3(1)*m_torso+G4(1)*m_thigh+G5(1)*m_calf+G6(1)*m_foot)/m_tot;
    
    %plot grf
    fext_toe_loc=P6;
    fext_heel_loc=P7;
    Fs_toe = sol(p.numJ*2+1,frame);
    Fs_heel = sol(p.numJ*2+2,frame);
    Fn_toe=0;
    Fn_heel=0;
    
    
    off_set=0;% vertical offset when grf2 occurs
    q_adj=0; % supporting feet angle adjustment
    if(frame>p.phase2_idx)
        if(toePos_y(sol(:,frame).')<p.toe_th)
            Fn_toe = Fy_toe(sol(:,frame).',dq(:,frame).',p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
            
        end
        %     [~,~,Fn_toe,Fs_toe]=toe_grf(sol(:,frame).',p);
        
        % force act on the heel
        
        
        if(heelPos_y(sol(:,frame).')<p.toe_th)
            Fn_heel = Fy_heel(sol(:,frame).',dq(:,frame).',p.toe_th,p.k,p.cmax_heel,p.dmax,p.sampT);
            
        end
        
        if(heelPos_y(sol(:,frame).')<-p.model.h_heel)
            off_set = -p.model.h_heel-heelPos_y(sol(:,frame).');
            if(off_set_q==0)
                off_set_q=sum(sol(1:6,frame));
            end
            f_q_adj = @(q)-sin(q)*(p.model.l_heel+p.model.l_foot)-cos(q)*p.model.h_heel-off_set+p.model.h_heel;
            q_adj = -sum(sol(1:6,frame))+off_set_q;
            q_adj = fzero(f_q_adj,q_adj);
        end
        
        
        
    elseif(frame<=p.phase1_idx)
        Fs_heel =0;
        Fn_toe = sol(p.numJ*2+3,frame);
    end
%     [~,~,Fn_heel,Fs_heel]=heel_grf(sol(:,frame).',p);
        
    
    fext_toe = [Fs_toe,Fn_toe]/m_tot*grf_plot;
    fext_heel = [Fs_heel,Fn_heel]/m_tot*grf_plot;
    
    % Heuristics:
    L = 2;  % Maximum extended leg length
    xBnd = L*[-1.2,1.2];
    yBnd = [-0.5*L-1,1.5*L ];
    
    % Colors:
    colorGround = [118,62,12]/255;
    colorStance = [200,60,60]/255;
    colorSwing = [60,60,200]/255;
    colorTorso = [160, 80, 160]/255;
    
  
    % Set up the figure
    hold off;
    clf(fig);
    % Plot the ground:
    plot(xBnd,[-p.model.h_heel,-p.model.h_heel],'LineWidth',6,'Color',colorGround);
    
    hold on;
    
    % Plot the links:
    toe_lat = [cos(q_adj),sin(q_adj);-sin(q_adj),cos(q_adj)]*[-p.model.l_foot;-p.model.h_heel];
    heel_lat = [cos(q_adj),sin(q_adj);-sin(q_adj),cos(q_adj)]*[p.model.l_heel;-p.model.h_heel];
    
    plot([toe_lat(1),heel_lat(1),x(1:3)],[toe_lat(2),heel_lat(2),y(1:3)]+off_set,'LineWidth',4,'Color',colorStance);
    plot(x(3:4),y(3:4)+off_set,'LineWidth',4,'Color',colorTorso);
    plot(x([3,5,6,7,8]),y([3,5,6,7,8])+off_set,'LineWidth',4,'Color',colorSwing);
    
    % Plot the joints:
    
    plot(0, 0+off_set,'k.','MarkerSize',30);
    plot(P1(1), P1(2)+off_set,'k.','MarkerSize',30);
    plot(P2(1), P2(2)+off_set,'k.','MarkerSize',30);
    plot(P3(1), P3(2)+off_set,'k.','MarkerSize',30);
    plot(P4(1), P4(2)+off_set,'k.','MarkerSize',30);
    plot(P5(1), P5(2)+off_set,'k.','MarkerSize',30);
    plot(P6(1), P6(2)+off_set,'k.','MarkerSize',30);
    plot(-p.model.l_foot,-p.model.h_heel+off_set,'g','MarkerSize',30);
    plot(0,-p.model.h_heel+off_set,'k','MarkerSize',30);
    % Plot the CoM:
    plot(G1(1), G1(2)+off_set,'ko','MarkerSize',8,'LineWidth',2);
    plot(G2(1), G2(2)+off_set,'ko','MarkerSize',8,'LineWidth',2);
    plot(G3(1), G3(2)+off_set,'ko','MarkerSize',8,'LineWidth',2);
    plot(G4(1), G4(2)+off_set,'ko','MarkerSize',8,'LineWidth',2);
    plot(G5(1), G5(2)+off_set,'ko','MarkerSize',8,'LineWidth',2);
    plot(G6(1), G6(2)+off_set,'ko','MarkerSize',8,'LineWidth',2);
    
    plot(com_x,-p.model.h_heel,'go','MarkerSize',8,'LineWidth',2);
    
    quiver(fext_heel_loc(1),fext_heel_loc(2)+off_set,fext_heel(1),fext_heel(2)+off_set,'color',[0.2,1,0],'LineStyle','--','LineWidth',2);
    quiver(fext_toe_loc(1),fext_toe_loc(2)+off_set,fext_toe(1),fext_toe(2)+off_set,'color',[0.2,1,0],'LineStyle','--','LineWidth',2);
    yline(p.toe_th,'-','Toe Height');
  
    if(startHip<-50)
        startHip = P2(1);
    end
    xline(startHip,'-','Start');
    xline(startHip-p.hipLen,'-','End');
    % Format the axis:
    axis([xBnd,yBnd]); axis equal; axis off;
    pause(0.002);
end
end