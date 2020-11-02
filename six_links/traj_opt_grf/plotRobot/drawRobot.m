function drawRobot(sol,p)
% drawRobot(q,p)
%
% This function draws the robot with configuration q and parameters p
%
% INPUTS:
%   q = [5, 1] = column vector of a single robot configuration
%   p = parameter struct
%





%% define mass for each segments

m_foot = p.model.m_foot;
m_calf = p.model.m_calf;
m_thigh = p.model.m_thigh;
m_torso = p.model.m_torso;
m_tot = p.model.totM;
startHip = -100;
%%
fig = figure();

P = getRobotPos(sol(1,1),sol(2,1),sol(3,1),sol(4,1),sol(5,1),sol(6,1));


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
plot([-p.model.l_foot,0,x(1:3)],[-p.model.h_heel,-p.model.h_heel,y(1:3)],'LineWidth',4,'Color',colorStance);
plot(x(3:4),y(3:4),'LineWidth',4,'Color',colorTorso);
plot(x([3,5,6,7,8]),y([3,5,6,7,8]),'LineWidth',4,'Color',colorSwing);

% Plot the joints:

plot(0, 0,'k.','MarkerSize',30);
plot(P1(1), P1(2),'k.','MarkerSize',30);
plot(P2(1), P2(2),'k.','MarkerSize',30);
plot(P3(1), P3(2),'k.','MarkerSize',30);
plot(P4(1), P4(2),'k.','MarkerSize',30);
plot(P5(1), P5(2),'k.','MarkerSize',30);
plot(P6(1), P6(2),'k.','MarkerSize',30);
plot(-p.model.l_foot,-p.model.h_heel,'g','MarkerSize',30);
plot(0,-p.model.h_heel,'k','MarkerSize',30);
% Plot the CoM:
plot(G1(1), G1(2),'ko','MarkerSize',8,'LineWidth',2);
plot(G2(1), G2(2),'ko','MarkerSize',8,'LineWidth',2);
plot(G3(1), G3(2),'ko','MarkerSize',8,'LineWidth',2);
plot(G4(1), G4(2),'ko','MarkerSize',8,'LineWidth',2);
plot(G5(1), G5(2),'ko','MarkerSize',8,'LineWidth',2);
plot(G6(1), G6(2),'ko','MarkerSize',8,'LineWidth',2);

plot(com_x,-p.model.h_heel,'go','MarkerSize',8,'LineWidth',2);


yline(p.toe_th,'-','Toe Height');

if(startHip<-50)
    startHip = P2(1);
end
xline(startHip,'-','Start');
xline(startHip-p.hipLen,'-','End');
% Format the axis:
axis([xBnd,yBnd]); axis equal; axis off;


end