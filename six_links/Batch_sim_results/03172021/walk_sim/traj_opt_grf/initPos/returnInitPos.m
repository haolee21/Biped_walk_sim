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
                 179/180*pi;
                 -50/180*pi];
             
    prob.lb = [ -260/180*pi;
                0.001/180*pi;
                 -130/180*pi];
    

else
    prob.ub = [ -100/180*pi;
                -0.001/180*pi;
                -50/180*pi];
    prob.lb = [ -260/180*pi;
                -179.99/180*pi;
                -130/180*pi]; 
end
prob.nonlcon =@(x)initPos_nonlcon(x,p,q1,q2,q3);
prob.objective=@(x)init_obj(x);   
iterTime=1000;
% prob.Aineq = [-1,-1,-1,0,0,0];
% prob.bineq =-90.5/180*pi;
options = optimoptions('fmincon','Algorithm','sqp','MaxIter',iterTime,'MaxFunEvals',iterTime*5,...
    'GradObj','on','TolCon',1e-13,'GradConstr','on',...
    'TolX',1e-15,'UseParallel',true,'Display','off');%,'HessianApproximation','finite-difference','SubproblemAlgorithm','cg');


% prob.Aineq = [-1 -1 -1];
% prob.bineq = q1+q2+q3+pi;


prob.options = options;
prob.solver = 'fmincon';

q4 = -100-q1;
q5 = 15;
q6 = -90;

prob.x0=[q4,q5,q6].'/180*pi;

[x,fval,exitflag,output] = fmincon(prob);

if exitflag<0
    disp(['Failed at hiplen=',num2str(p.hipLen)]);
end
x = [q1;q2;q3;x];
end