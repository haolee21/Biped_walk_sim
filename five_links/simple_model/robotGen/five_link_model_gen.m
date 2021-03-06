%%% This script will generate a 2-d biped model
%   the model has 5 segments, calf, thigh, and torso
%%% 
clear;
addpath '.../'
addpath ../

l_feet = 0.3048;
l_calf = 0.45;
l_thight =0.45;
l_torso = 0.9;
DH = [0, 0, 0, 0, 0, 0;...
      0, l_calf, 0, 0, 0, 0;...
      0, l_thight, 0, 0, 0, 0;...
      0,  0, 0, 0, 0, 0;...
      0,l_thight, 0, 0, 0, 0];
robot=DH2Robot(DH,1);
robot.gravity=[0,9.81,0];

% hold on;
% figure(1);
% % robot.plot([70,-15,35,180,25,0]/180*pi);
% 
% robot.plot([295,-25,-180,-35,15]/180*pi);

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



robot.links(1).r = [l_calf/2,0,0]';
robot.links(2).r = [l_thight/2,0,0]';
robot.links(3).r = [l_torso/2,0,0]';
robot.links(4).r = [l_thight/2,0,0]';
robot.links(5).r = [l_calf/2,0,0]';


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


robot.links(1).Jm=0;
robot.links(2).Jm=0;
robot.links(3).Jm=0;
robot.links(4).Jm=0;
robot.links(5).Jm=0;

syms q1 q2 q3 q4 q5 th qd1 qd2 qd3 qd4 qd5;
endPos = turnRTtoMatrix(robot.A([1,2,3,4,5],[q1 q2 q3 q4 q5]))*[l_calf,0,0,1].';
endPos = simplify(endPos(1:3,1));

%% end effector

% pos
end_x_pos = endPos(1,1);
end_y_pos = endPos(2,1);
matlabFunction(end_x_pos,'file','posCons/end_x_pos','Vars',[q1,q2,q3,q4,q5]);
matlabFunction(end_y_pos,'file','posCons/end_y_pos','Vars',{[q1,q2,q3,q4,q5]});
% grad

end_x_grad = [diff(end_x_pos,q1),diff(end_x_pos,q2),diff(end_x_pos,q3),diff(end_x_pos,q4),diff(end_x_pos,q5)];
matlabFunction(end_x_grad,'file','posCons/end_x_grad','Vars',[q1,q2,q3,q4,q5]);
end_y_grad = [diff(end_y_pos,q1),diff(end_y_pos,q2),diff(end_y_pos,q3),diff(end_y_pos,q4),diff(end_y_pos,q5)];
matlabFunction(end_y_grad,'file','posCons/end_y_grad','Vars',{[q1,q2,q3,q4,q5]});

%% head

headPos = turnRTtoMatrix(robot.A([1,2,3],[q1,q2,q3]))*[l_torso,0,0,1].';
headPos = simplify(headPos(1:3,1));
head_y_pos = headPos(2);
matlabFunction(head_y_pos,'File','posCons/head_y_pos','vars',{[q1,q2,q3]});
% generate the gradient, but only to q1 q2 q3 (form the real gradient in
% the function since we may add more joints to the end
head_y_grad = [diff(head_y_pos,q1),diff(head_y_pos,q2),diff(head_y_pos,q3)];
matlabFunction(head_y_grad,'file','posCons/head_y_grad','vars',{[q1,q2,q3]});

%% hip
hipPos = turnRTtoMatrix(robot.A([1,2,3],[q1,q2,q3]))*[0,0,0,1].';
hipPos = simplify(hipPos(1:3,1));
hip_x_pos = hipPos(1);
matlabFunction(hip_x_pos,'File','posCons/hip_x_pos','vars',{[q1,q2,q3]});
hip_x_grad = [diff(hip_x_pos,q1),diff(hip_x_pos,q2),diff(hip_x_pos,q3)];
matlabFunction(hip_x_grad,'file','posCons/hip_x_grad','vars',{[q1,q2,q3]});


%% activation function (sigma)
sigma = 0.8*(0.5*tanh(400*(th-end_y_pos))+0.5);
matlabFunction(sigma,'file','sigma_out','vars',[q1,q2,q3,q4,q5,th]);
dsigma_dq = [diff(sigma,q1);diff(sigma,q2);diff(sigma,q3);diff(sigma,q4);diff(sigma,q5)];
matlabFunction(dsigma_dq,'file','dsigma_dq','vars',[q1,q2,q3,q4,q5,th]);
%q6 is never important since 
% 1. we directly calculate the ankle torque with jacobian
% 2. we have no feet link, the mass and inertia are 0 for that joint

cg = CodeGenerator(robot);
M = cg.geninertia();
G = cg.gengravload();
J = cg.genjacobian();
V = cg.gencoriolis();


matlabFunction(M,'File','dyn/five_M','vars',[q2,q3,q4,q5]);
matlabFunction(G,'File','dyn/five_G','vars',[q1 q2 q3 q4 q5]);
matlabFunction(J,'File','dyn/five_J','vars',[q1 q2 q3 q4 q5]);
matlabFunction(V,'File','dyn/five_V','vars',[q2 q3 q4 q5 qd1 qd2 qd3 qd4 qd5]);