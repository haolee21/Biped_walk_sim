function [obj,dObj]=obj_nonlinear(x,p)
x = p.mat_s*x;
obj=0;
dObj=zeros(size(x,1),1);
%% reshape x from vector to two matrix
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

% we need to consider the last u, since it is appearing in dyn constraints,
% if we do not penalize it, the solver will make it too large (the benefit
% of changing it is larger than others)
u = [u,p.map_A2*u(:,1)-p.mapB2];
q = [p.qStart.',q,p.map_A1*p.qStart.'-p.mapB1];

%% energy consumption
u_count = u(:,1:end-1); % we don't need to count the last u twice
obj=obj+0.5*sum(p.jointW.*sum(u_count.^2,2).')*p.loss_w.eng;
dObj_u = diag(p.jointW)*u_count;
% dObj_u(:,1) =dObj_u(:,1)+ p.map_A2*dObj_u(:,end);
% dObj_u = dObj_u(:,1:end-1);

dObj = dObj + [zeros(p.varDim.q1*p.varDim.q2,1);reshape(dObj_u,[p.varDim.u1*p.varDim.u2,1])*p.loss_w.eng;zeros(p.varDim.fext1_1*p.varDim.fext1_2,1);zeros(p.varDim.fext2_1*p.varDim.fext2_2,1)];


%% u diff constraint
udiff = u(:,1:end-1)-u(:,2:end);
obj = obj +0.5*sum(udiff.^2,'all')*p.loss_w.u_diff;
grad = ([udiff,zeros(p.numJ,1)]-[zeros(p.numJ,1),udiff]);
grad(:,1) = grad(:,1)+p.map_A2*grad(:,end);
grad = grad(:,1:end-1);
dObj = dObj + [zeros(p.varDim.q1*p.varDim.q2,1);reshape(grad*p.loss_w.u_diff,[p.varDim.u1*p.varDim.u2,1]);zeros(p.varDim.fext1_1*p.varDim.fext1_2,1);zeros(p.varDim.fext2_1*p.varDim.fext2_2,1)];

%% fext diff constraint
obj =obj+0.5*sum([fext1,fext2].^2,'all');
dObj = dObj+[zeros(p.varDim.q1*p.varDim.q2,1);zeros(p.varDim.u1*p.varDim.u2,1);reshape(fext1,[p.varDim.fext1_1*p.varDim.fext1_2,1]);reshape(fext2,[p.varDim.fext2_1*p.varDim.fext2_2,1])];

%% speed constraint
diffq = q(:,1:end-1)-q(:,2:end);
dq = diffq/p.sampT;
obj = obj+0.5*sum(dq.^2,'all')*0.001;
dObj_q = ([diffq,zeros(6,1)]-[zeros(6,1),diffq])/p.sampT^2;
dObj_q = dObj_q(:,2:end-1);

dObj = dObj+[reshape(0.001*dObj_q,[p.varDim.q1*p.varDim.q2,1]);zeros(p.varDim.u1*p.varDim.u2,1);zeros(p.varDim.fext1_1*p.varDim.fext1_2,1);zeros(p.varDim.fext2_1*p.varDim.fext2_2,1)];


dObj = p.mat_s*dObj;
end