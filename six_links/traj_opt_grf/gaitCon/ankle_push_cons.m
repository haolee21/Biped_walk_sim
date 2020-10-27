function [ceq,ceq_grad]=ankle_push_cons(x,p)


ceq = zeros(p.phase1_idx+2,1);
ceq_grad = zeros(size(x,1),size(x,2),size(ceq,1));

for i=1:p.phase1_idx+2
    x1= x(:,i).';
    
    ceq(i,1)=toePos_y(x1)-p.toe_th;
    
    ceq_grad(1:p.numJ,i,i)=dToePos_y(x1).';
    
end

ceq_grad = reshape(ceq_grad,[size(x,1)*size(x,2),size(ceq,1)]);

end