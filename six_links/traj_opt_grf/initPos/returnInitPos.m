%% without specify q1,q2,q3,q4,q5,q6 for the initial point, the model has hard time to converge
% for here we will specify starting hip height, hip length, and gait length
% (distance between ankle joints)
function [x,exitflag]=returnInitPos(p)
% for some reason solve() in matlab cannot return me the correct answer

prob.nonlcon =@(x)initPos_nonlcon(x,p);
prob.objective=@(x)init_obj(x);
prob.ub = [pi;
      -0.001/180*pi;
      75/180*pi;
      -100/180*pi;
      179/180*pi;
      -60/180*pi];
prob.lb = [1/180*pi;
      -179/180*pi;
      -75/180*pi;
      -260/180*pi;
       0.001;
      -135/180*pi];
iterTime=1000;
% prob.Aineq = [-1,-1,-1,0,0,0];
% prob.bineq =-90.5/180*pi;
options = optimoptions('fmincon','Algorithm','interior-point','MaxIter',iterTime,'MaxFunctionEvaluations',iterTime*5,...
    'GradObj','on','TolCon',1e-13,'SpecifyConstraintGradient',true,...
    'SpecifyObjectiveGradient',true,'StepTolerance',1e-15,'UseParallel',true,'ScaleProblem',true);%,'HessianApproximation','finite-difference','SubproblemAlgorithm','cg');


prob.Aeq = [1 1 1 1 1 1;
            1,1,1,0,0,0];
prob.beq = [-pi;
            95/180*pi];
prob.options = options;
prob.solver = 'fmincon';
q1 =68;
q2 = -1;
q3 =90-q1-q2;
q4 = -100-q1;
q5 = 15;
q6 = -180-q1-q2-q3-q4-q5;%+atan2d(param.heel_h,0.26);%0.26 is feet length
prob.x0=[q1/180*pi,q2/180*pi,q3/180*pi,q4/180*pi,q5/180*pi,q6/180*pi].';

[x,fval,exitflag,output] = fmincon(prob);
end