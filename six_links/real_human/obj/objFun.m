function [dObj,dObjGrad]=objFun(x,p)
q = x(1:p.numJ,:);
dq= x(p.numJ+1:2*p.numJ,:);
u = x(p.numJ*2+1:3*p.numJ,:);

fri_sum=0;
fri_grad = zeros(size(x,1),size(x,2));

half_idx = floor(size(x,2)/2);
for i=1:half_idx
    fri_sum = fri_sum + fri_toe([q(:,i);dq(:,i)].',p.toe_th);
    fri_grad(:,i) = fri_toe_dx([q(:,i);dq(:,i)].',p.toe_th);
end
for i = half_idx+1:size(x,2)
    
    fri_sum = fri_sum + fri_heel([q(:,i);dq(:,i)].',p.toe_th);
    fri_grad(:,i) = fri_heel_dx([q(:,i);dq(:,i)].',p.toe_th);
    
end


dObj = fri_sum*p.fri_coeff;

ucount = zeros(size(u,1),size(u,2)); % not all u counts, for knee, if it reaches 0 deg it can support by mechanical
for i=1:p.numJ
%     if(i==2)
%         count = abs(q(i,:))>0.00879 & dq(i,:)<0;%5 deg   %I mod this line to make it always true since this method does not consider diff(q)
%       
%     elseif (i==5)
%         count = abs(q(i,:))>0.00879 & dq(i,:)>0; %count =1 if it is not singular pos and not bending toward singular pos
%         
%     else
%         count = ones(size(u(i,:),1),size(u(i,:),2));
%     end

    % the above does not work
    count = ones(size(u(i,:),1),size(u(i,:),2));
    ucount(i,:)=count.*u(i,:);
    dObj = p.jointW(i)*0.5*sum(ucount(i,:).^2,'all')+dObj;
end
% dObj = dObj+0.5*sum(q(2,:).^2,'all')+0.5*sum(q(5,:).^2,'all');

%% however, knee joint can lock itself if it reaches 0 degree
% front knee, 0 -> -180 deg
% back knee, 0 -> 180 deg




dObjGrad = [zeros(p.numJ*2,size(x,2));diag(p.jointW)*ucount];
% dObjGrad(2,:) = q(2,:);
% dObjGrad(5,:) = q(5,:);
dObjGrad = dObjGrad+fri_grad*p.fri_coeff;
end