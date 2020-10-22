function [obj,dObj] = obj_fwdDyn(x,q,p)
%% add the last column
x0 = p.mapA*x(:,1)-p.mapB;
x = [x,x0];


%%
[ceq,gradceq] = dynConst_forwardDyn(x,q,p);


obj = 0.5*(ceq.'*ceq);


% the gradient of the last column should be add on the first column

gradceq(1:p.numJ+2,:) = gradceq(1:p.numJ+2,:)+p.mapA*gradceq(end-p.numJ-1:end,:);
gradceq = gradceq(1:end-p.numJ-2,:);
dObj = gradceq*ceq;
end