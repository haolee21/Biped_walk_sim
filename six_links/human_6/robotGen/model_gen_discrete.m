% Generate robot with discrete Lagrangian


% percentage is from de Leva (1996), table 4
clear;

addpath ../

numJ = 6;
totH=1.83; %total height % still not add up to 100%, but these are just numbers
l_foot = 0.1476*totH*0.7143; %use de Leva number to get the percentage, 0.7143 is if I exclude toe
l_calf = 0.2514*totH; %from Plagenhoef
l_thigh =0.24334*totH;
l_torso = 0.4223*totH; %head + torso, will have to adjust lc_torso later
l_heel = 0.0425*totH;  %from Rudolfs Drillis (1964) Table.1, G
DH = [0, 0, 0, 0, 0, 0;...
      0, l_calf, 0, 0, 0, 0;...
      0, l_thigh, 0, 0, 0, 0;...
      0,  0, 0, 0, 0, 0;...
      0,l_thigh, 0, 0, 0, 0;...
      0,l_calf,0,0,0,0];
robot=DH2Robot(DH,1);
robot.gravity=[0,9.81,0];


%kg
totM = 75;
m_foot = 0.0137*totM;
m_calf =0.0433*totM;
m_thigh = 0.1416*totM;
m_head = 0.0694*totM;
m_trunk = 0.4346*totM;
m_torso = m_trunk+m_head; %this total mass is not 100% though

model.totM = totM;
model.l_heel = l_heel;
model.l_foot = l_foot;
save('model','model');
%CoM pos
lc_thigh2 = 0.433*l_thigh;
lc_calf2 = 0.433*l_calf;
lc_calf1 = l_calf-lc_calf2;
lc_thigh1 = l_thigh-lc_thigh2;

lc_foot = 0.4415*l_foot; % de Leva 
% include head when calculating, suppose neck is fixed
lc_torso = (0.4486*l_torso*m_torso+(0.1166*totH*(1-0.5976)+l_torso)*m_head)/(m_head+m_trunk); 




I_calf = [0,0,0;     %ROG data from "Comparison of direct collocation optimal control"
          0,0,0;
          0,0,m_calf*l_calf^2*0.302^2];
% I_calf1(3,3) = m_calf*l_calf^2/12;



I_thight = [0,0,0;
            0,0,0;
            0,0,m_thigh*l_thigh^2*0.323^2];
% I_thight(3,3) = m_thight*l_thight^2/12;
I_torso = [0,0,0;
           0,0,0;
           0,0,m_torso*l_torso^2*0.496^2];
% I_torso(3,3) = m_torso*l_torso^2/12;
I_foot = zeros(3);


% we need extra struct to storage link length, since for the feet, we need
% heel and foot long
end_eff = [l_foot,l_heel,l_calf];


robot.links(1).m = m_calf;
robot.links(2).m = m_thigh;
robot.links(3).m = m_torso;
robot.links(4).m = m_thigh;
robot.links(5).m = m_calf;
robot.links(6).m = m_foot;


robot.links(1).r = [lc_calf1,0,0]';
robot.links(2).r = [lc_thigh1,0,0]';
robot.links(3).r = [lc_torso,0,0]';
robot.links(4).r = [lc_thigh2,0,0]';
robot.links(5).r = [lc_calf2,0,0]';
robot.links(6).r = [lc_foot,0,0]';


robot.links(1).I = I_calf;
robot.links(2).I = I_thight;
robot.links(3).I = I_torso;
robot.links(4).I = I_thight;
robot.links(5).I = I_calf;
robot.links(6).I = I_foot;


robot.links(1).Jm=0;
robot.links(2).Jm=0;
robot.links(3).Jm=0;
robot.links(4).Jm=0;
robot.links(5).Jm=0;
robot.links(6).Jm=0;


q_t =sym('q_t',[1,numJ]);
qd_t = sym('qd_t',[1,numJ]);
syms sampT;
assume(sampT,'real');
assume(q_t,'real');
assume(qd_t,'real');

%% generate the joint/CoM pos (base frame) for graphing
% Joint
knee_front = turnRTtoMatrix(robot.A(1,q_t))*[l_calf,0,0,1].';
hip_front = turnRTtoMatrix(robot.A([1,2],q_t))*[l_thigh,0,0,1].';
head = turnRTtoMatrix(robot.A([1,2,3],q_t))*[l_torso,0,0,1].';
knee_back = turnRTtoMatrix(robot.A([1,2,3,4],q_t))*[l_thigh,0,0,1].';
ankle_back =turnRTtoMatrix(robot.A([1,2,3,4,5],q_t))*[l_calf,0,0,1].';
toe_back = turnRTtoMatrix(robot.A([1,2,3,4,5,6],q_t))*[l_foot,l_heel,0,1].';
heel_back = turnRTtoMatrix(robot.A([1,2,3,4,5,6],q_t))*[0,l_heel,0,1].';
% Com
calf_front = turnRTtoMatrix(robot.A(1,q_t))*[lc_calf1,0,0,1].';
thigh_front =turnRTtoMatrix(robot.A([1,2],q_t))*[lc_thigh1,0,0,1].';
torso = turnRTtoMatrix(robot.A([1,2,3],q_t))*[lc_torso,0,0,1].';
thigh_back = turnRTtoMatrix(robot.A([1,2,3,4],q_t))*[lc_thigh2,0,0,1].';
calf_back = turnRTtoMatrix(robot.A([1,2,3,4,5],q_t))*[lc_calf2,0,0,1].';
foot_back = turnRTtoMatrix(robot.A([1,2,3,4,5,6],q_t))*[lc_foot,l_heel,0,1].';

