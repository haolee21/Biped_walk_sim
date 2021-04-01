function [c,ceq,gradc,gradceq] = discrete_nonlcon_nogrf(x,p)
%%
% here we regenerate x0 since the original code was written with x0, in the
% future we will remove it to simplify it

m = zeros(size(x,1));
m(1,6)=-1;
m(2,5)=-1;
m(3,4)=-1;
m(4,3)=-1;
m(5,2)=-1;
m(6,1)=-1;
m(7,p.numJ+6)=-1;
m(8,p.numJ+5)=-1;
m(9,p.numJ+4)=-1;
m(10,p.numJ+3)=-1;
m(11,p.numJ+2)=-1;
m(12,p.numJ+1)=-1;


x0=m*x(:,end)-[0;0;pi;pi;0;0;0;0;0;0;0;0];
x = [x0,x];


%%



[ceq1,gradceq1] = dynConst_discrete_nogrf(x,p);
[ceq2,gradceq2] = hipCon(x,p);
% [ceq2,gradceq2] = toeCon(x,p);

[ceq4,gradceq4]=initYPosCons(x,p);
% [ceq5,gradceq5]=hip_vel_con(x,p);
[c2,gradc2]=yposCon_nogrf(x,p);
% c2=[];
% gradc2=[];
% c=c2;
% gradc=gradc2;
c = c2;
gradc_temp=gradc2;
ceq=[ceq1;ceq2;ceq4];
gradceq_temp=[gradceq1,gradceq2,gradceq4];


gradc1 = gradc_temp(1:2*p.numJ,:);
gradc = gradc_temp(2*p.numJ+1:end,:);
gradc(end-p.numJ*2+1:end,:) = m*gradc1+gradc(end-p.numJ*2+1:end,:);

% ceq = [ceq1;ceq2;ceq3;ceq4;ceq5];
% gradceq = [gradceq1,gradceq2,gradceq3,gradceq4,gradceq5];


gradceq1 = gradceq_temp(1:2*p.numJ,:);
gradceq = gradceq_temp(2*p.numJ+1:end,:);
gradceq(end-p.numJ*2+1:end,:) = m*gradceq1+gradceq(end-p.numJ*2+1:end,:);
end