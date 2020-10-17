function [c,ceq,gradc,gradceq] = grf_nonlcon(x,q,p)
%% add the last column
x0 = p.mapA*x(:,1)-p.mapB;
x = [x,x0];


%%


[c1,ceq3,gradc1,gradceq3]=grf_cons_d(x,p);


c = [c1;c2];
gradc=[gradc1,gradc2];
ceq=[ceq1;ceq2;ceq3;ceq4];
gradceq=[gradceq1,gradceq2,gradceq3,gradceq4];


% the gradient of the last column should be add on the first column

gradc(1:p.numJ*2+2,:) = gradc(1:p.numJ*2+2,:)+p.mapA*gradc(end-p.numJ*2-1:end,:);
gradc = gradc(1:end-p.numJ*2-2,:);
gradceq(1:p.numJ*2+2,:) = gradceq(1:p.numJ*2+2,:)+p.mapA*gradceq(end-p.numJ*2-1:end,:);
gradceq = gradceq(1:end-p.numJ*2-2,:);

end