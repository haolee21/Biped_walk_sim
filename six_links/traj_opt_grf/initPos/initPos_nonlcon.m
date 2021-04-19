function [c,ceq,gradc,gradceq]=initPos_nonlcon(x,p,q1,q2,q3)

x = [q1;q2;q3;x];

ceq3 = ToePos_y(x.')+p.model.h_heel;
ceq5 = HeelPos_y(x.')+p.model.h_heel-0.01;

gradceq3 = dToePos_y(x.');
gradceq5 = dHeelPos_y(x.');
c=[];
gradc=[];
ceq = [ceq3;ceq5];
gradceq=[gradceq3,gradceq5];
gradceq = gradceq(4:end,:);

end