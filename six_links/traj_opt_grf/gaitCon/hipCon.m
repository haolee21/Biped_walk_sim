function [ceq,ceq_grad] = hipCon(x,fy,p)
x1 = x(:,1);
xm = x(:,end);
ceq1 = hipPos_x(x1.')-p.hipLen/2;
ceq2 = hipPos_x(xm.')+p.hipLen/2;

ceq_grad1 = zeros(size(x,1),size(x,2));
ceq_grad2 = zeros(size(x,1),size(x,2));

ceq_grad1(1:p.numJ,1)=dHipPos_x(x1.').';
ceq_grad2(1:p.numJ,end)=dHipPos_x(xm.').';
ceq_grad1 = reshape(ceq_grad1,[size(x,1)*size(x,2),1]);
ceq_grad2 = reshape(ceq_grad2,[size(x,1)*size(x,2),1]);

ceq = [ceq1;ceq2];
ceq_grad = [ceq_grad1,ceq_grad2];
ceq_grad = [ceq_grad;zeros(length(fy),size(ceq_grad,2))];
end