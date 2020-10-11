function [ceq,gradceq]=toeCon(x,p)

x1 = x(:,1);
xm = x(:,end);
ceq = toePos_x(x1.')-toePos_x(xm.')-p.toeLen;

gradceq = zeros(size(x,1),size(x,2));

gradceq(1:p.numJ,1)=dToePos_x(x1.').';
gradceq(1:p.numJ,end)=-dToePos_x(xm.').';
gradceq = reshape(gradceq,[size(x,1)*size(x,2),1]);

end