% this is the script for solving optimal trajectory without grf
modelName='human_7';
warning on verbose
%add share functions
addpath dyn/
addpath obj/
addpath gaitCon/
addpath plotRobot/
dbstop if error

addpath (['../',modelName,'/robotGen/'])
addpath (['../',modelName,'/robotGen/grad/'])
% addpath (['../',modelName,'/robotGen/posCons/'])
addpath (['../',modelName,'/robotGen/dyn/'])
% addpath (['../',modelName,'/robotGen/obj/'])
addpath (['../',modelName,'/robotGen/grf/'])
addpath (['../',modelName,'/robotGen/grf/discrete'])

%% simulate parameters
model = load(['../',modelName,'/robotGen/model']).model;
param.numJ=6;
param.toe_th =-model.h_heel+0.001;
param.head_h = 1.1 ; %the head should be at least 1.6m

param.gaitT = 0.7;
param.sampT = 0.01;
%param.init_y = -model.l_heel+0.01; %initial feet height
param.heel_h = model.h_heel; %this is fix in the model parameter
param.foot_l = model.l_foot;
param.dmax =1e-3;
param.cmax=800;
param.k=model.totM*9.81/param.dmax^2/2;      %2e6;
param.us=0.8;
param.ud=0.6;

param.joint_fri = 0.003;

param.hip_feet_ratio = 3/0.7143;
param.hipLen=param.hip_feet_ratio*model.l_foot;

param.hip_vel = -param.hipLen/param.gaitT*0.001;
param.init_y = 0;

param.gndclear = -model.h_heel+0.02;

param.jointW = [100,1,1,1,1,0.1];
param.knee_stiff =76.325;
param.ank_stiff=408.65;

time = 0:param.sampT:param.gaitT;

param.max_ank_vel = Inf;
param.max_kne_vel = Inf;
param.max_hip_vel = Inf;

param.max_Fy = Inf;
param.max_Fx = Inf;
param.min_Fx = Inf;
param.min_Fy = Inf;

param.max_hip_tau =Inf;
param.min_hip_tau = Inf;
param.max_kne_tau = Inf;
param.min_kne_tau =Inf;
param.max_ank_tau =Inf;
param.min_ank_tau= Inf;

%% Initial conditions
q1 =70;
q2 = -1;
q3 =90-q1-q2;
q4 = -80-q1;
q5 = 3;
q6 = -180-q1-q2-q3-q4-q5;%+atan2d(param.heel_h,0.26);%0.26 is feet length
qStart=[q1/180*pi,q2/180*pi,q3/180*pi,q4/180*pi,q5/180*pi,q6/180*pi];

q1_end = 180+q1+q2+q3+q4+q5;
q2_end = -q5;
q3_end = -180-q4;
q4_end = -q1_end-90;
q5_end = -q2;
q6_end = -180-q1_end-q2_end-q3_end-q4_end-q5_end;
qEnd = [q1_end,q2_end,q3_end,q4_end,q5_end,q6_end]*pi/180;

q = [linspace(qStart(1),qEnd(1),length(time));
     linspace(qStart(2),qEnd(2),length(time));
     linspace(qStart(3),qEnd(3),length(time));
     linspace(qStart(4),qEnd(4),length(time));
     linspace(qStart(5),qEnd(5),length(time));
     linspace(qStart(6),qEnd(6),length(time))];


prob.x0=x;

%% Constraints
prob.nonlcon = @(x)discrete_nonlcon(x,param);
% linear constraints

% equality constraints
% the A matrix is define in the following way:
%     [x(0),x(1),x(2).......x(end)], one condition, one row
numCond = 7; %start-end pos conditions, velocity conditions
numS = param.numJ*2+4+2;
%start-end joint condition 
%position
Aeq = zeros(numCond,size(x0,1)*size(x0,2)); 
beq = zeros(numCond,1);
Aeq(1:7,1:param.numJ)=[0,0,0,0,0,1;   %start frame 
                                  0,0,0,0,1,0;
                                  0,0,0,1,0,0;
                                  0,0,1,0,0,0;
                                  0,1,0,0,0,0;
                                  1,0,0,0,0,0;
                                  1,1,1,1,1,1];

% endframe
Aeq(1:6,end-numS+1:end-numS+param.numJ) = [1,0,0,0,0,0; 
                                                    0,1,0,0,0,0;
                                                    0,0,1,0,0,0;
                                                    0,0,0,1,0,0;
                                                    0,0,0,0,1,0;
                                                    0,0,0,0,0,1];
beq(1:7,:) = [0;0;-pi;-pi;0;0;-pi];

% inequality constraints
% back never bend backward
% -1*(q1+q2+q3) <-88 deg, 

Asamp = zeros(2,numS); % create A for single frame
Asamp(1:2,1:3) = [-1,-1,-1;
                   1, 1, 1];

Acell = repmat({Asamp},1,floor(param.gaitT/param.sampT+1));
prob.Aineq = blkdiag(Acell{:});
Bsamp = [-88/180*pi;
          110/180*pi];
prob.bineq = repmat(Bsamp,floor(param.gaitT/param.sampT+1),1); 


%% upper and lower limit of the variables, the algorithm will only search solutions in these regions
prob.ub = [179/180*pi*ones(1,size(x0,2));
           0*ones(1,size(x0,2))/180*pi;
           75/180*pi*ones(1,size(x0,2));
           -100/180*pi*ones(1,size(x0,2));
           179/180*pi*ones(1,size(x0,2));
           -45/180*pi*ones(1,size(x0,2));
           param.min_ank_tau*ones(1,size(x0,2));
           param.max_kne_tau*ones(1,size(x0,2));
           param.max_hip_tau*ones(1,size(x0,2));
           param.min_hip_tau*ones(1,size(x0,2));
           param.min_kne_tau*ones(1,size(x0,2));
           param.max_ank_tau*ones(1,size(x0,2))];
prob.lb = [ones(1,size(x0,2))/180*pi;
           -179/180*pi*ones(1,size(x0,2));
           -75/180*pi*ones(1,size(x0,2));
           -260/180*pi*ones(1,size(x0,2));
           -0*ones(1,size(x0,2))/180*pi;
           -135/180*pi*ones(1,size(x0,2));
           -param.max_ank_tau*ones(1,size(x0,2));
           -param.min_kne_tau*ones(1,size(x0,2));
           -param.min_hip_tau*ones(1,size(x0,2));
           -param.max_hip_tau*ones(1,size(x0,2));
           -param.max_kne_tau*ones(1,size(x0,2));
           -param.min_ank_tau*ones(1,size(x0,2))];
prob.objective = @(x)objFun_d(x,param);


iterTime =8000;

options = optimoptions('fmincon','Algorithm','interior-point','MaxIter',iterTime,'MaxFunctionEvaluations',iterTime*5,...
    'Display','iter','GradObj','on','TolCon',1e-8,'SpecifyConstraintGradient',true,...
    'SpecifyObjectiveGradient',true,'StepTolerance',1e-10,'UseParallel',true,'DiffMinChange',0,'ScaleProblem',true);
prob.options = options;
prob.solver = 'fmincon';

[x,fval,exitflag,output] = fmincon(prob);





