function [dObj,dObjGrad]=objFun(x,p)
q = x(1:p.numJ,:);
dq= x(p.numJ+1:2*p.numJ,:);
u = x(p.numJ*2+1:3*p.numJ,:);

fri_sum=0;
fri_grad = zeros(size(x,1),size(x,2));
for i=1:size(x,2)
    fri_sum = fri_sum + fri([q(:,i);dq(:,i)].',p.toe_th);
    fri_grad(:,i) = fri_dx([q(:,i);dq(:,i)].',p.toe_th);
end

dObj = fri_sum*p.fri_coeff;

for i=1:p.numJ
    dObj = p.jointW(i)*0.5*sum(u(i,:).^2,'all')+dObj;
end

dObjGrad = [zeros(p.numJ*2,size(x,2));diag(p.jointW)*u]+fri_grad*p.fri_coeff;

end