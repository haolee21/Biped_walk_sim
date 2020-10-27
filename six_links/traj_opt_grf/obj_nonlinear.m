function [obj,dObj]=obj_nonlinear(x,p)
%% reshape x from vector to two matrix
x1 = x(1:p.x1Len.x*p.x1Len.y);
x1 = reshape(x1,[p.x1Len.x,p.x1Len.y]);
fy = x(p.x1Len.x*p.x1Len.y+1:end);



u = x1(p.numJ+1:2*p.numJ,:);

obj=0;
dObj=zeros(size(x1,1)*size(x1,2),1);

%% energy consumption
obj=obj+0.5*sum(p.jointW.*sum(u.^2,2).')*p.loss_w.eng;
dObj=dObj+reshape([zeros(p.numJ,size(x1,2));diag(p.jointW)*u;zeros(3,size(x1,2))]*p.loss_w.eng,[size(x1,1)*size(x1,2),1]);

%% u diff constraint
udiff = x1(p.numJ+1:p.numJ+6,1:end-1)-x1(p.numJ+1:p.numJ+6,2:end);
obj = obj +0.5*sum(udiff.^2,'all')*p.loss_w.u_diff;
grad = ([udiff,zeros(p.numJ,1)]-[zeros(p.numJ,1),udiff])*p.loss_w.u_diff;
dObj = dObj + reshape([zeros(p.numJ,size(x1,2));grad;zeros(3,size(x1,2))],[size(x1,1)*size(x1,2),1]);

%% fext diff constraint
fdiff = x1(p.numJ*2+1:p.numJ*2+2,1:end-1)-x1(p.numJ*2+1:p.numJ*2+2,2:end);
obj = obj+0.5*sum(fdiff.^2,'all')*p.loss_w.f_diff;
grad = ([fdiff,zeros(2,1)]-[zeros(2,1),fdiff])*p.loss_w.f_diff;
dObj = dObj+reshape([zeros(p.numJ*2,size(x1,2));grad;zeros(1,size(x1,2))],[size(x1,1)*size(x1,2),1]);

%% dynamic constraint
% [ceq,gradceq]=dynConst_discrete(x,p);
% obj=obj+0.5*(ceq.'*ceq)*p.loss_w.dyn;
% dObj =dObj+ gradceq*ceq*p.loss_w.dyn;

%% hipLen constraint
% [ceq,gradceq]=hipCon(x,p);
% obj=obj+0.5*(ceq.'*ceq)*p.loss_w.hipLen;
% dObj=dObj+gradceq*ceq*p.loss_w.hipLen;

%% grf_con
% [~,ceq,~,gradceq]=grf_cons_d(x,p);
% obj=obj+0.5*(ceq.'*ceq)*p.loss_w.grf;
% dObj=dObj+gradceq*ceq*p.loss_w.grf;

%% initYPosCons
% [ceq,gradceq]=initYPosCons(x,p);
% obj=obj+0.5*(ceq.'*ceq)*p.loss_w.yInit;
% dObj=dObj+gradceq*ceq*p.loss_w.yInit;

%% hipVel
% [ceq,gradceq]=hip_vel_con(x,p);
% obj=obj+0.5*(ceq.'*ceq)*p.loss_w.hipVel;
% dObj=dObj+gradceq*ceq*p.loss_w.hipVel;

end