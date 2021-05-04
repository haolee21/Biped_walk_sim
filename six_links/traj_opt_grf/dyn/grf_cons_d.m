function [c,ceq,gradc,gradceq]=grf_cons_d(x,p)
%%

% equality constraint



%need average
grf_toe_c1_1 = zeros(p.phase1_idx-1,1);
grf_toe_c2_1 = zeros(p.phase1_idx-1,1);

grf_toe_c1_2 = zeros(size(x,2)-p.phase2_idx,1);
grf_heel_c1_2 = zeros(size(x,2)-p.phase2_idx,1);
grf_toe_c2_2 = zeros(size(x,2)-p.phase2_idx,1);
grf_heel_c2_2 = zeros(size(x,2)-p.phase2_idx,1);


grf_toe_c4_2 = zeros(size(x,2)-p.phase2_idx,1);
grf_heel_c4_2 = zeros(size(x,2)-p.phase2_idx,1);

dgrf_toe_c1_1 = zeros(size(x,1),size(x,2),size(grf_toe_c2_1,1));
dgrf_toe_c2_1 = zeros(size(x,1),size(x,2),size(grf_toe_c2_1,1));

dgrf_toe_c2_2 = zeros(size(x,1),size(x,2),size(grf_toe_c2_2,1));
dgrf_heel_c2_2 = zeros(size(x,1),size(x,2),size(grf_heel_c2_2,1));

dgrf_toe_c1_2 = zeros(size(x,1),size(x,2),size(grf_toe_c1_2,1));
dgrf_heel_c1_2 = zeros(size(x,1),size(x,2),size(grf_heel_c1_2,1));

dgrf_toe_c4_2 = zeros(size(x,1),size(x,2),size(grf_toe_c4_2,1));
dgrf_heel_c4_2 = zeros(size(x,1),size(x,2),size(grf_heel_c4_2,1));



for i=1:p.phase1_idx-1
  
    fx_toe = (x(2*p.numJ+1,i)+x(2*p.numJ+1,i+1))/2;
    fy_toe = (x(2*p.numJ+3,i)+x(2*p.numJ+3,i+1))/2;
    
    grf_toe_c1_1(i,1) = fx_toe-p.us*fy_toe;
    grf_toe_c2_1(i,1) =-fx_toe-p.us*fy_toe;
    
    dgrf_toe_c1_1(2*p.numJ+1,i,i)=0.5;
    dgrf_toe_c1_1(2*p.numJ+1,i+1,i)=0.5;
    dgrf_toe_c1_1(2*p.numJ+3,i,i)=-0.5*p.us;
    dgrf_toe_c1_1(2*p.numJ+3,i+1,i)=-0.5*p.us;
    
    dgrf_toe_c2_1(2*p.numJ+1,i,i)=-0.5;
    dgrf_toe_c2_1(2*p.numJ+1,i+1,i)=-0.5;
    dgrf_toe_c2_1(2*p.numJ+3,i,i)=-0.5*p.us;
    dgrf_toe_c2_1(2*p.numJ+3,i+1,i)=-0.5*p.us;
    
end

