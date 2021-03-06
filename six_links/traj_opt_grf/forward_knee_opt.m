function forward_knee_opt(jointW,toeLen,hipLen,hipH,gaitT,ank_push_ratio)
modelName='human_8';

%add share functions
addpath dyn/
addpath obj/
addpath gaitCon/
addpath plotRobot/
addpath forward_dyn
addpath initPos/
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

param.gaitT = gaitT;
param.sampT = 0.01;
time = 0:param.sampT:param.gaitT;
ankle_push_ratio = ank_push_ratio;
param.phase1_idx= floor(ankle_push_ratio*length(time)); % toe-off end idx
param.phase2_idx = length(time)-floor(length(time)/2); %heel strike starts idx


param.jointW = jointW;
% param.jointW = [1,1,1,1,1,1];

% physical param
param.numJ=6;
param.toe_th =-model.h_heel+0.01;

 %this is fix in the model parameter
param.foot_l = model.l_foot;
param.dmax =1e-2;
param.cmax_toe=10;
param.cmax_heel=100;
param.k=model.totM*9.81/param.dmax^2/2;      %2e6;
param.us=0.8;
% param.joint_fri = 0.003;
param.joint_fri = 0.3;
param.knee_stiff2 =76.325/10; % I use max moment (MVC/angle), since the stiffness of the paper is too high

param.ank_stiff=201800*model.l_heel^2/10; % from: STRUCTURAL AND MECHANICAL PROPERTIES OF THE HUMAN ACHILLES TENDON: SEX AND STRENGTH EFFECTS
% param.knee_stiff2 =0;
param.knee_stiff1=76.325/10;
% param.knee_stiff1=0;
% param.joint_fri = 1;
%gait param
param.hip_feet_ratio = hipLen/0.7143;
param.gait_feet_ratio = toeLen/0.7143;
param.hipLen=param.hip_feet_ratio*model.l_foot;
param.toeLen=param.gait_feet_ratio*model.l_foot;
param.gndclear = -model.h_heel+0.02;
param.gndclear2 = -model.h_heel;
param.startH = hipH*(model.l_thigh+model.l_calf);

[q0,exitflag] = returnInitPos(param);

if exitflag<0
    result = -1;
    return
end

% force/torque bounds
param.max_Fy = model.totM*9.81*2;
param.max_Fx = model.totM*9.81*2;
param.min_Fx = model.totM*9.81*2;


param.max_hip_tau =model.totM*3;
param.min_hip_tau =model.totM*3;
param.max_kne_tau =model.totM*3;
param.min_kne_tau =model.totM*3;
param.max_ank_tau =model.totM*3;
param.min_ank_tau= model.totM*0.01;

% weight for obj fun
param.loss_w.u_diff = 10;
param.loss_w.f_diff=1;
param.loss_w.eng=10;
param.loss_w.fy_diff=1;




%% Initial conditions
% q1 =68;
% q2 = -1;
% q3 =90-q1-q2;
% q4 = -100-q1;
% q5 = 15;
% q6 = -180-q1-q2-q3-q4-q5;%+atan2d(param.heel_h,0.26);%0.26 is feet length
% qStart=[q1/180*pi,q2/180*pi,q3/180*pi,q4/180*pi,q5/180*pi,q6/180*pi];
q0 = q0*180/pi;
q1 = q0(1);
q2 = q0(2);
q3 = q0(3);
q4 = q0(4);
q5 = q0(5);
q6 = q0(6);
qStart=[q1/180*pi,q2/180*pi,q3/180*pi,q4/180*pi,q5/180*pi,q6/180*pi];
param.qStart = qStart;


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
q4_end = -180-q3;
q5_end = -q2;
q6_end = -q1;
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


u = [0.001*param.min_ank_tau*rand(1,size(q,2));
     0.001*param.max_hip_tau*rand(size(q,1)-2,size(q,2));
     0.001*param.min_ank_tau*rand(1,size(q,2))];


Fext1 = [zeros(1,param.phase1_idx);
        0.01*model.totM*9.81*rand(1,param.phase1_idx)];

