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





%% energy consumption
obj=obj+0.5*sum(p.jointW.*sum(u.^2,2).')*p.loss_w.eng;
dObj = dObj + [zeros(p.varDim.q1*p.varDim.q2,1);reshape(diag(p.jointW)*u,[p.varDim.u1*p.varDim.u2,1])*p.loss_w.eng;zeros(p.varDim.fext1_1*p.varDim.fext1_2,1);zeros(p.varDim.fext2_1*p.varDim.fext2_2,1)];


%% u diff constraint
% udiff = u(:,1:end-1)-u(:,2:end);
% obj = obj +0.5*sum(udiff.^2,'all')*p.loss_w.u_diff;
% grad = ([udiff,zeros(p.numJ,1)]-[zeros(p.numJ,1),udiff])*p.loss_w.u_diff;
% dObj = dObj + [zeros(p.varDim.q1*p.varDim.q2,1);reshape(grad,[p.varDim.u1*p.varDim.u2,1]);zeros(p.varDim.fext1_1*p.varDim.fext1_2,1);zeros(p.varDim.fext2_1*p.varDim.fext2_2,1)];

%% fext diff constraint
obj =obj+0.5*sum([fext1,fext2].^2,'all');
dObj = dObj+[zeros(p.varDim.q1*p.varDim.q2,1);zeros(p.varDim.u1*p.varDim.u2,1);reshape(fext1,[p.varDim.fext1_1*p.varDim.fext1_2,1]);reshape(fext2,[p.varDim.fext2_1*p.varDim.fext2_2,1])];



dObj = p.mat_s*dObj;
end