function [ceq,ceq_grad]=initYPosCons(x,p)
x1=0.5*(x(:,1).'+x(:,2).');
xm=0.5*(x(:,end).'+x(:,end-1).');

initToeYPos=toePos_y(x1);
endToeYPos=toePos_y(xm);

initHeelYPos = heelPos_y(x1);
endHeelYPos = heelPos_y(xm);
% ceq=[p.init_y-initYPos;p.init_y-endYPos];

ceq1 = endToeYPos-initToeYPos;
ceq2 = endHeelYPos-initHeelYPos;

% ceq_grad1 = zeros(size(x,1),size(x,2));
% ceq_grad1(1:p.numJ,1)=-end_y_grad(x1).';
% ceq_grad2 = zeros(size(x,1),size(x,2));
% ceq_grad2(1:p.numJ,end)=-end_y_grad(xm).';
ceq_grad1 = zeros(size(x,1),size(x,2));
ceq_grad1(1:p.numJ,1)=-0.5*dToePos_y(x1).';
ceq_grad1(1:p.numJ,2)=-0.5*dToePos_y(x1).';
ceq_grad1(1:p.numJ,end)=0.5*dToePos_y(xm).';
ceq_grad1(1:p.numJ,end-1)=0.5*dToePos_y(xm).';

ceq_grad2 = zeros(size(x,1),size(x,2));
ceq_grad2(1:p.numJ,1)=-0.5*dHeelPos_y(x1).';
ceq_grad2(1:p.numJ,2)=-0.5*dHeelPos_y(x1).';
ceq_grad2(1:p.numJ,end)=0.5*dHeelPos_y(xm).';
ceq_grad2(1:p.numJ,end-1)=0.5*dHeelPos_y(xm).';
% ceq_grad1 = reshape(ceq_grad1,[size(x,1)*size(x,2),1]);
% ceq_grad2 = reshape(ceq_grad2,[size(x,1)*size(x,2),1]);
% ceq_grad=[ceq_grad1,ceq_grad2];

ceq_grad1 = reshape(ceq_grad1,[size(x,1)*size(x,2),1]);
ceq_grad2 = reshape(ceq_grad2,[size(x,1)*size(x,2),1]);

ceq = [ceq1;ceq2];
ceq_grad = [ceq_grad1,ceq_grad2];
end