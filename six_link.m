%%% This script will generate a 2-d biped model
%   the model has 5 segments, calf, thigh, and torso
%%% 
clear;
l_feet = 0.3048;
l_calf = 0.45;
l_thight =0.45;
l_torso = 0.9;

totM = 70; %kg
m_feet = 0.0143*totM;
m_calf = 0.0475*totM;
m_thight = 0.105*totM;
m_torso = totM - m_feet-m_calf-m_thight;

l_feet = 0.3048;
l_calf = 0.45;
l_thight =0.45;
l_torso = 0.9;
DH = [0, 0, 0, 0, 0, 0;...
      0, l_calf, 0, 0, 0, 0;...
      0, l_thight, 0, 0, 0, 0;...
      0,  0, 0, 0, 0, 0;...
      0,l_thight, 0, 0, 0, 0;...
      0,l_calf, 0, 0, 0, 0];
robot=DH2Robot(DH,1);
totM = 70; %kg
m_feet = 0.0143*totM;
m_calf = 0.0475*totM;
m_thight = 0.105*totM;
m_torso = totM - m_feet-m_calf-m_thight;

m_calf = m_feet+m_calf;


robot.links(1).m = m_calf;
robot.links(2).m = m_thight;
robot.links(3).m = m_torso;
robot.links(4).m = m_thight;
robot.links(5).m = m_calf;
robot.links(6).m =0;


robot.links(1).r = [l_calf/2,0,0]';
robot.links(2).r = [l_thight/2,0,0]';
robot.links(3).r = [l_torso/2,0,0]';
robot.links(4).r = [l_thight/2,0,0]';
robot.links(5).r = [l_calf/2,0,0]';
robot.links(6).r =[0,0,0]';

I_calf = zeros(3);
I_calf(3,3) = m_calf*l_calf^2/12;
I_thight = zeros(3);
I_thight(3,3) = m_thight*l_thight^2/12;
I_torso = zeros(3);
I_torso(3,3) = m_torso*l_torso^2/12;

robot.links(1).I = I_calf;
robot.links(2).I = I_thight;
robot.links(3).I = I_torso;
robot.links(4).I = I_thight;
robot.links(5).I = I_calf;
robot.links(6).I = zeros(3);

robot.links(1).Jm=0;
robot.links(2).Jm=0;
robot.links(3).Jm=0;
robot.links(4).Jm=0;
robot.links(5).Jm=0;
robot.links(6).Jm=0;

cg = CodeGenerator(robot);
M = cg.geninertia();
G = cg.gengravload();
J = cg.genjacobian();
V = cg.gencoriolis();


matlabFunction(M,'File','six_M');
matlabFunction(G,'File','six_G');
matlabFunction(J,'File','six_J');
matlabFunction(V,'File','six_V');