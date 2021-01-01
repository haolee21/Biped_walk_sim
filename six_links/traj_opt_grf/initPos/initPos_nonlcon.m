function [c,ceq,gradc,gradceq]=initPos_nonlcon(x,p)

ceq1 = hipPos_x(x.')-p.hipLen/2;
ceq2 = hipPos_y(x.')-p.startH;
ceq3 = toePos_x(x.')-p.toeLen/2;
% ceq4 = heelPos_y(x.')+p.model.h_heel;
ceq5 = toePos_y(x.')+p.model.h_heel;

gradceq1 = dHipPos_x(x.');
gradceq2 = dHipPos_y(x.');
gradceq3 = dHeelPos_x(x.');
% gradceq4 = dHeelPos_y(x.');
gradceq5 = dToePos_y(x.');
c=[];
gradc=[];
ceq = [ceq1;ceq2;ceq3;ceq5];
gradceq=[gradceq1,gradceq2,gradceq3,gradceq5];


end