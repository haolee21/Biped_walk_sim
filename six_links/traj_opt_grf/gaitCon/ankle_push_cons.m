function [ceq,ceq_grad]=ankle_push_cons(x,p)

%%
ceq1 = zeros(p.phase1_idx-1,1); % -1 since the first frame must be correct
ceq2 = zeros(p.phase1_idx-1,1);
ceq_grad1 = zeros(p.numJ,size(x,2),size(ceq1,1));
ceq_grad2 = zeros(p.numJ,size(x,2),size(ceq2,1));
% ceq2 = zeros(p.phase1_idx,1);
% ceq_grad2 = zeros(size(x,1),size(x,2),size(ceq2,1));

for i=1:p.phase1_idx-1 %the first frame is fixed
    q= x(1:p.numJ,i+1).'; 
    
    ceq1(i,1)=toePos_y(q)+p.model.h_heel;
    ceq2(i,1)=toePos_x(q)-p.toeLen/2;
    
    if(nargout>1)
        ceq_grad1(1:p.numJ,i+1,i)=dToePos_y(q).';
        ceq_grad2(1:p.numJ,i+1,i)=dToePos_x(q).';
    end

end
ceq = [ceq1;ceq2];
ceq_grad = cat(3,ceq_grad1,ceq_grad2);
ceq_grad_q = ceq_grad(:,2:end-1,:);
ceq_grad_q = reshape(ceq_grad_q,[p.numJ*size(ceq_grad_q,2),2*size(ceq1,1)]);

ceq_grad = zeros(p.varDim.q1*p.varDim.q2+p.varDim.u1*p.varDim.u2+p.varDim.fext1_1*p.varDim.fext1_2+p.varDim.fext2_1*p.varDim.fext2_2,2*size(ceq1,1));
ceq_grad(1:size(ceq_grad_q,1),:) = ceq_grad_q;
end