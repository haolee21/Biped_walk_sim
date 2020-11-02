function [ceq,ceq_grad]=ankle_push_cons(x,fy,p)


ceq = zeros(p.phase1_idx,1);
ceq_grad = zeros(size(x,1),size(x,2),size(ceq,1));
% ceq2 = zeros(p.phase1_idx,1);
% ceq_grad2 = zeros(size(x,1),size(x,2),size(ceq2,1));

for i=1:p.phase1_idx
    x1= x(:,i).';
    
    ceq(i,1)=toePos_y(x1)+p.model.h_heel;
    ceq_grad(1:p.numJ,i,i)=dToePos_y(x1).';
    
%     ceq2(i,1)=heelPos_x(x1)-p.toeLen/2;
%     ceq_grad2(1:p.numJ,i,i)=ceq_grad2(1:p.numJ,i,i)+dHeelPos_x(x1); 
end



ceq_grad = reshape(ceq_grad,[size(x,1)*size(x,2),size(ceq,1)]);
% ceq_grad2 = reshape(ceq_grad2,[size(x,1)*size(x,2),size(ceq2,1)]);

% ceq = [ceq1;ceq2];
% ceq_grad = [ceq_grad1,ceq_grad2];
ceq_grad = [ceq_grad;zeros(length(fy),size(ceq_grad,2))];
end