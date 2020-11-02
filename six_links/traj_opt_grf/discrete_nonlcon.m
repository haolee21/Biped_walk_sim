function [c,ceq,gradc,gradceq] = discrete_nonlcon(x,p)
%% add the last column
x1 = x(1:p.x1Len.x*p.x1Len.y);
x1 = reshape(x1,[p.x1Len.x,p.x1Len.y]);
fy_toe = x(p.x1Len.x*p.x1Len.y+1:end);

x0 = p.mapA*x1(:,1)-p.mapB;
x1 = [x1,x0];


%%
[ceq1,gradceq1] = dynConst_discrete(x1,fy_toe,p);
[ceq2,gradceq2] = hipCon(x1,fy_toe,p);
% [ceq2,gradceq2] = toeCon(x,p);
[c1,ceq3,gradc1,gradceq3]=grf_cons_d(x1,fy_toe,p);


[ceq4,gradceq4]=initYPosCons(x1,fy_toe,p);
[ceq5,gradceq5]=ankle_push_cons(x1,fy_toe,p);
% [ceq5,gradceq5]=hip_vel_con(x,p);
[c2,gradc2]=yposCon(x1,fy_toe,p);
[c3,gradc3]=heelYposCon(x1,fy_toe,p);
% [c3,gradc3] = dynConst_discrete1(x,p);
% [c4,gradc4] = dynConst_discrete2(x,p);

% c2=[];
% gradc2=[];
% c=c2;
% gradc=gradc2;
c = [c1;c2;c3];
gradc=[gradc1,gradc2,gradc3];
ceq=[ceq1;ceq2;ceq3;ceq4;ceq5];
gradceq=[gradceq1,gradceq2,gradceq3,gradceq4,gradceq5];



gradc_fy = gradc(end-length(fy_toe)+1:end,:);
gradceq_fy = gradceq(end-length(fy_toe)+1:end,:);

gradc = gradc(1:end-length(fy_toe),:);
gradceq = gradceq(1:end-length(fy_toe),:);
% the gradient of the last column should be add on the first column

gradc(1:p.numJ*2+2,:) = gradc(1:p.numJ*2+2,:)+p.mapA*gradc(end-p.numJ*2-1:end,:);
gradc = gradc(1:end-p.numJ*2-2,:);
gradceq(1:p.numJ*2+2,:) = gradceq(1:p.numJ*2+2,:)+p.mapA*gradceq(end-p.numJ*2-1:end,:);
gradceq = gradceq(1:end-p.numJ*2-2,:);

gradc = [gradc;gradc_fy];
gradceq = [gradceq;gradceq_fy];

end