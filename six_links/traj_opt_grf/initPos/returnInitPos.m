%% without specify q1,q2,q3,q4,q5,q6 for the initial point, the model has hard time to converge
% for here we will specify starting hip height, hip length, and gait length
% (distance between ankle joints)
function [x,exitflag]=returnInitPos(p,dir)

%% directly solve q1,q2 with geometry





% for some reason solve() in matlab cannot return me the correct answer

L = p.hipLen;
h = p.startH;
l1 = p.model.l_calf;
l2 = p.model.l_thigh;
q2 = -dir*acos((L^2/4+h^2-l1^2-l2^2)/(2*l1*l2)); %q2 is always negative for forward knee

mat = [-l2*sin(q2),l1+l2*cos(q2);l1+l2*cos(q2),l2*sin(q2)];
q1_vec = mat\[L/2;h];
q1 = atan2(q1_vec(1),q1_vec(2));

% suppose torso is leaning forward
q3 = 95/180*pi-q1-q2;



if dir==1
    prob.ub = [ -100/180*pi;
                 179/180*pi];
    prob.lb = [ -260/180*pi;
                0.001/180*pi];
    q6 = -110/180*pi;

else
    prob.ub = [ -100/180*pi;
                -0.001/180*pi];
    prob.lb = [ -260/180*pi;
                -179.99/180*pi];
    q6 = -70/180*pi;        
end
prob.nonlcon =@(x)initPos_nonlcon(x,p,q1,q2,q3,q6);
prob.objective=@(x)init_obj(x);   
iterTime=1000;
% prob.Aineq = [-1,-1,-1,0,0,0];
% prob.bineq =-90.5/180*pi;
options = optimoptions('fmincon','Algorithm','sqp','MaxIter',iterTime,'MaxFunctionEvaluations',iterTime*5,...
    'GradObj','on','TolCon',1e-13,'SpecifyConstraintGradient',true,...
    'SpecifyObjectiveGradient',true,'StepTolerance',1e-15,'UseParallel',true,'ScaleProblem',true);%,'HessianApproximation','finite-difference','SubproblemAlgorithm','cg');


prob.Aineq = [-1 -1];
prob.bineq = q1+q2+q3+q6+pi;


prob.options = options;
prob.solver = 'fmincon';

q4 = -100-q1;
q5 = 15;

prob.x0=[q4/180*pi,q5/180*pi].';

[x,fval,exitflag,output] = fmincon(prob);

x = [q1;q2;q3;x;q6];
end