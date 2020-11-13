function [c,ceq,gradc,gradceq] = discrete_nonlcon(x,p)
% scale x back
x = p.mat_s*x;


%% add the last column
q = x(1:p.varDim.q1*p.varDim.q2);
q = reshape(q,[p.varDim.q1,p.varDim.q2]);
x = x(p.varDim.q1*p.varDim.q2+1:end);

u = x(1:p.varDim.u1*p.varDim.u2);
u = reshape(u,[p.varDim.u1,p.varDim.u2]);
x = x(p.varDim.u1*p.varDim.u2+1:end);

fext1 = x(1:p.varDim.fext1_1*p.varDim.fext1_2);
fext1 = reshape(fext1,[p.varDim.fext1_1,p.varDim.fext1_2]);
x = x(p.varDim.fext1_1*p.varDim.fext1_2+1:end);

fext2 = x(1:p.varDim.fext2_1*p.varDim.fext2_2);
fext2 = reshape(fext2,[p.varDim.fext2_1,p.varDim.fext2_2]);

%% reconstruct the array, pad zeros to make it more continuous when calculating gradient
% the structure of x is
% [ q;
%   u;
%   Fext1(1),0,Fext2(1);
%   0       ,0,Fext2(2);
%   Fext1(2),0,0]

% Fext1: grf acting at phase1
% Fext1(1): fx_toe, Fext1(2): fy_toe


% Fext2: grf acting at phase2
% Fext2(1): fx_toe, Fext2(2): fx_heel

% recreate q
q = [p.qStart.',q,p.map_A1*p.qStart.'-p.mapB1];
u = [u,p.map_A2*u(:,1)-p.mapB2];

x = zeros(3,size(q,2));
x(1,1:p.varDim.fext1_2) = fext1(1,:);
x(1,end-p.varDim.fext2_2+1:end) = fext2(1,:);
x(2,end-p.varDim.fext2_2+1:end) = fext2(2,:);
x(3,1:p.varDim.fext1_2) = fext1(2,:);

x = [q;u;x];


%%
[ceq1,gradceq1] = dynConst_discrete(x,p);
% [ceq2,gradceq2] = hipCon(x1,fy_toe,p);
% [ceq2,gradceq2] = toeCon(x,p);
[c1,~,gradc1,~]=grf_cons_d(x,p);


% [ceq4,gradceq4]=initYPosCons(x1,fy_toe,p);
[ceq5,gradceq5]=ankle_push_cons(x,p);
% [ceq5,gradceq5]=hip_vel_con(x,p);
[c2,gradc2]=yposCon(x,p);
% [c3,gradc3]=heelYposCon(x1,fy_toe,p);


% c2=[];
% gradc2=[];
% c=c2;
% gradc=gradc2;
c = [c1;c2];
gradc=[gradc1,gradc2];
ceq=[ceq1;1000*ceq5];
gradceq=[gradceq1,1000*gradceq5];

gradc = p.mat_s*gradc;
gradceq=p.mat_s*gradceq;


end