for c=0:size(x,2)-p.phase2_idx-1
    i = c+p.phase2_idx;
    q = (x(1:p.numJ,i)+x(1:p.numJ,i+1))/2;
    dq= (x(1:p.numJ,i+1)-x(1:p.numJ,i))/p.sampT;
    fx_toe = (x(2*p.numJ+1,i)+x(2*p.numJ+1,i+1))/2;
    fx_heel = (x(2*p.numJ+2,i)+x(2*p.numJ+2,i+1))/2;
    toe_flag=0;
    heel_flag=0;
    if(ToePos_y(q.')<p.toe_th)
        grf_toe_c1_2(c+1,1)=Grf_toe_c1(q.',dq.',fx_toe,p.toe_th,p.k,p.cmax_toe,p.dmax,p.us);
        grf_toe_c2_2(c+1,1)=Grf_toe_c2(q.',dq.',fx_toe,p.toe_th,p.k,p.cmax_toe,p.dmax,p.us);
        toe_flag=1;
    else
        grf_toe_c1_2(c+1,1)=fx_toe;
        grf_toe_c2_2(c+1,1)=-fx_toe;
    end
    if(HeelPos_y(q.')<p.toe_th)
        grf_heel_c1_2(c+1,1)=Grf_heel_c1(q.',dq.',fx_heel,p.toe_th,p.k,p.cmax_heel,p.dmax,p.us);
        grf_heel_c2_2(c+1,1)=Grf_heel_c2(q.',dq.',fx_heel,p.toe_th,p.k,p.cmax_heel,p.dmax,p.us);
        heel_flag=1;
    else
        grf_heel_c1_2(c+1,1)=fx_heel;
        grf_heel_c2_2(c+1,1)=-fx_heel;
    end
    
    grf_toe_c4_2(c+1,1) = Grf_toe_c4(q.',dq.',fx_toe);
    grf_heel_c4_2(c+1,1)= Grf_heel_c4(q.',dq.',fx_heel);
    
    if nargout>2
        if(toe_flag==1)
            dgrf_toe_c1_2(1:p.numJ,i,c+1)=reshape(dgrf_toe_c1_2(1:p.numJ,i,c+1),[p.numJ,1])+dGrf_toe_c1_dq1(q.',dq.',p.toe_th,p.k,p.cmax_toe,p.dmax,p.us,p.sampT);
            dgrf_toe_c1_2(1:p.numJ,i+1,c+1)=reshape(dgrf_toe_c1_2(1:p.numJ,i+1,c+1),[p.numJ,1])+dGrf_toe_c1_dq2(q.',dq.',p.toe_th,p.k,p.cmax_toe,p.dmax,p.us,p.sampT);
            dgrf_toe_c2_2(1:p.numJ,i,c+1)=reshape(dgrf_toe_c2_2(1:p.numJ,i,c+1),[p.numJ,1])+dGrf_toe_c2_dq1(q.',dq.',p.toe_th,p.k,p.cmax_toe,p.dmax,p.us,p.sampT);
            dgrf_toe_c2_2(1:p.numJ,i+1,c+1)=reshape(dgrf_toe_c2_2(1:p.numJ,i+1,c+1),[p.numJ,1])+dGrf_toe_c2_dq2(q.',dq.',p.toe_th,p.k,p.cmax_toe,p.dmax,p.us,p.sampT);
        end
        dgrf_toe_c1_2(2*p.numJ+1,i,c+1)=dgrf_toe_c1_2(2*p.numJ+1,i,c+1)+0.5;
        dgrf_toe_c1_2(2*p.numJ+1,i+1,c+1)=dgrf_toe_c1_2(2*p.numJ+1,i+1,c+1)+0.5;
        
        dgrf_toe_c2_2(2*p.numJ+1,i,c+1)=dgrf_toe_c2_2(2*p.numJ+1,i,c+1)-0.5;
        dgrf_toe_c2_2(2*p.numJ+1,i+1,c+1)=dgrf_toe_c2_2(2*p.numJ+1,i+1,c+1)-0.5;
        
        if(heel_flag==1)
            dgrf_heel_c1_2(1:p.numJ,i,c+1)=reshape(dgrf_heel_c1_2(1:p.numJ,i,c+1),[p.numJ,1])+dGrf_heel_c1_dq1(q.',dq.',p.toe_th,p.k,p.cmax_heel,p.dmax,p.us,p.sampT);
            dgrf_heel_c1_2(1:p.numJ,i+1,c+1)=reshape(dgrf_heel_c1_2(1:p.numJ,i+1,c+1),[p.numJ,1])+dGrf_heel_c1_dq2(q.',dq.',p.toe_th,p.k,p.cmax_heel,p.dmax,p.us,p.sampT);
            dgrf_heel_c2_2(1:p.numJ,i,c+1)=reshape(dgrf_heel_c2_2(1:p.numJ,i,c+1),[p.numJ,1])+dGrf_heel_c2_dq1(q.',dq.',p.toe_th,p.k,p.cmax_heel,p.dmax,p.us,p.sampT);
            dgrf_heel_c2_2(1:p.numJ,i+1,c+1)=reshape(dgrf_heel_c2_2(1:p.numJ,i+1,c+1),[p.numJ,1])+dGrf_heel_c2_dq2(q.',dq.',p.toe_th,p.k,p.cmax_heel,p.dmax,p.us,p.sampT);
        end
        dgrf_heel_c1_2(2*p.numJ+2,i,c+1)=dgrf_heel_c1_2(2*p.numJ+2,i,c+1)+0.5;
        dgrf_heel_c1_2(2*p.numJ+2,i+1,c+1)=dgrf_heel_c1_2(2*p.numJ+2,i+1,c+1)+0.5;
        dgrf_heel_c2_2(2*p.numJ+2,i,c+1)=dgrf_heel_c2_2(2*p.numJ+2,i,c+1)-0.5;
        dgrf_heel_c2_2(2*p.numJ+2,i+1,c+1)=dgrf_heel_c2_2(2*p.numJ+2,i+1,c+1)-0.5;
        

        
        dgrf_toe_c4_2(1:p.numJ,i,c+1)    =dgrf_toe_c4_2(1:p.numJ,i,c+1)+dGrf_toe_c4_q1(q.',dq.',fx_toe,p.sampT);
        dgrf_toe_c4_2(1:p.numJ,i+1,c+1)  =dgrf_toe_c4_2(1:p.numJ,i+1,c+1)+dGrf_toe_c4_q2(q.',dq.',fx_toe,p.sampT);
        dgrf_toe_c4_2(2*p.numJ+1,i,c+1)  =dgrf_toe_c4_2(2*p.numJ+1,i,c+1)+dGrf_toe_c4_F(q.',dq.')*0.5;
        dgrf_toe_c4_2(2*p.numJ+1,i+1,c+1)=dgrf_toe_c4_2(2*p.numJ+1,i+1,c+1)+dGrf_toe_c4_F(q.',dq.')*0.5;
        
        dgrf_heel_c4_2(1:p.numJ,i,c+1)=dgrf_heel_c4_2(1:p.numJ,i,c+1)+dGrf_heel_c4_q1(q.',dq.',fx_heel,p.sampT);
        dgrf_heel_c4_2(1:p.numJ,i+1,c+1)=dgrf_heel_c4_2(1:p.numJ,i+1,c+1)+dGrf_heel_c4_q2(q.',dq.',fx_heel,p.sampT);
        dgrf_heel_c4_2(2*p.numJ+2,i,c+1)=dgrf_heel_c4_2(2*p.numJ+2,i,c+1)+dGrf_heel_c4_F(q.',dq.')*0.5;
        dgrf_heel_c4_2(2*p.numJ+2,i+1,c+1)=dgrf_heel_c4_2(2*p.numJ+2,i+1,c+1)+dGrf_heel_c4_F(q.',dq.')*0.5;
        
        
    end
    
end



c =  [grf_toe_c1_1
      grf_toe_c2_1
      grf_toe_c1_2;
      grf_heel_c1_2;
      grf_toe_c2_2;
      grf_heel_c2_2;
      grf_toe_c4_2;
      grf_heel_c4_2];
gradc_all = {dgrf_toe_c1_1,dgrf_toe_c2_1,dgrf_toe_c1_2,dgrf_heel_c1_2,dgrf_toe_c2_2,dgrf_heel_c2_2,dgrf_toe_c4_2,dgrf_heel_c4_2};






gradc = cat(3,gradc_all{:});

gradc_q = gradc(1:p.numJ,2:end-1,:);
gradc_q = reshape(gradc_q,[size(gradc_q,1)*size(gradc_q,2),size(gradc_q,3)]);

gradc_u = gradc(p.numJ+1:2*p.numJ,:,:);
gradc_u = reshape(gradc_u,[size(gradc_u,1)*size(gradc_u,2),size(gradc_u,3)]);
gradc_u(1:p.numJ,:) = gradc_u(1:p.numJ,:)+p.map_A2*gradc_u(end-p.numJ+1:end,:);
gradc_u = gradc_u(1:end-p.numJ,:);

gradc_f1 = gradc([2*p.numJ+1,2*p.numJ+3],1:p.phase1_idx,:);
gradc_f1 = reshape(gradc_f1,[size(gradc_f1,1)*size(gradc_f1,2),size(gradc_f1,3)]);
gradc_f2 = gradc(2*p.numJ+1:2*p.numJ+2,p.phase2_idx:end,:);
gradc_f2 = reshape(gradc_f2,[size(gradc_f2,1)*size(gradc_f2,2),size(gradc_f2,3)]);

gradc = [gradc_q;gradc_u;gradc_f1;gradc_f2];


ceq = [];
gradceq=[];


end