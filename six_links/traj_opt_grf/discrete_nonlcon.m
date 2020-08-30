function [c,ceq,gradc,gradceq] = discrete_nonlcon(x,p)

[ceq1,gradceq1] = dynConst_discrete(x,p);
[ceq2,gradceq2] = hipCon(x,p);

% [c1,ceq3,gradc1,gradceq3]=grf_cons_d(x,p);

[ceq4,gradceq4]=initYPosCons(x,p);
[ceq5,gradceq5]=hip_vel_con(x,p);
[c2,gradc2]=yposCon(x,p);
% c2=[];
% gradc2=[];
c=c2;
gradc=gradc2;

% ceq = [ceq1;ceq2;ceq3;ceq4;ceq5];
% gradceq = [gradceq1,gradceq2,gradceq3,gradceq4,gradceq5];
ceq=[ceq1;ceq2;ceq4;ceq5];
gradceq=[gradceq1,gradceq2,gradceq4,gradceq5];
end