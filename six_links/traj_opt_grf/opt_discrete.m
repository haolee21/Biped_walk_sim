%% Calculate the optimized trajectories for 6 link biped model with GRF
% the dynamics constraints are discrete Lagrangian
clear;
modelName='human_7';

%add share functions
addpath dyn/
addpath obj/
addpath gaitCon/
addpath plotRobot/
addpath forward_dyn

addpath (['../',modelName,'/robotGen/'])
addpath (['../',modelName,'/robotGen/grad/'])
% addpath (['../',modelName,'/robotGen/posCons/'])
addpath (['../',modelName,'/robotGen/dyn/'])
% addpath (['../',modelName,'/robotGen/obj/'])
addpath (['../',modelName,'/robotGen/grf/'])
addpath (['../',modelName,'/robotGen/grf/discrete'])

%% simulate parameters
model = load(['../',modelName,'/robotGen/model']).model;
param.model = model;

param.numJ=6;
param.toe_th =-model.h_heel+0.01;
param.head_h = 1.1 ; %the head should be at least 1.6m

param.gaitT = 0.5;
param.sampT = 0.01;
%param.init_y = -model.l_heel+0.01; %initial feet height
param.heel_h = model.h_heel; %this is fix in the model parameter
param.foot_l = model.l_foot;
param.dmax =1e-2;
param.cmax_toe=1000;
param.cmax_heel=1000;
param.k=model.totM*9.81/param.dmax^2/10;      %2e6;
% param.k=2e6;

% param.k=0;
% param.cmax=0;

param.us=0.8;
param.ud=0.6;
% param.init_y=-model.h_heel;

param.joint_fri = 0.003;

% param.hip_feet_ratio = 4/0.7143;
param.hip_feet_ratio = 2.5/0.7143;
param.hipLen=param.hip_feet_ratio*model.l_foot;
param.toeLen=param.hip_feet_ratio*model.l_foot;

% param.hip_vel = -param.hipLen/param.gaitT*0.001;
% param.init_y = 0;

param.gndclear = -model.h_heel+0.015;
% param.jointW = [100,0.01,1,1,0.01,0.1];
param.jointW = [1,1,1,1,1,1];

param.knee_stiff =76.325; % I use max moment (MVC/angle), since the stiffness of the paper is too high


param.ank_stiff=408.65;
% param.knee_stiff=0;
% param.ank_stiff=0;

time = 0:param.sampT:param.gaitT;



param.max_Fy = model.totM*9.81*3;
param.max_Fx = model.totM*9.81*3;
param.min_Fx = model.totM*9.81*3;
% param.min_Fy = Inf;

param.max_hip_tau =150;
param.min_hip_tau = 150;
param.max_kne_tau = 150;
param.min_kne_tau =150;
param.max_ank_tau =150;
param.min_ank_tau= 50;
% 
% param.max_hip_tau =50;
% param.min_hip_tau = 50;
% param.max_kne_tau = 50;
% param.min_kne_tau =50;
% param.max_ank_tau =50;
% param.min_ank_tau= 50;
% weight for obj fun
param.loss_w.eng=1;
param.loss_w.dyn=1000;
param.loss_w.u_diff = 1;
param.loss_w.f_diff=0.1;
% param.loss_w.hipLen=1e13;
% param.loss_w.grf=1e3;
% param.loss_w.yInit=1e13;
% param.loss_w.hipVel=1e13;






%% Initial conditions
q1 =75;
q2 = -1;
q3 =90-q1-q2;
q4 = -80-q1;
q5 = 3;
q6 = -180-q1-q2-q3-q4-q5;%+atan2d(param.heel_h,0.26);%0.26 is feet length
qStart=[q1/180*pi,q2/180*pi,q3/180*pi,q4/180*pi,q5/180*pi,q6/180*pi];

q1_mid_1 = 100;
q2_mid_1 = -15;
q3_mid_1 = 90-q1_mid_1-q2_mid_1;
q4_mid_1 = -220;
q5_mid_1 = 90;
q6_mid_1 = -90;
qMid_1 = [q1_mid_1,q2_mid_1,q3_mid_1,q4_mid_1,q5_mid_1,q6_mid_1]*pi/180;

q1_mid_2 = 100;
q2_mid_2 = -5;
q3_mid_2 = 90-q1_mid_2-q2_mid_2;
q4_mid_2 = -230;
q5_mid_2 = 45;
q6_mid_2 = -90;
qMid_2 = [q1_mid_2,q2_mid_2,q3_mid_2,q4_mid_2,q5_mid_2,q6_mid_2]*pi/180;

q1_end = 180+q1+q2+q3+q4+q5;
q2_end = -q5;
q3_end = -180-q4;
q4_end = -q1_end-90;
q5_end = -q2;
q6_end = -180-q1_end-q2_end-q3_end-q4_end-q5_end;
qEnd = [q1_end,q2_end,q3_end,q4_end,q5_end,q6_end]*pi/180;

