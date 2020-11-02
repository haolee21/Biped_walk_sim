%% Calculate the optimized trajectories for 6 link biped model with GRF
% the dynamics constraints are discrete Lagrangian
clear;
modelName='human_8';

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

param.gaitT = 0.6;
param.sampT = 0.01;
time = 0:param.sampT:param.gaitT;
ankle_push_ratio = 0.15;
param.phase1_idx= floor(ankle_push_ratio*length(time));

param.jointW = [3,3,6,6,3,3];
param.jointW = [10,10,10,10,10,10];

% physical param
param.numJ=6;
param.toe_th =-model.h_heel+0.01;

 %this is fix in the model parameter
param.foot_l = model.l_foot;
param.dmax =1e-2;
param.cmax_toe=10;
param.cmax_heel=100;
param.k=model.totM*9.81/param.dmax^2/5;      %2e6;
param.us=0.8;
param.joint_fri = 0.003;
param.knee_stiff =76.325/10; % I use max moment (MVC/angle), since the stiffness of the paper is too high
param.ank_stiff=408.65/5;

%gait param
param.hip_feet_ratio = 2/0.7143;
param.hipLen=param.hip_feet_ratio*model.l_foot;
param.toeLen=param.hip_feet_ratio*model.l_foot;
param.gndclear = -model.h_heel+0.02;


% force/torque bounds
param.max_Fy = model.totM*9.81*2;
param.max_Fx = model.totM*9.81*2;
param.min_Fx = model.totM*9.81*2;


param.max_hip_tau =250;
param.min_hip_tau = 250;
param.max_kne_tau = 250;
param.min_kne_tau =250;
param.max_ank_tau =250;
param.min_ank_tau= 15;

% weight for obj fun
param.loss_w.u_diff = 0;
param.loss_w.f_diff=0.1;
param.loss_w.eng=1;
param.loss_w.fy_diff=0.1;




%% Initial conditions
q1 =68;
q2 = -1;
q3 =90-q1-q2;
q4 = -100-q1;
q5 = 15;
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

q1_end = -q6;
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


u = [0.1*param.min_ank_tau*rand(1,size(q,2));
     0.1*param.max_hip_tau*rand(size(q,1)-2,size(q,2));
     0.1*param.min_ank_tau*rand(1,size(q,2))];



Fx_toe = zeros(1,length(q));
Fx_heel = zeros(1,length(q));

Fy_toe = model.totM*9.81*rand(1,param.phase1_idx).';

% generate states that spans the whole time
x1 = [q;u;Fx_toe;Fx_heel];
x1 = x1(:,1:end-1); % remove the last since we will use directly mapping to solve it



prob.x0=[reshape(x1,[size(x1,1)*size(x1,2),1]);Fy_toe];
% prob.x0 = load('x0_val.mat').x;

% save the dimension of x1 for easier decomposition
param.x1Len.x = size(x1,1);
param.x1Len.y = size(x1,2);


%% upper and lower limit of the variables, the algorithm will only search solutions in these regions
ub1 = [179/180*pi*ones(1,length(time)-1);
      -0.001*ones(1,length(time)-1)/180*pi;
      75/180*pi*ones(1,length(time)-1);
      -100/180*pi*ones(1,length(time)-1);
      179/180*pi*ones(1,length(time)-1);
      -60/180*pi*ones(1,length(time)-1);
      param.min_ank_tau*ones(1,length(time)-1);
      param.max_kne_tau*ones(1,length(time)-1);
      param.max_hip_tau*ones(1,length(time)-1);
      param.min_hip_tau*ones(1,length(time)-1);
      param.min_kne_tau*ones(1,length(time)-1);
      param.max_ank_tau*ones(1,length(time)-1);
      param.max_Fx*ones(1,length(time)-1);
      param.max_Fx*ones(1,length(time)-1)];
lb1 = [ones(1,length(time)-1)/180*pi;
      -179/180*pi*ones(1,length(time)-1);
      -75/180*pi*ones(1,length(time)-1);
      -260/180*pi*ones(1,length(time)-1);
       0.001*ones(1,length(time)-1)/180*pi;
      -135/180*pi*ones(1,length(time)-1);
      -param.max_ank_tau*ones(1,length(time)-1);
      -param.min_kne_tau*ones(1,length(time)-1);
      -param.min_hip_tau*ones(1,length(time)-1);
      -param.max_hip_tau*ones(1,length(time)-1);
      -param.max_kne_tau*ones(1,length(time)-1);
      -param.min_ank_tau*ones(1,length(time)-1);
      -param.max_Fx*ones(1,length(time)-1);
      -param.max_Fx*ones(1,length(time)-1)];
ub2=param.max_Fy*ones(1,size(Fy_toe,1));
lb2=-0.0001*ones(1,size(Fy_toe,1));
prob.ub = [reshape(ub1,[size(ub1,1)*size(ub1,2),1]);ub2.'];
prob.lb = [reshape(lb1,[size(lb1,1)*size(lb1,2),1]);lb2.'];


%% Constraints

% linear constraints

% equality constraints
% the A matrix is define in the following way:
%     [x(0),x(1),x(2).......x(end)], one condition, one row
% numCond = 13; %start-end pos conditions, velocity conditions
numS = param.numJ*2+2; % do not consider Fy_toe here, this variable does not span the whole time horizon
 

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
Aineq1=blkdiag(Acell{:});
prob.Aineq = [Aineq1,zeros(size(Aineq1,1),size(Fy_toe,1))];
Bsamp = [-91/180*pi;
          100/180*pi];
prob.bineq = repmat(Bsamp,floor(param.gaitT/param.sampT),1); 




prob.objective=@(x)obj_nonlinear(x,param);
iterTime =3000;

options = optimoptions('fmincon','Algorithm','interior-point','MaxIter',iterTime,'MaxFunctionEvaluations',iterTime*5,...
    'Display','iter','GradObj','on','TolCon',1e-8,'SpecifyConstraintGradient',true,...
    'SpecifyObjectiveGradient',true,'StepTolerance',1e-15,'UseParallel',true,'ScaleProblem',true,'OutputFcn',@outfun);%,'HessianApproximation','finite-difference','SubproblemAlgorithm','cg');

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
map_A = zeros(size(x1,1));
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
map_A(13,13)=1;
map_A(14,14)=1;
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

%use random number for x0 
% prob.x0 = diag(rand(size(prob.ub,1),1))*(prob.ub-prob.lb)+prob.lb;


[x,fval,exitflag,output] = fmincon(prob);
% if fval<fval_opt
%     xopt = x;
% end
% f = forward_dyn(xopt,param);
% prob.x0 = [x(1:param.numJ,:);f];
% end
prob.x0 = prob.x0+0.01*diag(rand(size(prob.ub,1),1))*(prob.ub-prob.lb)+prob.lb;


%%
result.x = x;
x1 = x(1:param.x1Len.x*param.x1Len.y);
x1 = reshape(x1,[param.x1Len.x,param.x1Len.y]);
fy_toe = x(param.x1Len.x*param.x1Len.y+1:end);

x0 = param.mapA*x1(:,1)-param.mapB;
x1 = [x1,x0];

[t1,~]=clock;
fileName = [num2str(t1(2),'%02d'),num2str(t1(3),'%02d'),num2str(t1(4),'%02d'),num2str(t1(5),'%02d')];
result.x1 = x1;
result.fy_toe = x(end-param.phase1_idx+1:end);
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