draw_pos = [knee_front,hip_front,head,knee_back,ankle_back,toe_back,heel_back;...
            calf_front,thigh_front,torso,thigh_back,calf_back,foot_back,zeros(4,1)]; %2 points to draw for the feet (toe and heel)
draw_pos = [draw_pos(1:3,:);draw_pos(5:8,:)];
matlabFunction(draw_pos,'file','getRobotPos','vars',q_t);







dyn = dynGen_discrete(robot,end_eff);

dL1 = 0.5*dyn.dLq-dyn.dLdq/sampT;
dL2 = 0.5*dyn.dLq+dyn.dLdq/sampT;


% save the Jacobian
J_hip = dyn.J_hip;
J_heel = dyn.J_heel;
J_toe = dyn.J_toe;
hipPos = dyn.hipPos;
toePos = dyn.toePos;
heelPos =dyn.heelPos;



tasks = cell(1,12);
task_i = 1;
tasks{1,task_i} =@()matlabFunction(J_hip,'file','dyn/J_hip','vars',{q_t}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(J_toe,'file','dyn/J_toe','vars',{q_t}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(J_heel,'file','dyn/J_heel','vars',{q_t}); task_i = task_i+1;

% save the position
tasks{1,task_i} =@()matlabFunction(hipPos(1),'file','dyn/hipPos_x','vars',{q_t}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(toePos(1),'file','dyn/toePos_x','vars',{q_t}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(toePos(2),'file','dyn/toePos_y','vars',{q_t}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(heelPos(1),'file','dyn/heelPos_x','vars',{q_t}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(heelPos(2),'file','dyn/heelPos_y','vars',{q_t}); task_i = task_i+1;
% save the gradient of the positions
dHipPos_x=sym(zeros(numJ,1));
dHipPos_y=sym(zeros(numJ,1));
dToePos_x=sym(zeros(numJ,1));
dToePos_y=sym(zeros(numJ,1));
dHeelPos_x=sym(zeros(numJ,1));
dHeelPos_y=sym(zeros(numJ,1));
for i=1:length(q_t)
    dHipPos_x(i,1)=diff(hipPos(1),q_t(i));
    dHipPos_y(i,1)=diff(hipPos(2),q_t(i));
    dToePos_x(i,1)=diff(toePos(1),q_t(i));
    dToePos_y(i,1)=diff(toePos(2),q_t(i));
    dHeelPos_x(i,1)=diff(heelPos(1),q_t(i));
    dHeelPos_y(i,1)=diff(heelPos(2),q_t(i));
end
tasks{1,task_i} =@()matlabFunction(dHipPos_x,'file','dyn/dHipPos_x','vars',{q_t}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dHipPos_y,'file','dyn/dHipPos_y','vars',{q_t}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dToePos_x,'file','dyn/dToePos_x','vars',{q_t}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dToePos_y,'file','dyn/dToePos_y','vars',{q_t}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dHeelPos_x,'file','dyn/dHeelPos_x','vars',{q_t}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dHeelPos_y,'file','dyn/dHeelPos_y','vars',{q_t}); task_i = task_i+1;



% the return values are the Discrete Lagrangian
% dL1 means dL(x_k,x_k+1)/dx_k
% dL2 means dL(x_k-1,x_k)/dx_k  (always takes derivative at x_k, 1,2 just
% menas the order of x_k)

% in other words, for dL1, it is taking derivative on q1, but dL2 is on q2

tasks{1,task_i} =@()matlabFunction(dL1(1,1),'file','dyn/dL1_1','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL1(2,1),'file','dyn/dL1_2','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL1(3,1),'file','dyn/dL1_3','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL1(4,1),'file','dyn/dL1_4','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL1(5,1),'file','dyn/dL1_5','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL1(6,1),'file','dyn/dL1_6','vars',{q_t,qd_t,sampT}); task_i = task_i+1;


tasks{1,task_i} =@()matlabFunction(dL2(1,1),'file','dyn/dL2_1','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL2(2,1),'file','dyn/dL2_2','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL2(3,1),'file','dyn/dL2_3','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL2(4,1),'file','dyn/dL2_4','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL2(5,1),'file','dyn/dL2_5','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL2(6,1),'file','dyn/dL2_6','vars',{q_t,qd_t,sampT}); task_i = task_i+1;



% now we need to generate the derivative of it

dL1_1 = dL1(1,1);
dL1_2 = dL1(2,1);
dL1_3 = dL1(3,1);
dL1_4 = dL1(4,1);
dL1_5 = dL1(5,1);
dL1_6 = dL1(6,1);

dL2_1 = dL2(1,1);
dL2_2 = dL2(2,1);
dL2_3 = dL2(3,1);
dL2_4 = dL2(4,1);
dL2_5 = dL2(5,1);
dL2_6 = dL2(6,1);


dL11_dq = [diff(dL1_1,q_t(1));diff(dL1_1,q_t(2));diff(dL1_1,q_t(3));diff(dL1_1,q_t(4));diff(dL1_1,q_t(5));diff(dL1_1,q_t(6))];
dL12_dq = [diff(dL1_2,q_t(1));diff(dL1_2,q_t(2));diff(dL1_2,q_t(3));diff(dL1_2,q_t(4));diff(dL1_2,q_t(5));diff(dL1_2,q_t(6))];
dL13_dq = [diff(dL1_3,q_t(1));diff(dL1_3,q_t(2));diff(dL1_3,q_t(3));diff(dL1_3,q_t(4));diff(dL1_3,q_t(5));diff(dL1_3,q_t(6))];
dL14_dq = [diff(dL1_4,q_t(1));diff(dL1_4,q_t(2));diff(dL1_4,q_t(3));diff(dL1_4,q_t(4));diff(dL1_4,q_t(5));diff(dL1_4,q_t(6))];
dL15_dq = [diff(dL1_5,q_t(1));diff(dL1_5,q_t(2));diff(dL1_5,q_t(3));diff(dL1_5,q_t(4));diff(dL1_5,q_t(5));diff(dL1_5,q_t(6))];
dL16_dq = [diff(dL1_6,q_t(1));diff(dL1_6,q_t(2));diff(dL1_6,q_t(3));diff(dL1_6,q_t(4));diff(dL1_6,q_t(5));diff(dL1_6,q_t(6))];

dL11_ddq = [diff(dL1_1,qd_t(1));diff(dL1_1,qd_t(2));diff(dL1_1,qd_t(3));diff(dL1_1,qd_t(4));diff(dL1_1,qd_t(5));diff(dL1_1,qd_t(6))];
dL12_ddq = [diff(dL1_2,qd_t(1));diff(dL1_2,qd_t(2));diff(dL1_2,qd_t(3));diff(dL1_2,qd_t(4));diff(dL1_2,qd_t(5));diff(dL1_2,qd_t(6))];
dL13_ddq = [diff(dL1_3,qd_t(1));diff(dL1_3,qd_t(2));diff(dL1_3,qd_t(3));diff(dL1_3,qd_t(4));diff(dL1_3,qd_t(5));diff(dL1_3,qd_t(6))];
dL14_ddq = [diff(dL1_4,qd_t(1));diff(dL1_4,qd_t(2));diff(dL1_4,qd_t(3));diff(dL1_4,qd_t(4));diff(dL1_4,qd_t(5));diff(dL1_4,qd_t(6))];
dL15_ddq = [diff(dL1_5,qd_t(1));diff(dL1_5,qd_t(2));diff(dL1_5,qd_t(3));diff(dL1_5,qd_t(4));diff(dL1_5,qd_t(5));diff(dL1_5,qd_t(6))];
dL16_ddq = [diff(dL1_6,qd_t(1));diff(dL1_6,qd_t(2));diff(dL1_6,qd_t(3));diff(dL1_6,qd_t(4));diff(dL1_6,qd_t(5));diff(dL1_6,qd_t(6))];

dL11_dq1 = dL11_dq*0.5-dL11_ddq/sampT;
dL12_dq1 = dL12_dq*0.5-dL12_ddq/sampT;
dL13_dq1 = dL13_dq*0.5-dL13_ddq/sampT;
dL14_dq1 = dL14_dq*0.5-dL14_ddq/sampT;
dL15_dq1 = dL15_dq*0.5-dL15_ddq/sampT;
dL16_dq1 = dL16_dq*0.5-dL16_ddq/sampT;

dL11_dq2 = dL11_dq*0.5+dL11_ddq/sampT;
dL12_dq2 = dL12_dq*0.5+dL12_ddq/sampT;
dL13_dq2 = dL13_dq*0.5+dL13_ddq/sampT;
dL14_dq2 = dL14_dq*0.5+dL14_ddq/sampT;
dL15_dq2 = dL15_dq*0.5+dL15_ddq/sampT;
dL16_dq2 = dL16_dq*0.5+dL16_ddq/sampT;



dL21_dq = [diff(dL2_1,q_t(1));diff(dL2_1,q_t(2));diff(dL2_1,q_t(3));diff(dL2_1,q_t(4));diff(dL2_1,q_t(5));diff(dL2_1,q_t(6))];
dL22_dq = [diff(dL2_2,q_t(1));diff(dL2_2,q_t(2));diff(dL2_2,q_t(3));diff(dL2_2,q_t(4));diff(dL2_2,q_t(5));diff(dL2_2,q_t(6))];
dL23_dq = [diff(dL2_3,q_t(1));diff(dL2_3,q_t(2));diff(dL2_3,q_t(3));diff(dL2_3,q_t(4));diff(dL2_3,q_t(5));diff(dL2_3,q_t(6))];
dL24_dq = [diff(dL2_4,q_t(1));diff(dL2_4,q_t(2));diff(dL2_4,q_t(3));diff(dL2_4,q_t(4));diff(dL2_4,q_t(5));diff(dL2_4,q_t(6))];
dL25_dq = [diff(dL2_5,q_t(1));diff(dL2_5,q_t(2));diff(dL2_5,q_t(3));diff(dL2_5,q_t(4));diff(dL2_5,q_t(5));diff(dL2_5,q_t(6))];
dL26_dq = [diff(dL2_6,q_t(1));diff(dL2_6,q_t(2));diff(dL2_6,q_t(3));diff(dL2_6,q_t(4));diff(dL2_6,q_t(5));diff(dL2_6,q_t(6))];

dL21_ddq = [diff(dL2_1,qd_t(1));diff(dL2_1,qd_t(2));diff(dL2_1,qd_t(3));diff(dL2_1,qd_t(4));diff(dL2_1,qd_t(5));diff(dL2_1,qd_t(6))];
dL22_ddq = [diff(dL2_2,qd_t(1));diff(dL2_2,qd_t(2));diff(dL2_2,qd_t(3));diff(dL2_2,qd_t(4));diff(dL2_2,qd_t(5));diff(dL2_2,qd_t(6))];
dL23_ddq = [diff(dL2_3,qd_t(1));diff(dL2_3,qd_t(2));diff(dL2_3,qd_t(3));diff(dL2_3,qd_t(4));diff(dL2_3,qd_t(5));diff(dL2_3,qd_t(6))];
dL24_ddq = [diff(dL2_4,qd_t(1));diff(dL2_4,qd_t(2));diff(dL2_4,qd_t(3));diff(dL2_4,qd_t(4));diff(dL2_4,qd_t(5));diff(dL2_4,qd_t(6))];
dL25_ddq = [diff(dL2_5,qd_t(1));diff(dL2_5,qd_t(2));diff(dL2_5,qd_t(3));diff(dL2_5,qd_t(4));diff(dL2_5,qd_t(5));diff(dL2_5,qd_t(6))];
dL26_ddq = [diff(dL2_6,qd_t(1));diff(dL2_6,qd_t(2));diff(dL2_6,qd_t(3));diff(dL2_6,qd_t(4));diff(dL2_6,qd_t(5));diff(dL2_6,qd_t(6))];

dL21_dq1 = dL21_dq*0.5-dL21_ddq/sampT;
dL22_dq1 = dL22_dq*0.5-dL22_ddq/sampT;
dL23_dq1 = dL23_dq*0.5-dL23_ddq/sampT;
dL24_dq1 = dL24_dq*0.5-dL24_ddq/sampT;
dL25_dq1 = dL25_dq*0.5-dL25_ddq/sampT;
dL26_dq1 = dL26_dq*0.5-dL26_ddq/sampT;

dL21_dq2 = dL21_dq*0.5+dL21_ddq/sampT;
dL22_dq2 = dL22_dq*0.5+dL22_ddq/sampT;
dL23_dq2 = dL23_dq*0.5+dL23_ddq/sampT;
dL24_dq2 = dL24_dq*0.5+dL24_ddq/sampT;
dL25_dq2 = dL25_dq*0.5+dL25_ddq/sampT;
dL26_dq2 = dL26_dq*0.5+dL26_ddq/sampT;


tasks{1,task_i} =@()matlabFunction(dL11_dq1,'file','grad/dL11_dq1','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL12_dq1,'file','grad/dL12_dq1','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL13_dq1,'file','grad/dL13_dq1','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL14_dq1,'file','grad/dL14_dq1','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL15_dq1,'file','grad/dL15_dq1','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL16_dq1,'file','grad/dL16_dq1','vars',{q_t,qd_t,sampT}); task_i = task_i+1;

tasks{1,task_i} =@()matlabFunction(dL11_dq2,'file','grad/dL11_dq2','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL12_dq2,'file','grad/dL12_dq2','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL13_dq2,'file','grad/dL13_dq2','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL14_dq2,'file','grad/dL14_dq2','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL15_dq2,'file','grad/dL15_dq2','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL16_dq2,'file','grad/dL16_dq2','vars',{q_t,qd_t,sampT}); task_i = task_i+1;

tasks{1,task_i} =@()matlabFunction(dL21_dq1,'file','grad/dL21_dq1','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL22_dq1,'file','grad/dL22_dq1','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL23_dq1,'file','grad/dL23_dq1','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL24_dq1,'file','grad/dL24_dq1','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL25_dq1,'file','grad/dL25_dq1','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL26_dq1,'file','grad/dL26_dq1','vars',{q_t,qd_t,sampT}); task_i = task_i+1;

tasks{1,task_i} =@()matlabFunction(dL21_dq2,'file','grad/dL21_dq2','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL22_dq2,'file','grad/dL22_dq2','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL23_dq2,'file','grad/dL23_dq2','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL24_dq2,'file','grad/dL24_dq2','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL25_dq2,'file','grad/dL25_dq2','vars',{q_t,qd_t,sampT}); task_i = task_i+1;
tasks{1,task_i} =@()matlabFunction(dL26_dq2,'file','grad/dL26_dq2','vars',{q_t,qd_t,sampT}); task_i = task_i+1;


% calculate for external force
% since this term is actually complicated (s,f,J mixed together), yet if we
% expand it, it is not that difficult for the computer, for here we will
% expand it
syms Fx Fy s real


Tau_toe = J_toe(1:2,:).'*[Fx;Fy];
Tau_heel = J_heel(1:2,:).'*[Fx;Fy];

dTau_toe = [diff(Tau_toe.',q_t(1));
          diff(Tau_toe.',q_t(2));
          diff(Tau_toe.',q_t(3));
          diff(Tau_toe.',q_t(4));
          diff(Tau_toe.',q_t(5));
          diff(Tau_toe.',q_t(6));
          zeros(6,6);
          diff(Tau_toe.',Fx);
          diff(Tau_toe.',Fy);
          zeros(4,6)];
dTau_heel = [diff(Tau_heel.',q_t(1));
           diff(Tau_heel.',q_t(2));
           diff(Tau_heel.',q_t(3));
           diff(Tau_heel.',q_t(4));
           diff(Tau_heel.',q_t(5));
           diff(Tau_heel.',q_t(6));
           zeros(8,6);
           diff(Tau_heel.',Fx);
           diff(Tau_heel.',Fy);
           zeros(2,6)];

       
tasks{1,task_i} =@()matlabFunction(Tau_toe,'file','grf/Tau_toe','vars',{q_t,[Fx,Fy]}); task_i = task_i+1;           
tasks{1,task_i} =@()matlabFunction(Tau_heel,'file','grf/Tau_heel','vars',{q_t,[Fx,Fy]}); task_i = task_i+1;  
tasks{1,task_i} =@()matlabFunction(dTau_toe,'file','grf/dTau_toe','vars',{q_t,[Fx,Fy]}); task_i = task_i+1;           
tasks{1,task_i} =@()matlabFunction(dTau_heel,'file','grf/dTau_heel','vars',{q_t,[Fx,Fy]}); task_i = task_i+1;         





% conditions for ground reaction force
% to make this symbolic calculation simplier, we use dq, although it is
% actually (q2-q1)/sampT


syms k cmax dmax us H real;

toe_vel = J_toe(1:2,:)*qd_t.';
heel_vel = J_heel(1:2,:)*qd_t.';

toe_vel_x = toe_vel(1);
toe_vel_y = toe_vel(2);
heel_vel_x =heel_vel(1);
heel_vel_y = heel_vel(2);

toe_pos = turnRTtoMatrix(robot.A([1,2,3,4,5,6],q_t))*[l_foot,l_heel,0,1].';
toe_pos_x = toe_pos(1);
toe_pos_y = toe_pos(2);
heel_pos = turnRTtoMatrix(robot.A([1,2,3,4,5,6],q_t))*[0,l_heel,0,1].'; 
heel_pos_x = heel_pos(1);
heel_pos_y = heel_pos(2);


% first constraint
% Fy is equal to the spring-damper function when slack variables s_toe,
% s_heel is not zero
ks =2;


Grf_toe_c1 = Fy-s*(k*(H-toe_pos_y)^ks -(cmax*(0.5*tanh(2*(H-toe_pos_y)/dmax)+0.5))*toe_vel_y);
Grf_heel_c1 = Fy-s*(k*(H-heel_pos_y)^ks-(cmax*(0.5*tanh(2*(H-heel_pos_y)/dmax)+0.5))*heel_vel_y);

tasks{1,task_i}=@()matlabFunction(Grf_toe_c1,'file','grf/discrete/Grf_toe_c1','vars',{q_t,qd_t,Fy,s,H,k,cmax,dmax}); task_i=task_i+1;
tasks{1,task_i}=@()matlabFunction(Grf_heel_c1,'file','grf/discrete/Grf_heel_c1','vars',{q_t,qd_t,Fy,s,H,k,cmax,dmax}); task_i=task_i+1;

dGrf_toe_c1q = [diff(Grf_toe_c1,q_t(1));
               diff(Grf_toe_c1,q_t(2));
               diff(Grf_toe_c1,q_t(3));
               diff(Grf_toe_c1,q_t(4));
               diff(Grf_toe_c1,q_t(5));
               diff(Grf_toe_c1,q_t(6))];
dGrf_toe_c1qd=[diff(Grf_toe_c1,qd_t(1));
              diff(Grf_toe_c1,qd_t(2));
              diff(Grf_toe_c1,qd_t(3));
              diff(Grf_toe_c1,qd_t(4));
              diff(Grf_toe_c1,qd_t(5));
              diff(Grf_toe_c1,qd_t(6))];
          
dGrf_toe_c1_q1 = 0.5*dGrf_toe_c1q-dGrf_toe_c1qd/sampT;
dGrf_toe_c1_q2 = 0.5*dGrf_toe_c1q+dGrf_toe_c1qd/sampT;   
tasks{1,task_i}=@()matlabFunction(dGrf_toe_c1_q1,'file','grf/discrete/dGrf_toe_c1_q1','vars',{q_t,qd_t,Fy,s,sampT,H,k,cmax,dmax}); task_i=task_i+1;
tasks{1,task_i}=@()matlabFunction(dGrf_toe_c1_q2,'file','grf/discrete/dGrf_toe_c1_q2','vars',{q_t,qd_t,Fy,s,sampT,H,k,cmax,dmax}); task_i=task_i+1;






dGrf_heel_c1q = [diff(Grf_heel_c1,q_t(1));
                diff(Grf_heel_c1,q_t(2));
                diff(Grf_heel_c1,q_t(3));
                diff(Grf_heel_c1,q_t(4));
                diff(Grf_heel_c1,q_t(5));
                diff(Grf_heel_c1,q_t(6))];

dGrf_heel_c1qd = [diff(Grf_heel_c1,qd_t(1));
                 diff(Grf_heel_c1,qd_t(2));
                 diff(Grf_heel_c1,qd_t(3));
                 diff(Grf_heel_c1,qd_t(4));
                 diff(Grf_heel_c1,qd_t(5));
                 diff(Grf_heel_c1,qd_t(6))];
dGrf_heel_c1_q1 = 0.5*dGrf_heel_c1q-dGrf_heel_c1qd/sampT;
dGrf_heel_c1_q2 = 0.5*dGrf_heel_c1q+dGrf_heel_c1qd/sampT;

tasks{1,task_i}=@()matlabFunction(dGrf_heel_c1_q1,'file','grf/discrete/dGrf_heel_c1_q1','vars',{q_t,qd_t,Fy,s,sampT,H,k,cmax,dmax}); task_i=task_i+1;
tasks{1,task_i}=@()matlabFunction(dGrf_heel_c1_q2,'file','grf/discrete/dGrf_heel_c1_q2','vars',{q_t,qd_t,Fy,s,sampT,H,k,cmax,dmax}); task_i=task_i+1;

% generate gradient for F and s, yet we don't need to generate for
% F1,F2,s1,s2 seperately since it is always 1/2, we can multiply it later

%no need to generate for F since it is just 1

dGrf_toe_c1s = diff(Grf_toe_c1,s);
tasks{1,task_i}=@()matlabFunction(dGrf_toe_c1s,'file','grf/discrete/dGrf_toe_c1_s','vars',{q_t,qd_t,s,H,k,cmax,dmax}); task_i=task_i+1;

dGrf_heel_c1s = diff(Grf_heel_c1,s);
tasks{1,task_i}=@()matlabFunction(dGrf_heel_c1s,'file','grf/discrete/dGrf_heel_c1_s','vars',{q_t,qd_t,s,H,k,cmax,dmax}); task_i=task_i+1;

% constraint 2: Fx^2<=us^2*Fy

Grf_c2 = Fx^2-us^2*Fy^2;
dGrf_c2F = [diff(Grf_c2,Fx);
           diff(Grf_c2,Fy)];

tasks{1,task_i}=@()matlabFunction(Grf_c2,'file','grf/discrete/Grf_c2','vars',{[Fx,Fy],us}); task_i=task_i+1;
tasks{1,task_i}=@()matlabFunction(dGrf_c2F,'file','grf/discrete/dGrf_c2_F','vars',{[Fx,Fy],us}); task_i=task_i+1;

% constraint 3: s*(ypos-H)<=0

Grf_toe_c3 = s*(toe_pos_y-H);
Grf_heel_c3 = s*(heel_pos_y-H);

tasks{1,task_i}=@()matlabFunction(Grf_toe_c3,'file','grf/discrete/Grf_toe_c3','vars',{q_t,qd_t,s,H}); task_i=task_i+1;
tasks{1,task_i}=@()matlabFunction(Grf_heel_c3,'file','grf/discrete/Grf_heel_c3','vars',{q_t,qd_t,s,H}); task_i=task_i+1;

dGrf_toe_c3q = [diff(Grf_toe_c3,q_t(1));
              diff(Grf_toe_c3,q_t(2));
              diff(Grf_toe_c3,q_t(3));
              diff(Grf_toe_c3,q_t(4));
              diff(Grf_toe_c3,q_t(5));
              diff(Grf_toe_c3,q_t(6))];
          
dGrf_toe_c3qd = [diff(Grf_toe_c3,qd_t(1));
               diff(Grf_toe_c3,qd_t(2));
               diff(Grf_toe_c3,qd_t(3));
               diff(Grf_toe_c3,qd_t(4));
               diff(Grf_toe_c3,qd_t(5));
               diff(Grf_toe_c3,qd_t(6))];
           
dGrf_toe_c3_q1 = 0.5*dGrf_toe_c3q-dGrf_toe_c3qd/sampT;
dGrf_toe_c3_q2 = 0.5*dGrf_toe_c3q+dGrf_toe_c3qd/sampT;
           

dGrf_heel_c3q = [diff(Grf_heel_c3,q_t(1));
              diff(Grf_heel_c3,q_t(2));
              diff(Grf_heel_c3,q_t(3));
              diff(Grf_heel_c3,q_t(4));
              diff(Grf_heel_c3,q_t(5));
              diff(Grf_heel_c3,q_t(6))];
          
dGrf_heel_c3qd = [diff(Grf_heel_c3,qd_t(1));
               diff(Grf_heel_c3,qd_t(2));
               diff(Grf_heel_c3,qd_t(3));
               diff(Grf_heel_c3,qd_t(4));
               diff(Grf_heel_c3,qd_t(5));
               diff(Grf_heel_c3,qd_t(6))];
           
dGrf_heel_c3_q1 = 0.5*dGrf_heel_c3q-dGrf_heel_c3qd/sampT;
dGrf_heel_c3_q2 = 0.5*dGrf_heel_c3q+dGrf_heel_c3qd/sampT;
              
tasks{1,task_i}=@()matlabFunction(dGrf_toe_c3_q1,'file','grf/discrete/dGrf_toe_c3_q1','vars',{q_t,qd_t,s}); task_i=task_i+1;
tasks{1,task_i}=@()matlabFunction(dGrf_toe_c3_q2,'file','grf/discrete/dGrf_toe_c3_q2','vars',{q_t,qd_t,s}); task_i=task_i+1;              

tasks{1,task_i}=@()matlabFunction(dGrf_heel_c3_q1,'file','grf/discrete/dGrf_heel_c3_q1','vars',{q_t,qd_t,s}); task_i=task_i+1;
tasks{1,task_i}=@()matlabFunction(dGrf_heel_c3_q2,'file','grf/discrete/dGrf_heel_c3_q2','vars',{q_t,qd_t,s}); task_i=task_i+1; 

dGrf_toe_c3_s = diff(Grf_toe_c3,s);
dGrf_heel_c3_s = diff(Grf_heel_c3,s);
tasks{1,task_i}=@()matlabFunction(dGrf_toe_c3_s,'file','grf/discrete/dGrf_toe_c3_s','vars',{q_t,qd_t,H}); task_i=task_i+1;
tasks{1,task_i}=@()matlabFunction(dGrf_heel_c3_s,'file','grf/discrete/dGrf_heel_c3_s','vars',{q_t,qd_t,H}); task_i=task_i+1;


% constraint 4
% xvel*Fx <=0  (Fx is always acting on the opposite direction of xvel)
Grf_toe_c4 = toe_vel_x*Fx;
Grf_heel_c4 = heel_vel_x*Fx;

tasks{1,task_i}=@()matlabFunction(Grf_toe_c4,'file','grf/discrete/Grf_toe_c4','vars',{q_t,qd_t,Fx}); task_i=task_i+1;
tasks{1,task_i}=@()matlabFunction(Grf_heel_c4,'file','grf/discrete/Grf_heel_c4','vars',{q_t,qd_t,Fx}); task_i=task_i+1;

dGrf_toe_c4q = [diff(Grf_toe_c4,q_t(1));
                diff(Grf_toe_c4,q_t(2));
                diff(Grf_toe_c4,q_t(3));
                diff(Grf_toe_c4,q_t(4));
                diff(Grf_toe_c4,q_t(5));
                diff(Grf_toe_c4,q_t(6))];

dGrf_toe_c4qd=[diff(Grf_toe_c4,qd_t(1));
               diff(Grf_toe_c4,qd_t(2));
               diff(Grf_toe_c4,qd_t(3));
               diff(Grf_toe_c4,qd_t(4));
               diff(Grf_toe_c4,qd_t(5));
               diff(Grf_toe_c4,qd_t(6))];
dGrf_toe_c4_q1 = 0.5*dGrf_toe_c4q-dGrf_toe_c4qd/sampT;
dGrf_toe_c4_q2 = 0.5*dGrf_toe_c4q+dGrf_toe_c4qd/sampT;

dGrf_heel_c4q = [diff(Grf_heel_c4,q_t(1));
                diff(Grf_heel_c4,q_t(2));
                diff(Grf_heel_c4,q_t(3));
                diff(Grf_heel_c4,q_t(4));
                diff(Grf_heel_c4,q_t(5));
                diff(Grf_heel_c4,q_t(6))];

dGrf_heel_c4qd=[diff(Grf_heel_c4,qd_t(1));
               diff(Grf_heel_c4,qd_t(2));
               diff(Grf_heel_c4,qd_t(3));
               diff(Grf_heel_c4,qd_t(4));
               diff(Grf_heel_c4,qd_t(5));
               diff(Grf_heel_c4,qd_t(6))];
dGrf_heel_c4_q1 = 0.5*dGrf_heel_c4q-dGrf_heel_c4qd/sampT;
dGrf_heel_c4_q2 = 0.5*dGrf_heel_c4q+dGrf_heel_c4qd/sampT;



tasks{1,task_i}=@()matlabFunction(dGrf_toe_c4_q1,'file','grf/discrete/dGrf_toe_c4_q1','vars',{q_t,qd_t,Fx,sampT}); task_i=task_i+1;
tasks{1,task_i}=@()matlabFunction(dGrf_toe_c4_q2,'file','grf/discrete/dGrf_toe_c4_q2','vars',{q_t,qd_t,Fx,sampT}); task_i=task_i+1;

tasks{1,task_i}=@()matlabFunction(dGrf_heel_c4_q1,'file','grf/discrete/dGrf_heel_c4_q1','vars',{q_t,qd_t,Fx,sampT}); task_i=task_i+1;
tasks{1,task_i}=@()matlabFunction(dGrf_heel_c4_q2,'file','grf/discrete/dGrf_heel_c4_q2','vars',{q_t,qd_t,Fx,sampT}); task_i=task_i+1;

dGrf_toe_c4_F = [diff(Grf_toe_c4,Fx);
                 diff(Grf_toe_c4,Fy)];
dGrf_heel_c4_F = [diff(Grf_heel_c4,Fx);
                  diff(Grf_heel_c4,Fy)];
              
tasks{1,task_i}=@()matlabFunction(dGrf_toe_c4_F,'file','grf/discrete/dGrf_toe_c4_F','vars',{q_t,qd_t}); task_i=task_i+1;
tasks{1,task_i}=@()matlabFunction(dGrf_heel_c4_F,'file','grf/discrete/dGrf_heel_c4_F','vars',{q_t,qd_t}); task_i=task_i+1;

% constraint 5 
% s*x_vel^2 = 0, no slip condition

Grf_toe_c5 = s*toe_vel_x^2;
Grf_heel_c5= s*heel_vel_x^2;
tasks{1,task_i}=@()matlabFunction(Grf_toe_c5,'file','grf/discrete/Grf_toe_c5','vars',{q_t,qd_t,s,sampT}); task_i=task_i+1;
tasks{1,task_i}=@()matlabFunction(Grf_heel_c5,'file','grf/discrete/Grf_heel_c5','vars',{q_t,qd_t,s,sampT}); task_i=task_i+1;

dGrf_toe_c5q =[diff(Grf_toe_c5,q_t(1));
               diff(Grf_toe_c5,q_t(2));
               diff(Grf_toe_c5,q_t(3));
               diff(Grf_toe_c5,q_t(4));
               diff(Grf_toe_c5,q_t(5));
               diff(Grf_toe_c5,q_t(6))];
dGrf_toe_c5dq =[diff(Grf_toe_c5,qd_t(1));
                diff(Grf_toe_c5,qd_t(2));
                diff(Grf_toe_c5,qd_t(3));
                diff(Grf_toe_c5,qd_t(4));
                diff(Grf_toe_c5,qd_t(5));
                diff(Grf_toe_c5,qd_t(6))];
            
dGrf_toe_c5_q1 = 0.5*dGrf_toe_c5q-dGrf_toe_c5dq/sampT;
dGrf_toe_c5_q2 = 0.5*dGrf_toe_c5q+dGrf_toe_c5dq/sampT;
tasks{1,task_i}=@()matlabFunction(dGrf_toe_c5_q1,'file','grf/discrete/dGrf_toe_c5_q1','vars',{q_t,qd_t,s,sampT}); task_i=task_i+1;
tasks{1,task_i}=@()matlabFunction(dGrf_toe_c5_q2,'file','grf/discrete/dGrf_toe_c5_q2','vars',{q_t,qd_t,s,sampT}); task_i=task_i+1;



dGrf_heel_c5q=[diff(Grf_heel_c5,q_t(1));
               diff(Grf_heel_c5,q_t(2));
               diff(Grf_heel_c5,q_t(3));
               diff(Grf_heel_c5,q_t(4));
               diff(Grf_heel_c5,q_t(5));
               diff(Grf_heel_c5,q_t(6))];
           
dGrf_heel_c5dq=[diff(Grf_heel_c5,qd_t(1));
               diff(Grf_heel_c5,qd_t(2));
               diff(Grf_heel_c5,qd_t(3));
               diff(Grf_heel_c5,qd_t(4));
               diff(Grf_heel_c5,qd_t(5));
               diff(Grf_heel_c5,qd_t(6))];
           
dGrf_heel_c5_q1 = 0.5*dGrf_heel_c5q-dGrf_heel_c5dq/sampT;
dGrf_heel_c5_q2 = 0.5*dGrf_heel_c5q+dGrf_heel_c5dq/sampT;
tasks{1,task_i}=@()matlabFunction(dGrf_heel_c5_q1,'file','grf/discrete/dGrf_heel_c5_q1','vars',{q_t,qd_t,s,sampT}); task_i=task_i+1;
tasks{1,task_i}=@()matlabFunction(dGrf_heel_c5_q2,'file','grf/discrete/dGrf_heel_c5_q2','vars',{q_t,qd_t,s,sampT}); task_i=task_i+1;
           
dGrf_toe_c5_s = diff(Grf_toe_c5,s);
dGrf_heel_c5_s = diff(Grf_heel_c5,s);
tasks{1,task_i}=@()matlabFunction(dGrf_toe_c5_s,'file','grf/discrete/dGrf_toe_c5_s','vars',{q_t,qd_t}); task_i=task_i+1;
tasks{1,task_i}=@()matlabFunction(dGrf_heel_c5_s,'file','grf/discrete/dGrf_heel_c5_s','vars',{q_t,qd_t}); task_i=task_i+1;


%generate hip velocity constraint
hip_vel_x = J_hip*qd_t.';
dHip_vel_xq = [diff(hip_vel_x,q_t(1));
               diff(hip_vel_x,q_t(2));
               diff(hip_vel_x,q_t(3));
               diff(hip_vel_x,q_t(4));
               diff(hip_vel_x,q_t(5));
               diff(hip_vel_x,q_t(6))];
dHip_vel_xdq =[diff(hip_vel_x,qd_t(1));
               diff(hip_vel_x,qd_t(2));
               diff(hip_vel_x,qd_t(3));
               diff(hip_vel_x,qd_t(4));
               diff(hip_vel_x,qd_t(5));
               diff(hip_vel_x,qd_t(6))];
dHip_vel_q1 =0.5*dHip_vel_xq-dHip_vel_xdq/sampT;
dHip_vel_q2 =0.5*dHip_vel_xq+dHip_vel_xdq/sampT;   

tasks{1,task_i}=@()matlabFunction(hip_vel_x ,'file','grad/hip_vel_x','vars',{q_t,qd_t,sampT}); task_i=task_i+1;
tasks{1,task_i}=@()matlabFunction(dHip_vel_q1,'file','grad/dHip_vel_q1','vars',{q_t,qd_t,sampT}); task_i=task_i+1;
tasks{1,task_i}=@()matlabFunction(dHip_vel_q2,'file','grad/dHip_vel_q2','vars',{q_t,qd_t,sampT}); task_i=task_i+1;
parfor i=1:length(tasks)
    tasks{1,i}();
end