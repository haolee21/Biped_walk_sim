function [ceq,ceq_grad]=initYPosCons(x,fy,p)
x1=0.5*(x(:,1).'+x(:,2).');


initToeYPos=toePos_y(x1);


initHeelYPos = heelPos_y(x1);

% ceq=[p.init_y-initYPos;p.init_y-endYPos];

ceq = initToeYPos-initHeelYPos;



ceq_grad = zeros(size(x,1),size(x,2));
ceq_grad(1:p.numJ,1)=0.5*dToePos_y(x1).';
ceq_grad(1:p.numJ,2)=0.5*dToePos_y(x1).';
ceq_grad(1:p.numJ,1)=-0.5*dHeelPos_y(x1).';
ceq_grad(1:p.numJ,2)=-0.5*dHeelPos_y(x1).';


ceq_grad = reshape(ceq_grad,[size(x,1)*size(x,2),1]);

ceq_grad = [ceq_grad;zeros(length(fy),size(ceq_grad,2))];
end