Fext2 = [zeros(1,length(q)-param.phase2_idx+1);
        zeros(1,length(q)-param.phase2_idx+1)];

%remove the extra variables (q does not need start/end frame, u does not
%need end frame)

q = q(:,2:end-1);
u = u(:,1:end-1);
param.varDim.q1 = size(q,1);
param.varDim.q2 = size(q,2);
param.varDim.u1 = size(u,1);
param.varDim.u2 = size(u,2);
param.varDim.fext1_1 = size(Fext1,1);
param.varDim.fext1_2 = size(Fext1,2);
param.varDim.fext2_1 = size(Fext2,1);
param.varDim.fext2_2 = size(Fext2,2);


% scale matrix, try to normalize all the states to make it more accurate
param.q_scale = 1;
param.u_scale = 10;
param.fext_scale = 100;



prob.x0=[reshape(q/param.q_scale,[size(q,1)*size(q,2),1]);
         reshape(u/param.u_scale,[size(u,1)*size(u,2),1]);
         reshape(Fext1/param.fext_scale,[param.varDim.fext1_1*param.varDim.fext1_2,1]);
         reshape(Fext2/param.fext_scale,[param.varDim.fext2_1*param.varDim.fext2_2,1])];
% prob.x0 = load('x0_val.mat').x;

% save the dimension of x1 for easier decomposition





mat_q = eye(param.varDim.q1*param.varDim.q2)*param.q_scale;
mat_u = eye(param.varDim.u1*param.varDim.u2)*param.u_scale;
mat_fext1 = eye(param.varDim.fext1_2*2)*param.fext_scale;
mat_fext2 = eye(param.varDim.fext2_2*2)*param.fext_scale;
mat_s_tot = {mat_q,mat_u,mat_fext1,mat_fext2};
param.mat_s = blkdiag(mat_s_tot{:});




%% upper and lower limit of the variables, the algorithm will only search solutions in these regions


ubq = [179/180*pi*ones(1,param.varDim.q2)/param.q_scale;
      0*180/pi*ones(1,param.varDim.q2)/param.q_scale;
      75/180*pi*ones(1,param.varDim.q2)/param.q_scale;
      -100/180*pi*ones(1,param.varDim.q2)/param.q_scale;
      179/180*pi*ones(1,param.varDim.q2)/param.q_scale;
      -60/180*pi*ones(1,param.varDim.q2)/param.q_scale];
lbq = [1/180*pi*ones(1,param.varDim.q2)/param.q_scale;
      -179/180*pi*ones(1,param.varDim.q2)/param.q_scale;
      -75/180*pi*ones(1,param.varDim.q2)/param.q_scale;
      -260/180*pi*ones(1,param.varDim.q2)/param.q_scale;
       0.001/180*pi*ones(1,param.varDim.q2)/param.q_scale;
      -135/180*pi*ones(1,param.varDim.q2)/param.q_scale];
  
ubu= [ param.max_ank_tau*ones(1,param.varDim.u2)/param.u_scale;
       param.max_kne_tau*ones(1,param.varDim.u2)/param.u_scale;
       param.max_hip_tau*ones(1,param.varDim.u2)/param.u_scale;
       param.min_hip_tau*ones(1,param.varDim.u2)/param.u_scale;
       param.min_kne_tau*ones(1,param.varDim.u2)/param.u_scale;
       param.max_ank_tau*ones(1,param.varDim.u2)/param.u_scale];
lbu =[-param.max_ank_tau*ones(1,param.varDim.u2)/param.u_scale;
      -param.min_kne_tau*ones(1,param.varDim.u2)/param.u_scale;
      -param.min_hip_tau*ones(1,param.varDim.u2)/param.u_scale;
      -param.max_hip_tau*ones(1,param.varDim.u2)/param.u_scale;
      -param.max_kne_tau*ones(1,param.varDim.u2)/param.u_scale;
      -param.min_ank_tau*ones(1,param.varDim.u2)/param.u_scale];
  
