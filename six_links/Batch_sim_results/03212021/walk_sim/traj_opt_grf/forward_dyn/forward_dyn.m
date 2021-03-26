% when x converges to infeasible points, it is often the trajectory is
% acceptable, but the control inputs and the ground reaction force are off
% a lot, here we will regenerate the force and ground reaction force with
% forward dynamics

% however, since we use the discrete Lagrangina, we have to do forward
% dynamics with fmincon
function x = forward_dyn(s,p)
q = s(1:p.numJ,:);
prob.x0 = s(p.numJ+1:end,:);
prob.ub = [p.min_ank_tau*ones(1,size(prob.x0,2));
           p.max_kne_tau*ones(1,size(prob.x0,2));
           p.max_hip_tau*ones(1,size(prob.x0,2));
           p.min_hip_tau*ones(1,size(prob.x0,2));
           p.min_kne_tau*ones(1,size(prob.x0,2));
           p.max_ank_tau*ones(1,size(prob.x0,2));
           p.max_Fx*ones(1,size(prob.x0,2));
           p.max_Fx*ones(1,size(prob.x0,2))];
prob.lb = [-p.max_ank_tau*ones(1,size(prob.x0,2));
           -p.min_kne_tau*ones(1,size(prob.x0,2));
           -p.min_hip_tau*ones(1,size(prob.x0,2));
           -p.max_hip_tau*ones(1,size(prob.x0,2));
           -p.max_kne_tau*ones(1,size(prob.x0,2));
           -p.min_ank_tau*ones(1,size(prob.x0,2));
           -p.max_Fx*ones(1,size(prob.x0,2));
           -p.max_Fx*ones(1,size(prob.x0,2))];
prob.Aeq = [];
prob.beq = [];   

iterTime =8000;

options = optimoptions('fmincon','Algorithm','interior-point','MaxIter',iterTime,'MaxFunctionEvaluations',iterTime*5,...
    'Display','iter','GradObj','on','TolCon',1e-8,'SpecifyConstraintGradient',true,...
    'SpecifyObjectiveGradient',true,'StepTolerance',1e-15,'UseParallel',true,'ScaleProblem',true);%,'HessianApproximation','finite-difference','SubproblemAlgorithm','cg');
prob.options = options;
prob.solver = 'fmincon';

map_A = zeros(size(prob.x0,1));

map_A(1,6)=-1;
map_A(2,5)=-1;
map_A(3,4)=-1;
map_A(4,3)=-1;
map_A(5,2)=-1;
map_A(6,1)=-1;
map_A(7,7)=-1;
map_A(8,8)=-1;
p.mapA = map_A;
mapB = [0;0;0;0;0;0;0;0];
p.mapB = mapB;

map_A2 =zeros(size(q,1));
map_A2(1,6)=-1;
map_A2(2,5)=-1;
map_A2(3,4)=-1;
map_A2(4,3)=-1;
map_A2(5,2)=-1;
map_A2(6,1)=-1;
mapB2 = [0;0;pi;pi;0;0];

q0 = map_A2*q(:,1)-mapB2;
q = [q,q0];

prob.objective=@(x)obj_fwdDyn(x,q,p);
prob.nonlcon=@(x)grf_cons_fwdDyn(x,q,p);
[x,fval,exitflag,output] = fmincon(prob);
end