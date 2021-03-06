function [f,dfx]=f_dyn(x,p,f_toe,f_heel,u)

ceq = zeros(p.numJ*(size(x,2)-2),1);
gradceq = zeros(p.numJ,size(x,2),size(ceq,1));
for i=1:size(x,2)-2
    q1 = x(1:p.numJ,i);
    q2 = x(1:p.numJ,i+1);
    q3 = x(1:p.numJ,i+2);
    
    u1 = u(:,i);
    u2 = u(:,i+1);
    u3 = u(:,i+2);
    
    f_toe1 = f_toe(:,i);
    f_toe2 = f_toe(:,i+1);
    f_toe3 = f_toe(:,i+2);
    
    f_heel1 = f_heel(:,i);
    f_heel2 = f_heel(:,i+1);
    f_heel3 = f_heel(:,i+2);
    

    
    
    tend_ank1_1 = [pi/2-q1(1,1),0,0,0,0,0]*p.ank_stiff;
    tend_ank1_2 = [pi/2-q2(1,1),0,0,0,0,0]*p.ank_stiff;
    tend_ank1_3 = [pi/2-q3(1,1),0,0,0,0,0]*p.ank_stiff;
    
    tend_ank2_1 = [0,0,0,0,0,-pi/2-q1(6,1)]*p.ank_stiff;
    tend_ank2_2 = [0,0,0,0,0,-pi/2-q2(6,1)]*p.ank_stiff;
    tend_ank2_3 = [0,0,0,0,0,-pi/2-q3(6,1)]*p.ank_stiff;
    
    tend_kne1_1 = [0,-q1(2,1),0,0,0,0]*p.knee_stiff;
    tend_kne1_2 = [0,-q2(2,1),0,0,0,0]*p.knee_stiff;
    tend_kne1_3 = [0,-q3(2,1),0,0,0,0]*p.knee_stiff;
    
    tend_kne2_1 = [0,0,0,0,-q1(5,1),0]*p.knee_stiff;
    tend_kne2_2 = [0,0,0,0,-q2(5,1),0]*p.knee_stiff;
    tend_kne2_3 = [0,0,0,0,-q3(5,1),0]*p.knee_stiff;
    
    
    dL1 = [dL1_1((q2.'+q3.')/2,(q3.'-q2.')/p.sampT,p.sampT);...
        dL1_2((q2.'+q3.')/2,(q3.'-q2.')/p.sampT,p.sampT);...
        dL1_3((q2.'+q3.')/2,(q3.'-q2.')/p.sampT,p.sampT);...
        dL1_4((q2.'+q3.')/2,(q3.'-q2.')/p.sampT,p.sampT);...
        dL1_5((q2.'+q3.')/2,(q3.'-q2.')/p.sampT,p.sampT);...
        dL1_6((q2.'+q3.')/2,(q3.'-q2.')/p.sampT,p.sampT)]*p.sampT;
    
    dL2 = [dL2_1((q1.'+q2.')/2,(q2.'-q1.')/p.sampT,p.sampT);...
        dL2_2((q1.'+q2.')/2,(q2.'-q1.')/p.sampT,p.sampT);...
        dL2_3((q1.'+q2.')/2,(q2.'-q1.')/p.sampT,p.sampT);...
        dL2_4((q1.'+q2.')/2,(q2.'-q1.')/p.sampT,p.sampT);...
        dL2_5((q1.'+q2.')/2,(q2.'-q1.')/p.sampT,p.sampT);...
        dL2_6((q1.'+q2.')/2,(q2.'-q1.')/p.sampT,p.sampT)]*p.sampT;
    
    u_sum = (u1+2*u2+u3)*p.sampT/4;
    
    tau_toe_1 = Tau_toe(q1.',f_toe1.');
    tau_toe_2 = Tau_toe(q2.',f_toe2.');
    tau_toe_3 = Tau_toe(q3.',f_toe3.');
    
    tau_heel_1 = Tau_heel(q1.',f_heel1.');
    tau_heel_2 = Tau_heel(q2.',f_heel2.');
    tau_heel_3 = Tau_heel(q3.',f_heel3.');
    
    tau_toe = (tau_toe_1+2*tau_toe_2+tau_toe_3)*p.sampT/4;
    tau_heel = (tau_heel_1+2*tau_heel_2+tau_heel_3)*p.sampT/4;
    
    
    
    tend_ank1 = (tend_ank1_1+2*tend_ank1_2+tend_ank1_3).'/4*p.sampT;
    tend_ank2 = (tend_ank2_1+2*tend_ank2_2+tend_ank2_3).'/4*p.sampT;
    
    tend_kne1 = (tend_kne1_1+2*tend_kne1_2+tend_kne1_3).'/4*p.sampT;
    tend_kne2 = (tend_kne2_1+2*tend_kne2_2+tend_kne2_3).'/4*p.sampT;
    
    dq =(q3-q1)/2;
    fri_tau = p.joint_fri*eye(p.numJ)*dq; %we simplify many terms here, dq1 = (q2-q1)/sampT,  dq2 = (q3-q2)/sampT, thus, the average is (q3-q1)/2/sampT
