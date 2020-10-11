function [obj,dObj]=obj_nonlinear(x,p)

u = x(p.numJ+1:2*p.numJ,:);

obj=0;
dObj=zeros(size(x,1)*size(x,2),1);

%% energy consumption
obj=obj+0.5*sum(p.jointW.*sum(u.^2,2).')*p.loss_w.eng;
dObj=dObj+reshape([zeros(p.numJ,size(x,2));diag(p.jointW)*u;zeros(2,size(x,2))]*p.loss_w.eng,[size(x,1)*size(x,2),1]);



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