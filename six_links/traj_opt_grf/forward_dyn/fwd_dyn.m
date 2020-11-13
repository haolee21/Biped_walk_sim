function x0 = fwd_dyn(x,p)
x = p.mat_s*x;


%% add the last column
x0 = x(1:p.x0Len);
x1 = x(p.x0Len+1:p.x1Len.x*p.x1Len.y+p.x0Len);
x1 = reshape(x1,[p.x1Len.x,p.x1Len.y]);
fy_toe = x(p.x1Len.x*p.x1Len.y+1+p.x0Len:end);
x1 = [[p.qStart.';x0],x1];

x0 = p.mapA*x1(:,1)-p.mapB;
x1 = [x1,x0];

x1(p.numJ+1:end,:) = zeros(p.numJ+2,size(x1,2));
fy_toe = zeros(length(fy_toe),1);
ceq = dynConst_discrete(x1,fy_toe,p);
ceq = reshape(ceq,[6,size(x1,2)-2]);
t_ori = linspace(0,100,size(x1,2));
t_cq = linspace(0,100,length(ceq));


u = interp1(t_cq,ceq.',t_ori).';

x1(p.numJ+1:2*p.numJ,:)=u;
x1 = x1(:,2:end-1);

x0_frame0 = zeros(p.numJ+2,1);
Fy_toe = 0.05*p.model.totM*9.81*rand(1,p.phase1_idx).';
x0=[x0_frame0;reshape(x1,[size(x1,1)*size(x1,2),1]);Fy_toe];










end