num_1 = floor(length(time)/4);
num_2 = floor((length(time)-num_1)/2);
num_3 = length(time)-num_1-num_2;
% 
q = [linspace(qStart(1),qMid_1(1),num_1),linspace(qMid_1(1),qMid_2(1),num_2),linspace(qMid_2(1),qEnd(1),num_3);
     linspace(qStart(2),qMid_1(2),num_1),linspace(qMid_1(2),qMid_2(2),num_2),linspace(qMid_2(2),qEnd(2),num_3);
     linspace(qStart(3),qMid_1(3),num_1),linspace(qMid_1(3),qMid_2(3),num_2),linspace(qMid_2(3),qEnd(3),num_3);
     linspace(qStart(4),qMid_1(4),num_1),linspace(qMid_1(4),qMid_2(4),num_2),linspace(qMid_2(4),qEnd(4),num_3);
     linspace(qStart(5),qMid_1(5),num_1),linspace(qMid_1(5),qMid_2(5),num_2),linspace(qMid_2(5),qEnd(5),num_3);
     linspace(qStart(6),qMid_1(6),num_1),linspace(qMid_1(6),qMid_2(6),num_2),linspace(qMid_2(6),qEnd(6),num_3)];

% q = [linspace(qStart(1),qEnd(1),num_1+num_2+num_3);
%      linspace(qStart(2),qEnd(2),num_1+num_2+num_3);
%      linspace(qStart(3),qEnd(3),num_1+num_2+num_3);
%      linspace(qStart(4),qEnd(4),num_1+num_2+num_3);
%      linspace(qStart(5),qEnd(5),num_1+num_2+num_3);
%      linspace(qStart(6),qEnd(6),num_1+num_2+num_3)];
% base on the trajectory, we can generate the joint torque, external force, and slack variable

u = 0.1*param.max_hip_tau*rand(size(q,1),size(q,2));


Fx_toe = zeros(1,length(q));
Fx_heel = zeros(1,length(q));


x0 = [q;u;Fx_toe;Fx_heel];
% x0=[q;zeros(param.numJ+4+2,size(q,2))];
% x0=load('x0_val').x;
x0 = x0(:,1:end-1);
% % if the original sampT is different from the x0_data
% if(size(x0,2)~=param.gaitT/param.sampT)
%     t_ori = linspace(0,100,size(x0,2));
%     t_samp = linspace(0,100,param.gaitT/param.sampT);
%     x0 = interp1(t_ori,x0.',t_samp).';
% end
prob.x0 = x0;

%% upper and lower limit of the variables, the algorithm will only search solutions in these regions
prob.ub = [179/180*pi*ones(1,size(x0,2));
           -0.001*ones(1,size(x0,2))/180*pi;
           75/180*pi*ones(1,size(x0,2));
           -100/180*pi*ones(1,size(x0,2));
           179/180*pi*ones(1,size(x0,2));
           -60/180*pi*ones(1,size(x0,2));
           param.min_ank_tau*ones(1,size(x0,2));
           param.max_kne_tau*ones(1,size(x0,2));
           param.max_hip_tau*ones(1,size(x0,2));
           param.min_hip_tau*ones(1,size(x0,2));
           param.min_kne_tau*ones(1,size(x0,2));
           param.max_ank_tau*ones(1,size(x0,2));
           param.max_Fx*ones(1,size(x0,2));
           param.max_Fx*ones(1,size(x0,2))];
prob.lb = [ones(1,size(x0,2))/180*pi;
           -179/180*pi*ones(1,size(x0,2));
           -75/180*pi*ones(1,size(x0,2));
           -260/180*pi*ones(1,size(x0,2));
            0.001*ones(1,size(x0,2))/180*pi;
           -120/180*pi*ones(1,size(x0,2));
           -param.max_ank_tau*ones(1,size(x0,2));
           -param.min_kne_tau*ones(1,size(x0,2));
           -param.min_hip_tau*ones(1,size(x0,2));
           -param.max_hip_tau*ones(1,size(x0,2));
           -param.max_kne_tau*ones(1,size(x0,2));
           -param.min_ank_tau*ones(1,size(x0,2));
           -param.max_Fx*ones(1,size(x0,2));
           -param.max_Fx*ones(1,size(x0,2))];


%% Constraints

% linear constraints

% equality constraints
% the A matrix is define in the following way:
%     [x(0),x(1),x(2).......x(end)], one condition, one row
% numCond = 13; %start-end pos conditions, velocity conditions
numS = param.numJ*2+2;
% %start-end joint condition 
% %position
% Aeq = zeros(numCond,size(x0,1)*size(x0,2)); 
% beq = zeros(numCond,1);
% Aeq(1:7,1:param.numJ)=[0,0,0,0,0,1;   %start frame 
%                        0,0,0,0,1,0;
%                        0,0,0,1,0,0;
%                        0,0,1,0,0,0;
%                        0,1,0,0,0,0;
%                        1,0,0,0,0,0;
%                        1,1,1,1,1,1];
% % Aeq(1,end-numS+1:end-numS+param.numJ)=[1,1,1,1,1,1];
% 
% %endframe
% Aeq(1:6,end-numS+1:end-numS+param.numJ) = [1,0,0,0,0,0; 
%                                            0,1,0,0,0,0;
%                                            0,0,1,0,0,0;
%                                            0,0,0,1,0,0;
%                                            0,0,0,0,1,0;
%                                            0,0,0,0,0,1];
% beq(1:7,:) = [0;0;-pi;-pi;0;0;-pi];
% % beq(1,1) = -pi;
% %toeque
% Aeq(8:13,param.numJ+1:param.numJ*2) = [1,0,0,0,0,0;
%                                        0,1,0,0,0,0;
%                                        0,0,1,0,0,0;
%                                        0,0,0,1,0,0;
%                                        0,0,0,0,1,0;
%                                        0,0,0,0,0,1];
% % 
% Aeq(8:13,end-numS+1:end-numS+param.numJ)=[0,0,0,0,0,1;
%                                           0,0,0,0,1,0;
%                                           0,0,0,1,0,0;
%                                           0,0,1,0,0,0;
%                                           0,1,0,0,0,0;
%                                           1,0,0,0,0,0];    

prob.Aeq = [];
prob.beq = [];                                            

% inequality constraints

% back never bend backward
% -1*(q1+q2+q3) <-88 deg, 
%    -q3 < -1 deg
%  Fx<us*Fy
% -Fx<us*Fy

Asamp = zeros(2,numS); % create A for single frame
Asamp(1:2,1:3) = [-1,-1,-1;
                   1, 1, 1];


Acell = repmat({Asamp},1,floor(param.gaitT/param.sampT));

prob.Aineq = blkdiag(Acell{:});
Bsamp = [-100/180*pi;
          130/180*pi];
prob.bineq = repmat(Bsamp,floor(param.gaitT/param.sampT),1); 
prob.nonlcon = @(x)discrete_nonlcon(x,param);



prob.objective=@(x)obj_nonlinear(x,param);
iterTime =8000;

options = optimoptions('fmincon','Algorithm','interior-point','MaxIter',iterTime,'MaxFunctionEvaluations',iterTime*5,...
    'Display','iter','GradObj','on','TolCon',1e-8,'SpecifyConstraintGradient',true,...
    'SpecifyObjectiveGradient',true,'StepTolerance',1e-15,'UseParallel',true,'ScaleProblem',true);%,'HessianApproximation','finite-difference','SubproblemAlgorithm','cg');

