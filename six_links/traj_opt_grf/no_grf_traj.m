function x = no_grf_traj(x0,in_p,model)
%% Generate the trajectory with no ground reaction force

% different ground clearance
p = in_p;
p.gndclear =-model.h_heel+0.05;
p.ank_stiff=0;
%% only consider the joint angles and torque
prob.x0=x0(1:p.numJ*2,:);
prob.nonlcon = @(x)discrete_nonlcon_nogrf(x,p);


%% linear constraints

% equality constraints
% the A matrix is define in the following way:
%     [x(0),x(1),x(2).......x(end)], one condition, one row
numCond = 1; %start-end pos conditions, velocity conditions
numS = p.numJ*2;
%start-end joint condition
%position
Aeq = zeros(numCond,size(prob.x0,1)*size(prob.x0,2));
beq = zeros(numCond,1);

Aeq(1,end-numS+1:end-numS+p.numJ)=[1,1,1,1,1,1];
beq(1,1) = -pi;

prob.Aeq = Aeq;
prob.beq = beq;

Asamp = zeros(2,p.numJ*2); % create A for single frame
Asamp(1:2,1:3) = [-1,-1,-1;
    1, 1, 1];
Acell = repmat({Asamp},1,floor(p.gaitT/p.sampT));
prob.Aineq = blkdiag(Acell{:});
Bsamp = [-88/180*pi;
    110/180*pi];
prob.bineq = repmat(Bsamp,floor(p.gaitT/p.sampT),1);

%% upper and lower limit of the variables, the algorithm will only search solutions in these regions
prob.ub = [179/180*pi*ones(1,size(prob.x0,2));
    0*ones(1,size(prob.x0,2))/180*pi;
    75/180*pi*ones(1,size(prob.x0,2));
    -100/180*pi*ones(1,size(prob.x0,2));
    179/180*pi*ones(1,size(prob.x0,2));
    -60/180*pi*ones(1,size(prob.x0,2));
    p.min_ank_tau*ones(1,size(prob.x0,2));
    p.max_kne_tau*ones(1,size(prob.x0,2));
    p.max_hip_tau*ones(1,size(prob.x0,2));
    p.min_hip_tau*ones(1,size(prob.x0,2));
    p.min_kne_tau*ones(1,size(prob.x0,2));
    p.max_ank_tau*ones(1,size(prob.x0,2))];
prob.lb = [ones(1,size(prob.x0,2))/180*pi;
    -179/180*pi*ones(1,size(prob.x0,2));
    -75/180*pi*ones(1,size(prob.x0,2));
    -260/180*pi*ones(1,size(prob.x0,2));
    -0*ones(1,size(prob.x0,2))/180*pi;
    -120/180*pi*ones(1,size(prob.x0,2));
    -p.max_ank_tau*ones(1,size(prob.x0,2));
    -p.min_kne_tau*ones(1,size(prob.x0,2));
    -p.min_hip_tau*ones(1,size(prob.x0,2));
    -p.max_hip_tau*ones(1,size(prob.x0,2));
    -p.max_kne_tau*ones(1,size(prob.x0,2));
    -p.min_ank_tau*ones(1,size(prob.x0,2))];
prob.objective=@(x)obj_nogrf(x,p);
iterTime =3000;

options = optimoptions('fmincon','Algorithm','interior-point','MaxIter',iterTime,'MaxFunctionEvaluations',iterTime*5,...
    'Display','iter','GradObj','on','TolCon',1e-8,'SpecifyConstraintGradient',true,...
    'SpecifyObjectiveGradient',true,'StepTolerance',1e-15,'UseParallel',true,'DiffMinChange',0,'ScaleProblem',true);
prob.options = options;
prob.solver = 'fmincon';

[x,~,~,~] = fmincon(prob);
end