ubfx1=[ param.max_Fx*ones(1,param.varDim.fext1_2)/param.fext_scale;
        param.max_Fy*ones(1,param.varDim.fext1_2)/param.fext_scale];  
lbfx1=[-param.max_Fx*ones(1,param.varDim.fext1_2)/param.fext_scale;
        zeros(1,param.varDim.fext1_2)/param.fext_scale];

ubfx2=[ param.max_Fx*ones(1,param.varDim.fext2_2)/param.fext_scale;
        param.max_Fx*ones(1,param.varDim.fext2_2)/param.fext_scale];  
lbfx2=[-param.max_Fx*ones(1,param.varDim.fext2_2)/param.fext_scale;
       -param.max_Fx*ones(1,param.varDim.fext2_2)/param.fext_scale];



prob.ub = [reshape(ubq,[size(ubq,1)*size(ubq,2),1]);
           reshape(ubu,[size(ubu,1)*size(ubu,2),1]);
           reshape(ubfx1,[size(ubfx1,1)*size(ubfx1,2),1]);
           reshape(ubfx2,[size(ubfx2,1)*size(ubfx2,2),1])];
prob.lb = [reshape(lbq,[size(ubq,1)*size(ubq,2),1]);
           reshape(lbu,[size(ubu,1)*size(ubu,2),1]);
           reshape(lbfx1,[size(ubfx1,1)*size(ubfx1,2),1]);
           reshape(lbfx2,[size(ubfx2,1)*size(ubfx2,2),1])];
%% reset x0
% prob.x0 = prob.lb+randn(size(prob.x0,1),size(prob.x0,2)).*(prob.ub-prob.lb);

%% Constraints

% linear constraints

% equality constraints
% velocity continuity, since we use discrete lagrangian, there might be a
% discontinuity in velocity

% inequality constraints
Asamp = zeros(2,param.numJ); % create A for single frame
Asamp(1:2,1:3) = [-1,-1,-1;
                   1, 1, 1];


Acell = repmat({Asamp},1,param.varDim.q2);
Aineq1=blkdiag(Acell{:});



% all fx_toe in phase1 needs to be <0
Asamp2 = [1,0];
Acell2 = repmat({Asamp2},1,param.varDim.fext1_2);
Aineq2 = blkdiag(Acell2{:});



Bsamp = [-91/180*pi/param.q_scale;
          100/180*pi/param.q_scale];
bineq1 = repmat(Bsamp,param.varDim.q2,1);
bineq2 = zeros(size(Aineq2,1),1);
      
prob.Aineq = zeros(size(Aineq1,1)+size(Aineq2,1),size(prob.x0,1)*size(prob.x0,2));
prob.Aineq(1:size(Aineq1,1),1:param.varDim.q1*param.varDim.q2)=Aineq1;
prob.Aineq(size(Aineq1,1)+1:size(Aineq1,1)+size(Aineq2,1),param.varDim.q1*param.varDim.q2+param.varDim.u1*param.varDim.u2+1:param.varDim.q1*param.varDim.q2+param.varDim.u1*param.varDim.u2+param.varDim.fext1_1*param.varDim.fext1_2)=Aineq2;
prob.bineq =  [bineq1;bineq2];





iterTime =2000;

options = optimoptions('fmincon','Algorithm','interior-point','MaxIter',iterTime,'MaxFunctionEvaluations',iterTime*5,...
    'GradObj','on','TolCon',1e-8,'SpecifyConstraintGradient',true,...
    'SpecifyObjectiveGradient',true,'StepTolerance',1e-15,'UseParallel',true);%,'OutputFcn',@outfun);%,'ScaleProblem',true);%,'HessianApproximation','finite-difference','SubproblemAlgorithm','cg');

% options =  optimoptions('patternsearch','ConstraintTolerance',1e-5,'Display','iter','MaxFunctionEvaluations',iterTime*10,'MaxIterations',iterTime,'UseCompletePoll',true);

prob.options = options;
% prob.solver = 'patternsearch';
prob.solver = 'fmincon';