%     
%     
    err = dL1+dL2+u_sum+tau_toe+tau_heel+tend_ank1+tend_ank2+tend_kne1+tend_kne2-fri_tau;
    ceq((i-1)*p.numJ+1:i*p.numJ,1)=err;
%     f = f+0.5*(err.'*err);
    
    
    %now we solve the gradient
    
    if nargout>1
        % the gradient will be a little complicated since for ever
        % constraints it will be related to 3 different time states
        
        
        % gradient related to Lagrangian
        %q1 is related to dL2, first input
        
        gradceq(1:p.numJ,i,(i-1)*p.numJ+1:i*p.numJ)=[dL21_dq1((q1.'+q2.')/2,(q2.'-q1.')/p.sampT,p.sampT),...
                                                     dL22_dq1((q1.'+q2.')/2,(q2.'-q1.')/p.sampT,p.sampT),...
                                                     dL23_dq1((q1.'+q2.')/2,(q2.'-q1.')/p.sampT,p.sampT),...
                                                     dL24_dq1((q1.'+q2.')/2,(q2.'-q1.')/p.sampT,p.sampT),...
                                                     dL25_dq1((q1.'+q2.')/2,(q2.'-q1.')/p.sampT,p.sampT),...
                                                     dL26_dq1((q1.'+q2.')/2,(q2.'-q1.')/p.sampT,p.sampT)]*p.sampT;
%         
        
        
        %q2 is related to dL2, first input, dL1, 2nd input
        gradceq(1:p.numJ,i+1,(i-1)*p.numJ+1:i*p.numJ)= [dL21_dq2((q1.'+q2.')/2,(q2.'-q1.')/p.sampT,p.sampT)+dL11_dq1((q2.'+q3.')/2,(q3.'-q2.')/p.sampT,p.sampT),...
                                                        dL22_dq2((q1.'+q2.')/2,(q2.'-q1.')/p.sampT,p.sampT)+dL12_dq1((q2.'+q3.')/2,(q3.'-q2.')/p.sampT,p.sampT),...
                                                        dL23_dq2((q1.'+q2.')/2,(q2.'-q1.')/p.sampT,p.sampT)+dL13_dq1((q2.'+q3.')/2,(q3.'-q2.')/p.sampT,p.sampT),...
                                                        dL24_dq2((q1.'+q2.')/2,(q2.'-q1.')/p.sampT,p.sampT)+dL14_dq1((q2.'+q3.')/2,(q3.'-q2.')/p.sampT,p.sampT),...
                                                        dL25_dq2((q1.'+q2.')/2,(q2.'-q1.')/p.sampT,p.sampT)+dL15_dq1((q2.'+q3.')/2,(q3.'-q2.')/p.sampT,p.sampT),...
                                                        dL26_dq2((q1.'+q2.')/2,(q2.'-q1.')/p.sampT,p.sampT)+dL16_dq1((q2.'+q3.')/2,(q3.'-q2.')/p.sampT,p.sampT)]*p.sampT;
        
        
        %q3 is related to dL2, 2nd input
        gradceq(1:p.numJ,i+2,(i-1)*p.numJ+1:i*p.numJ)=[dL11_dq2((q2.'+q3.')/2,(q3.'-q2.')/p.sampT,p.sampT),...
                                                       dL12_dq2((q2.'+q3.')/2,(q3.'-q2.')/p.sampT,p.sampT),...
                                                       dL13_dq2((q2.'+q3.')/2,(q3.'-q2.')/p.sampT,p.sampT),...
                                                       dL14_dq2((q2.'+q3.')/2,(q3.'-q2.')/p.sampT,p.sampT),...
                                                       dL15_dq2((q2.'+q3.')/2,(q3.'-q2.')/p.sampT,p.sampT),...
                                                       dL16_dq2((q2.'+q3.')/2,(q3.'-q2.')/p.sampT,p.sampT)]*p.sampT;
        
        
        
        % gradient related to tendons
        % font ankle
        gradceq(1,i,(i-1)*p.numJ+1) = gradceq(1,i,(i-1)*p.numJ+1)-p.ank_stiff/4*p.sampT;
        gradceq(1,i+1,(i-1)*p.numJ+1) = gradceq(1,i+1,(i-1)*p.numJ+1)-2*p.ank_stiff/4*p.sampT;
        gradceq(1,i+2,(i-1)*p.numJ+1) = gradceq(1,i+2,(i-1)*p.numJ+1)-p.ank_stiff/4*p.sampT;
        % back ankle
        gradceq(6,i,i*p.numJ) = gradceq(6,i,i*p.numJ)-p.ank_stiff/4*p.sampT;
        gradceq(6,i+1,i*p.numJ) = gradceq(6,i+1,i*p.numJ)-2*p.ank_stiff/4*p.sampT;
        gradceq(6,i+2,i*p.numJ) = gradceq(6,i+2,i*p.numJ)-p.ank_stiff/4*p.sampT;
        % front knee
        gradceq(2,i,(i-1)*p.numJ+2) = gradceq(2,i,(i-1)*p.numJ+2)-p.knee_stiff/4*p.sampT;
        gradceq(2,i+1,(i-1)*p.numJ+2) = gradceq(2,i+1,(i-1)*p.numJ+2)-2*p.knee_stiff/4*p.sampT;
        gradceq(2,i+2,(i-1)*p.numJ+2) = gradceq(2,i+2,(i-1)*p.numJ+2)-p.knee_stiff/4*p.sampT;
        % back knee
        gradceq(5,i,(i-1)*p.numJ+5) =   gradceq(5,i,(i-1)*p.numJ+5)-p.knee_stiff/4*p.sampT;
        gradceq(5,i+1,(i-1)*p.numJ+5) = gradceq(5,i+1,(i-1)*p.numJ+5)-2*p.knee_stiff/4*p.sampT;
        gradceq(5,i+2,(i-1)*p.numJ+5) = gradceq(5,i+2,(i-1)*p.numJ+5)-p.knee_stiff/4*p.sampT;
        
        
        % gradient related to f_toe
        dTauToe1 =dTau_toe(q1.',f_toe1.')/4*p.sampT;
        dTauToe2 = 2*dTau_toe(q2.',f_toe2.')/4*p.sampT;
        dTauToe3 = dTau_toe(q3.',f_toe3.')/4*p.sampT;
        gradceq(1:p.numJ,i,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(1:p.numJ,i,(i-1)*p.numJ+1:i*p.numJ),[p.numJ,p.numJ])+dTauToe1(1:p.numJ,:);
        gradceq(1:p.numJ,i+1,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(1:p.numJ,i+1,(i-1)*p.numJ+1:i*p.numJ),[p.numJ,p.numJ])+dTauToe2(1:p.numJ,:);
        gradceq(1:p.numJ,i+2,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(1:p.numJ,i+2,(i-1)*p.numJ+1:i*p.numJ),[p.numJ,p.numJ])+dTauToe3(1:p.numJ,:);
        
        % gradient related to f_heel
        dTauHeel1 = dTau_heel(q1.',f_heel1.')/4*p.sampT;
        dTauHeel2 = 2*dTau_heel(q2.',f_heel2.')/4*p.sampT;
        dTauHeel3 = dTau_heel(q3.',f_heel3.')/4*p.sampT;
        gradceq(1:p.numJ,i,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(1:p.numJ,i,(i-1)*p.numJ+1:i*p.numJ),[p.numJ,p.numJ])+dTauHeel1(1:p.numJ,:);
        gradceq(1:p.numJ,i+1,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(1:p.numJ,i+1,(i-1)*p.numJ+1:i*p.numJ),[p.numJ,p.numJ])+dTauHeel2(1:p.numJ,:);
        gradceq(1:p.numJ,i+2,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(1:p.numJ,i+2,(i-1)*p.numJ+1:i*p.numJ),[p.numJ,p.numJ])+dTauHeel3(1:p.numJ,:);
        
        
        %gradient related to joint friction
        gradceq(1:p.numJ,i,(i-1)*p.numJ+1:i*p.numJ)=reshape(gradceq(1:p.numJ,i,(i-1)*p.numJ+1:i*p.numJ),[p.numJ,p.numJ])+eye(p.numJ)*p.joint_fri/2;
        gradceq(1:p.numJ,i+2,(i-1)*p.numJ+1:i*p.numJ)=reshape(gradceq(1:p.numJ,i+2,(i-1)*p.numJ+1:i*p.numJ),[p.numJ,p.numJ])-eye(p.numJ)*p.joint_fri/2;
        
    end
    
    
end
f = 0.5*(ceq.'*ceq);
gradceq = reshape(gradceq,[p.numJ*size(x,2),size(ceq,1)]);
dfx = gradceq*ceq;
end

