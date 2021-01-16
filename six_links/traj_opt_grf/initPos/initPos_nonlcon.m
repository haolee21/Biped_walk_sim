function [c,ceq,gradc,gradceq]=initPos_nonlcon(x,p,q1,q2,q3,q6)

x = [q1;q2;q3;x;q6];

ceq3 = toePos_x(x.')-p.toeLen/2;
ceq5 = toePos_y(x.')+p.model.h_heel;

gradceq3 = dHeelPos_x(x.');
gradceq5 = dToePos_y(x.');
c=[];
gradc=[];
ceq = [ceq3;ceq5];
gradceq=[gradceq3,gradceq5];
gradceq = gradceq(4:5,:);

end