% options =  optimoptions('patternsearch','ConstraintTolerance',1e-5,'Display','iter','MaxFunctionEvaluations',iterTime*10,'MaxIterations',iterTime,'UseCompletePoll',true);

prob.options = options;
% prob.solver = 'patternsearch';
prob.solver = 'fmincon';
prob2=prob;
% x=no_grf_traj(prob2.x0,param,model);
% prob.x0(1:2*param.numJ,:)=x;
% 

% create mapping for start and end frame to reduce one constraint (linear),
% otherwise it will easily converges to infeasible.
map_A = zeros(size(x0,1));
map_A(1,6)=-1;
map_A(2,5)=-1;
map_A(3,4)=-1;
map_A(4,3)=-1;
map_A(5,2)=-1;
map_A(6,1)=-1;
map_A(7,param.numJ+6)=-1;
map_A(8,param.numJ+5)=-1;
map_A(9,param.numJ+4)=-1;
map_A(10,param.numJ+3)=-1;
map_A(11,param.numJ+2)=-1;
map_A(12,param.numJ+1)=-1;
map_A(13,13)=-1;
map_A(14,14)=-1;
param.mapA = map_A;
mapB = [0;0;pi;pi;0;0;0;0;0;0;0;0;0;0];
param.mapB = mapB;

prob.nonlcon=@(x)discrete_nonlcon(x,param);


% 
% 
% x0_1=m*x(:,end)-[0;0;pi;pi;0;0;0;0;0;0;0;0];
% prob.x0(1:2*param.numJ,:)=[x0_1,x];
fval_opt=1e10;
xopt = prob.x0;
% for i=1:7

[x,fval,exitflag,output] = fmincon(prob);
% if fval<fval_opt
%     xopt = x;
% end
% f = forward_dyn(xopt,param);
% prob.x0 = [x(1:param.numJ,:);f];
% end



%%
x = [x,param.mapA*x(:,1)-param.mapB];

[t1,~]=clock;
fileName = [num2str(t1(2),'%02d'),num2str(t1(3),'%02d'),num2str(t1(4),'%02d'),num2str(t1(5),'%02d')];
result.x = x;
result.fval=fval;
result.exitflag = exitflag;
result.output = output;
result.param = param;
result.x0=prob.x0;
result.set_iterTime = iterTime;
result.model = model;
save(['../',modelName,'/',fileName],'result');
disp(['file name: ',modelName,'-',fileName]);
msgbox(['optimization done',num2str(exitflag)]);