% x=no_grf_traj(prob2.x0,param,model);
% prob.x0(1:2*param.numJ,:)=x;
% 

% create mapping for start and end frame to reduce one constraint (linear),
% otherwise it will easily converges to infeasible.
param.map_A1 = zeros(param.numJ);
param.map_A1(1,6)=-1;
param.map_A1(2,5)=-1;
param.map_A1(3,4)=-1;
param.map_A1(4,3)=-1;
param.map_A1(5,2)=-1;
param.map_A1(6,1)=-1;
param.map_A2 = zeros(param.numJ); 
param.map_A2(1,6)=-1;
param.map_A2(2,5)=-1;
param.map_A2(3,4)=-1;
param.map_A2(4,3)=-1;
param.map_A2(5,2)=-1;
param.map_A2(6,1)=-1;


param.mapB1 = [0;0;pi;pi;0;0];
param.mapB2 = [0;0;0;0;0;0];

%%equality constraints

% prob.Aeq = zeros(param.numJ,size(prob.x0,1));
% prob.Aeq(1:param.numJ,1:param.numJ) = eye(param.numJ);
% prob.Aeq(:,param.varDim.q1*param.varDim.q2-param.numJ+1:param.varDim.q1*param.varDim.q2) = param.map_A1;
% prob.beq = 2*param.qStart.'-param.map_A1*param.mapB1;




%% scale x0

prob.x0 = param.mat_s\prob.x0;
prob.nonlcon=@(x)discrete_nonlcon(x,param);
prob.objective=@(x)obj_nonlinear(x,param);
% 
% 
% x0_1=m*x(:,end)-[0;0;pi;pi;0;0;0;0;0;0;0;0];
% prob.x0(1:2*param.numJ,:)=[x0_1,x];


% for i=1:7

%use random number for x0 
% prob.x0 = diag(rand(size(prob.ub,1),1))*(prob.ub-prob.lb)+prob.lb;

% for i=1:3

[x,fval,exitflag,output] = fmincon(prob);
% 
%     prob.x0=fwd_dyn(x,param);
% end
% scale x back
result.xopt = x;
p =param;
x = p.mat_s*x;


%% add the last column
q = x(1:p.varDim.q1*p.varDim.q2);
q = reshape(q,[p.varDim.q1,p.varDim.q2]);
x = x(p.varDim.q1*p.varDim.q2+1:end);

u = x(1:p.varDim.u1*p.varDim.u2);
u = reshape(u,[p.varDim.u1,p.varDim.u2]);
x = x(p.varDim.u1*p.varDim.u2+1:end);

fext1 = x(1:p.varDim.fext1_1*p.varDim.fext1_2);
fext1 = reshape(fext1,[p.varDim.fext1_1,p.varDim.fext1_2]);
x = x(p.varDim.fext1_1*p.varDim.fext1_2+1:end);

fext2 = x(1:p.varDim.fext2_1*p.varDim.fext2_2);
fext2 = reshape(fext2,[p.varDim.fext2_1,p.varDim.fext2_2]);

%% reconstruct the array, pad zeros to make it more continuous when calculating gradient
% the structure of x is
% [ q;
%   u;
%   Fext1(1),0,Fext2(1);
%   0       ,0,Fext2(2);
%   Fext1(2),0,0]

% Fext1: grf acting at phase1
% Fext1(1): fx_toe, Fext1(2): fy_toe


% Fext2: grf acting at phase2
% Fext2(1): fx_toe, Fext2(2): fx_heel

% recreate q
q = [p.qStart.',q,p.map_A1*p.qStart.'-p.mapB1];
u = [u,p.map_A2*u(:,1)-p.mapB2];

x = zeros(3,size(q,2));
x(1,1:p.varDim.fext1_2) = fext1(1,:);
x(1,end-p.varDim.fext2_2+1:end) = fext2(1,:);
x(2,end-p.varDim.fext2_2+1:end) = fext2(2,:);
x(3,1:p.varDim.fext1_2) = fext1(2,:);

x = [q;u;x];

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


end


