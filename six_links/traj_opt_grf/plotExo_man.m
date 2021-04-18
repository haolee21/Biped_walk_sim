function plotExo_man(data,modelName,modelType,knee_dir,idx,video_name,plot_show)
%% this function will plot the model walking
% inputs: 
%       1. data: results from opt_discrete
%       2. model: name of the model
%       3. knee_dir: bool, 1=forward, 0=backward
%       4. video: str, the name of the saved video file, leave it empty if
%       not creating a video
%       5. idx: if only plotting single frame (will need previous frame to
%       create velocity for the ground reaction force
%       6. display the plots or not (we don't need to show the plots when
%       doing batch plotting



addpath(['../',modelName,'/',modelType,'/robotGen/grf']);
addpath(['../',modelName,'/',modelType,'/robotGen/graph']);
addpath(['../',modelName,'/',modelType,'/robotGen/pos']);
%% input argument handeling 
if nargin<5
    idx=0;
    plot_show=1;
end
if nargin<6
    plot_show=1;
end


if exist('video_name','var')
    writeObject = VideoWriter(video_name);
    writeObject.FrameRate=10;
    writeObject.Quality=100;
    open(writeObject);
end

%% pre-process the data, basically take the average of it, since the dynamic constraints also work on the avg
x = data.x;
p = data.param;
dq = (x(1:p.numJ,2:end)-x(1:p.numJ,1:end-1))/p.sampT;
x = (x(:,1:end-1)+x(:,2:end))/2;
% if we only want to plot one frame
if idx>0
    x = x(:,idx);
    dq = dq(:,idx);
end

if knee_dir==1
    jointPos_h = @(q)jointPos_f(q);
    com_h = @(q)com_hf(q);
else
    jointPos_h = @(q)jointPosExoHb(q);
    com_h = @(q)com_hb(q);
end

%% define mass for each segments

m_tot = p.model.totM;



% Heuristics:
L = 2;  % Maximum extended leg length
xBnd = L*[-1.2,1.2];
yBnd = [-0.5*L-1,1.5*L ];

% Colors:
colorGround = [118,62,12]/255;
colorStance = [200,60,60]/255;
colorSwing = [60,60,200]/255;
colorTorso = [160, 80, 160]/255;
if plot_show==1
    fig = figure();
else
    fig = figure('visible','off');
end


off_set_q =0; %this is for toe_off of the original supporting leg
for i=1:size(x,2)
    % joint location
    P_h = jointPos_h(x(1:6,i).');
    x_h = [0,P_h(1,:)];
    y_h = [0,P_h(2,:)];
    P_e = jointPos_f(x(1:6,i).');
    x_e = [0,P_e(1,:)];
    y_e = [0,P_e(2,:)];
    % com location
    G_h = com_h(x(1:6,i).');
    G_e = com_e(x(1:6,i).');
    % grf
    Fs_toe = x(p.numJ*2+1,i);
    Fs_heel = x(p.numJ*2+2,i);
    Fn_toe=x(p.numJ*2+3,i);
    Fn_heel=0;
    q_adj=0; % supporting feet angle adjustment
    off_set = 0;
    
    if(i>p.phase2_idx)
        if toePos_y(x(1:p.numJ,i).')<p.toe_th
            Fn_toe = Fy_toe(x(:,i).',dq(:,i).',p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
        end
        if heelPos_y(x(1:p.numJ,i).')<p.toe_th
            Fn_heel = Fy_heel(x(:,i).',dq(:,i).',p.toe_th,p.k,p.cmax_heel,p.dmax,p.sampT);
        end
        if(heelPos_y(x(1:p.numJ,i).')<-p.model.h_heel)
            off_set = -p.model.h_heel-heelPos_y(x(:,i).');
            if(off_set_q==0)
                off_set_q=sum(x(1:6,i));
            end
            f_q_adj = @(q)-sin(q)*p.model.l_foot-cos(q)*p.model.h_heel-off_set+p.model.h_heel;
            q_adj = -sum(x(1:6,i))+off_set_q;
            q_adj = fzero(f_q_adj,q_adj);
        end
        
    end
    fext_toe = [Fs_toe,Fn_toe]/m_tot;
    fext_heel = [Fs_heel,Fn_heel]/m_tot;
    
    
    
    
    % Set up the figure
    
    hold off;
    clf(fig);
    hold on;
    % Plot the ground:
    plot(xBnd,[-p.model.h_heel,-p.model.h_heel],'LineWidth',6,'Color',colorGround);
    % Plot the links:
    toe_rear = [cos(q_adj),sin(q_adj);-sin(q_adj),cos(q_adj)]*[-p.model.l_foot;-p.model.h_heel];
    heel_rear = [cos(q_adj),sin(q_adj);-sin(q_adj),cos(q_adj)]*[p.model.l_heel;-p.model.h_heel];
    % human links
    plot([toe_rear(1),heel_rear(1),x_h(1:3)],[toe_rear(2),heel_rear(2),y_h(1:3)]+off_set,'LineWidth',4,'Color',colorStance);
    plot(x_h(3:4),y_h(3:4)+off_set,'LineWidth',4,'Color',colorTorso);
    plot(x_h([3,5,6,8,7]),y_h([3,5,6,8,7])+off_set,'LineWidth',4,'Color',colorSwing);
    % robot links
    plot([toe_rear(1),heel_rear(1),x_e(1:3)],[toe_rear(2),heel_rear(2),y_e(1:3)]+off_set,'LineWidth',4,'Color',colorStance,'LineStyle','--');
    plot(x_e(3:4),y_e(3:4)+off_set,'LineWidth',4,'Color',colorTorso);
    plot(x_e([3,5,6,8,7]),y_e([3,5,6,8,7])+off_set,'LineWidth',4,'Color',colorSwing,'LineStyle','--');
    
    % Plot the human joints:
    plot(0, 0+off_set,'k.','MarkerSize',30);
    plot(x_h(1), y_h(1)+off_set,'k.','MarkerSize',30);
    plot(x_h(2), y_h(2)+off_set,'k.','MarkerSize',30);
    plot(x_h(3), y_h(3)+off_set,'k.','MarkerSize',30);
    plot(x_h(4), y_h(4)+off_set,'k.','MarkerSize',30);
    plot(x_h(5), y_h(5)+off_set,'k.','MarkerSize',30);
    
    plot(-p.model.l_foot,-p.model.h_heel+off_set,'g','MarkerSize',30);
    plot(0,-p.model.h_heel+off_set,'k','MarkerSize',30);
    % plot the exo joint 
    plot(x_e(1), y_e(1)+off_set,'k.','MarkerSize',30);
    plot(x_e(2), y_e(2)+off_set,'k.','MarkerSize',30);
    plot(x_e(3), y_e(3)+off_set,'k.','MarkerSize',30);
    plot(x_e(4), y_e(4)+off_set,'k.','MarkerSize',30);
    plot(x_e(5), y_e(5)+off_set,'k.','MarkerSize',30);
    
    
    % Plot human CoM:
    plot(G_h(1,1),G_h(2,1)+off_set,'ko','MarkerSize',8,'LineWidth',2);
    plot(G_h(1,2),G_h(2,2)+off_set,'ko','MarkerSize',8,'LineWidth',2);
    plot(G_h(1,3),G_h(2,3)+off_set,'ko','MarkerSize',8,'LineWidth',2);
    plot(G_h(1,4),G_h(2,4)+off_set,'ko','MarkerSize',8,'LineWidth',2);
    plot(G_h(1,5),G_h(2,5)+off_set,'ko','MarkerSize',8,'LineWidth',2);
    plot(G_h(1,6),G_h(2,6)+off_set,'ko','MarkerSize',8,'LineWidth',2);
    
    plot(G_e(1,1),G_e(2,1)+off_set,'ko','MarkerSize',8,'LineWidth',2);
    plot(G_e(1,2),G_e(2,2)+off_set,'ko','MarkerSize',8,'LineWidth',2);
    plot(G_e(1,3),G_e(2,3)+off_set,'ko','MarkerSize',8,'LineWidth',2);
    plot(G_e(1,4),G_e(2,4)+off_set,'ko','MarkerSize',8,'LineWidth',2);
    plot(G_e(1,5),G_e(2,5)+off_set,'ko','MarkerSize',8,'LineWidth',2);
   
    
    
    
    quiver(P_e(1,7),P_e(2,7)+off_set, fext_heel(1),fext_heel(2)+off_set,'color',[0.2,1,0],'LineStyle','--','LineWidth',2);
    quiver(P_e(1,6),P_e(2,6)+off_set,fext_toe(1),fext_toe(2)+off_set,'color',[0.2,1,0],'LineStyle','--','LineWidth',2);
    
    % define vertical range of the graph
    axis([xBnd,yBnd]); axis equal; axis off;
    if plot_show ==1
        pause(0.002); % we only need delay if we want to show this graph
    end
    
end
    
    
if exist('writeObject','var')
    close(writeObject);
end  
    
    
end
   
function hb_pos = jointPosExoHb(q)
pF = jointPos_f(q);
pB = jointPos_hb(q);
hb_pos = [pB,pF(:,6:7)];
end






















