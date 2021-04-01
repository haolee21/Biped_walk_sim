function [ceq,gradceq] = dynConst_discrete(x,p)



ceq = zeros(p.numJ*(size(x,2)-2),1);

gradceq = zeros(size(x,1),size(x,2),size(ceq,1));




for i=1:size(x,2)-2
    
    
    q1 = x(1:p.numJ,i);
    q2 = x(1:p.numJ,i+1);
    q3 = x(1:p.numJ,i+2);
    
    u1 = x(p.numJ+1:p.numJ*2,i);
    u2 = x(p.numJ+1:p.numJ*2,i+1);
    u3 = x(p.numJ+1:p.numJ*2,i+2);
    
    fx_toe1 = (x(p.numJ*2+1,i)+x(p.numJ*2+1,i+1))/2;
    fx_toe2 = (x(p.numJ*2+1,i+1)+x(p.numJ*2+1,i+2))/2;
    
    
    fx_heel1 = (x(p.numJ*2+2,i)+x(p.numJ*2+2,i+1))/2;
    fx_heel2 = (x(p.numJ*2+2,i+1)+x(p.numJ*2+2,i+2))/2;
    
    fy_toe1 = (x(p.numJ*2+3,i)+x(p.numJ*2+3,i+1))/2;
    fy_toe2 = (x(p.numJ*2+3,i+1)+x(p.numJ*2+3,i+2))/2;
    
    tend_ank1_1 = [0,0,0,0,0,0];
    tend_ank1_2 = [0,0,0,0,0,0];
    tend_ank1_3 = [0,0,0,0,0,0];
%     qank1 = (q1(1,1)+2*q2(1,1)+q3(1,1))/4;
%     if qank1>pi/2 %1.3963   %pi/2, change to 80 deg since achillis tendon is extended when stand straight 
%         tend_ank1_1 = [pi/2-q1(1,1),0,0,0,0,0]*p.ank_stiff;
%         tend_ank1_2 = [pi/2-q2(1,1),0,0,0,0,0]*p.ank_stiff;
%         tend_ank1_3 = [pi/2-q3(1,1),0,0,0,0,0]*p.ank_stiff;
%         
%     end
    if q1(1,1)>pi/2
        tend_ank1_1 = [pi/2-q1(1,1),0,0,0,0,0]*p.ank_stiff;
    end
    if q2(1,1)>pi/2
        tend_ank1_2 = [pi/2-q2(1,1),0,0,0,0,0]*p.ank_stiff;
    end
    if q3(1,1)>pi/2
        tend_ank1_3 = [pi/2-q3(1,1),0,0,0,0,0]*p.ank_stiff;
    end
    
    
    
    tend_ank2_1 = [0,0,0,0,0,0];
    tend_ank2_2 = [0,0,0,0,0,0];
    tend_ank2_3 = [0,0,0,0,0,0];
    
%     qank2 = (q1(6,1)+2*q2(6,1)+q3(6,1))/4;
%     if qank2 < -pi/2 %-1.3963
%         tend_ank2_1 = [0,0,0,0,0,-pi/2-q1(6,1)]*p.ank_stiff;
%         tend_ank2_2 = [0,0,0,0,0,-pi/2-q2(6,1)]*p.ank_stiff;
%         tend_ank2_3 = [0,0,0,0,0,-pi/2-q3(6,1)]*p.ank_stiff;
%     end
    
    if q1(6,1)<-pi/2
        tend_ank2_1 = [0,0,0,0,0,-pi/2-q1(6,1)]*p.ank_stiff;
    end
    if q2(6,1)<-pi/2
        tend_ank2_2 = [0,0,0,0,0,-pi/2-q2(6,1)]*p.ank_stiff;
    end
    if q3(6,1)<-pi/2
        tend_ank2_3 = [0,0,0,0,0,-pi/2-q3(6,1)]*p.ank_stiff;
    end
    
    tend_kne1_1 = [0,-q1(2,1),0,0,0,0]*p.knee_stiff1;
    tend_kne1_2 = [0,-q2(2,1),0,0,0,0]*p.knee_stiff1;
    tend_kne1_3 = [0,-q3(2,1),0,0,0,0]*p.knee_stiff1;
    
    
    tend_kne2_1 = [0,0,0,0,-q1(5,1),0]*p.knee_stiff2;
    tend_kne2_2 = [0,0,0,0,-q2(5,1),0]*p.knee_stiff2;
    tend_kne2_3 = [0,0,0,0,-q3(5,1),0]*p.knee_stiff2;
    
    qHip1 = (q1(3,1)+2*q2(3,1)+q3(3,1))/4;
    if qHip1>0
        tend_hip1_1 = [0,0,-q1(3,1),0,0,0]*p.hip_stiff;
        tend_hip1_2 = [0,0,-q2(3,1),0,0,0]*p.hip_stiff;
        tend_hip1_3 = [0,0,-q3(3,1),0,0,0]*p.hip_stiff;
    else
        tend_hip1_1 = zeros(1,p.numJ);
        tend_hip1_2 = zeros(1,p.numJ);
        tend_hip1_3 = zeros(1,p.numJ);
    end
    qHip2 = (q1(4,1)+2*q2(4,1)+q3(4,1))/4;
    if qHip2<pi
        tend_hip2_1 = [0,0,0,-pi-q1(4,1),0,0]*p.hip_stiff;
        tend_hip2_2 = [0,0,0,-pi-q2(4,1),0,0]*p.hip_stiff;
        tend_hip2_3 = [0,0,0,-pi-q3(4,1),0,0]*p.hip_stiff;
        
    else
        tend_hip2_1 = zeros(1,p.numJ);
        tend_hip2_2 = zeros(1,p.numJ);
        tend_hip2_3 = zeros(1,p.numJ);
    end
    
    
    
    qtemp21 = (q1.'+q2.')/2;
    qtemp32 = (q2.'+q3.')/2;
    qdiff21 = (q2.'-q1.')/p.sampT;
    qdiff32 = (q3.'-q2.')/p.sampT;
    dL1 = [dL1_1(qtemp32,qdiff32,p.sampT);...
           dL1_2(qtemp32,qdiff32,p.sampT);...
           dL1_3(qtemp32,qdiff32,p.sampT);...
           dL1_4(qtemp32,qdiff32,p.sampT);...
           dL1_5(qtemp32,qdiff32,p.sampT);...
           dL1_6(qtemp32,qdiff32,p.sampT)];
    
    dL2 = [dL2_1(qtemp21,qdiff21,p.sampT);...
           dL2_2(qtemp21,qdiff21,p.sampT);...
           dL2_3(qtemp21,qdiff21,p.sampT);...
           dL2_4(qtemp21,qdiff21,p.sampT);...
           dL2_5(qtemp21,qdiff21,p.sampT);...
           dL2_6(qtemp21,qdiff21,p.sampT)];
    
    u_sum = (u1+2*u2+u3)/4;
    
    tau_toe_flag1 =0;
    tau_toe_1 = zeros(p.numJ,1);
    tau_toe_flag2=0;
    tau_toe_2 = zeros(p.numJ,1);
    tau_heel_flag1=0;
    tau_heel_flag2=0;
    tau_heel_1 = zeros(p.numJ,1);
    tau_heel_2 = zeros(p.numJ,1);
    
    
    
    
    
    
    
    
    
    if(i>=p.phase2_idx)    
        if(toePos_y(qtemp21)<p.toe_th)
%             tau_toe_1 = [Tau_toe_1(qtemp21,qdiff21,fx_toe1,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
%                          Tau_toe_2(qtemp21,qdiff21,fx_toe1,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
%                          Tau_toe_3(qtemp21,qdiff21,fx_toe1,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
%                          Tau_toe_4(qtemp21,qdiff21,fx_toe1,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
%                          Tau_toe_5(qtemp21,qdiff21,fx_toe1,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
%                          Tau_toe_6(qtemp21,qdiff21,fx_toe1,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT)];
               tau_toe_1 = Tau_toe(qtemp21,qdiff21,fx_toe1,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
                
            tau_toe_flag1=1; 
        end
        if(toePos_y(qtemp32)<p.toe_th)
%             tau_toe_2 = [Tau_toe_1(qtemp32,qdiff32,fx_toe2,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
%                          Tau_toe_2(qtemp32,qdiff32,fx_toe2,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
%                          Tau_toe_3(qtemp32,qdiff32,fx_toe2,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
%                          Tau_toe_4(qtemp32,qdiff32,fx_toe2,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
%                          Tau_toe_5(qtemp32,qdiff32,fx_toe2,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
%                          Tau_toe_6(qtemp32,qdiff32,fx_toe2,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT)];
            tau_toe_2 = Tau_toe(qtemp32,qdiff32,fx_toe2,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
                           
            tau_toe_flag2=1; 
        end
        if(i>size(x,2)/2)
            if(heelPos_y(qtemp21)<p.toe_th)
%                 tau_heel_1 = [Tau_heel_1(qtemp21,qdiff21,fx_heel1,p.toe_th,p.k,p.cmax_heel,p.dmax,p.sampT);
%                               Tau_heel_2(qtemp21,qdiff21,fx_heel1,p.toe_th,p.k,p.cmax_heel,p.dmax,p.sampT);
%                               Tau_heel_3(qtemp21,qdiff21,fx_heel1,p.toe_th,p.k,p.cmax_heel,p.dmax,p.sampT);
%                               Tau_heel_4(qtemp21,qdiff21,fx_heel1,p.toe_th,p.k,p.cmax_heel,p.dmax,p.sampT);
%                               Tau_heel_5(qtemp21,qdiff21,fx_heel1,p.toe_th,p.k,p.cmax_heel,p.dmax,p.sampT);
%                               Tau_heel_6(qtemp21,qdiff21,fx_heel1,p.toe_th,p.k,p.cmax_heel,p.dmax,p.sampT)];
                tau_heel_1 = Tau_heel(qtemp21,qdiff21,fx_heel1,p.toe_th,p.k,p.cmax_heel,p.dmax,p.sampT);
                              
                tau_heel_flag1=1; 
            end
            if(heelPos_y(qtemp32)<p.toe_th)
%                 tau_heel_2 = [Tau_heel_1(qtemp32,qdiff32,fx_heel2,p.toe_th,p.k,p.cmax_heel,p.dmax,p.sampT);
%                               Tau_heel_2(qtemp32,qdiff32,fx_heel2,p.toe_th,p.k,p.cmax_heel,p.dmax,p.sampT);
%                               Tau_heel_3(qtemp32,qdiff32,fx_heel2,p.toe_th,p.k,p.cmax_heel,p.dmax,p.sampT);
%                               Tau_heel_4(qtemp32,qdiff32,fx_heel2,p.toe_th,p.k,p.cmax_heel,p.dmax,p.sampT);
%                               Tau_heel_5(qtemp32,qdiff32,fx_heel2,p.toe_th,p.k,p.cmax_heel,p.dmax,p.sampT);
%                               Tau_heel_6(qtemp32,qdiff32,fx_heel2,p.toe_th,p.k,p.cmax_heel,p.dmax,p.sampT)];
                tau_heel_2 = Tau_heel(qtemp32,qdiff32,fx_heel2,p.toe_th,p.k,p.cmax_heel,p.dmax,p.sampT);
                tau_heel_flag2=1; 
            end
        end
        
        
    else
        if(i<=p.phase1_idx)
            
            tau_toe_1 = Tau_toe_pushoff(qtemp21,qdiff21,fx_toe1,fy_toe1,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
            tau_toe_2 = Tau_toe_pushoff(qtemp32,qdiff32,fx_toe2,fy_toe2,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
            
            tau_heel_1 = zeros(p.numJ,1);
            tau_heel_2 = zeros(p.numJ,1);
        end
    end
    tau_toe = (tau_toe_1+tau_toe_2)/2;
    tau_heel = (tau_heel_1+tau_heel_2)/2;
    
    tend_ank1 = (tend_ank1_1+2*tend_ank1_2+tend_ank1_3).'/4;
    tend_ank2 = (tend_ank2_1+2*tend_ank2_2+tend_ank2_3).'/4;
    
    tend_kne1 = (tend_kne1_1+2*tend_kne1_2+tend_kne1_3).'/4;
    tend_kne2 = (tend_kne2_1+2*tend_kne2_2+tend_kne2_3).'/4;
    
    tend_hip1 = (tend_hip1_1+2*tend_hip1_2+tend_hip1_3).'/4;
    tend_hip2 = (tend_hip2_1+2*tend_hip2_2+tend_hip2_3).'/4;
    
    dq =(q3-q1)/p.sampT;
    fri_tau = p.joint_fri*eye(p.numJ)*dq; %we simplify many terms here, dq1 = (q2-q1)/sampT,  dq2 = (q3-q2)/sampT, thus, the average is (q3-q1)/2/sampT
%     
%     
    
    
    ceq((i-1)*p.numJ+1:i*p.numJ,1) = dL1+dL2+u_sum+tau_toe+tau_heel+tend_ank1+tend_ank2+tend_kne1+tend_kne2+tend_hip1+tend_hip2-fri_tau;


    
    %% now we solve the gradient
    
    if nargout>1
        % the gradient will be a little complicated since for ever
        % constraints it will be related to 3 different time states
        
        
        % gradient related to Lagrangian
        %q1 is related to dL2, first input
        
        
        gradceq(1:p.numJ,i,(i-1)*p.numJ+1:i*p.numJ)=[dL21_dq1(qtemp21,qdiff21,p.sampT),...
                                                     dL22_dq1(qtemp21,qdiff21,p.sampT),...
                                                     dL23_dq1(qtemp21,qdiff21,p.sampT),...
                                                     dL24_dq1(qtemp21,qdiff21,p.sampT),...
                                                     dL25_dq1(qtemp21,qdiff21,p.sampT),...
                                                     dL26_dq1(qtemp21,qdiff21,p.sampT)];
        
        
        
        %q2 is related to dL2, first input, dL1, 2nd input
        gradceq(1:p.numJ,i+1,(i-1)*p.numJ+1:i*p.numJ)= [dL21_dq2(qtemp21,qdiff21,p.sampT)+dL11_dq1(qtemp32,qdiff32,p.sampT),...
                                                        dL22_dq2(qtemp21,qdiff21,p.sampT)+dL12_dq1(qtemp32,qdiff32,p.sampT),...
                                                        dL23_dq2(qtemp21,qdiff21,p.sampT)+dL13_dq1(qtemp32,qdiff32,p.sampT),...
                                                        dL24_dq2(qtemp21,qdiff21,p.sampT)+dL14_dq1(qtemp32,qdiff32,p.sampT),...
                                                        dL25_dq2(qtemp21,qdiff21,p.sampT)+dL15_dq1(qtemp32,qdiff32,p.sampT),...
                                                        dL26_dq2(qtemp21,qdiff21,p.sampT)+dL16_dq1(qtemp32,qdiff32,p.sampT)];
        
        
        %q3 is related to dL2, 2nd input
        gradceq(1:p.numJ,i+2,(i-1)*p.numJ+1:i*p.numJ)=[dL11_dq2(qtemp32,qdiff32,p.sampT),...
                                                       dL12_dq2(qtemp32,qdiff32,p.sampT),...
                                                       dL13_dq2(qtemp32,qdiff32,p.sampT),...
                                                       dL14_dq2(qtemp32,qdiff32,p.sampT),...
                                                       dL15_dq2(qtemp32,qdiff32,p.sampT),...
                                                       dL16_dq2(qtemp32,qdiff32,p.sampT)];        
        
        
        % gradient related to tendons
        % font ankle
%         if qank1>pi/2 %1.3963
%             
%             gradceq(1,i,(i-1)*p.numJ+1) = gradceq(1,i,(i-1)*p.numJ+1)-p.ank_stiff/4;
%             gradceq(1,i+1,(i-1)*p.numJ+1) = gradceq(1,i+1,(i-1)*p.numJ+1)-p.ank_stiff/2;
%             gradceq(1,i+2,(i-1)*p.numJ+1) = gradceq(1,i+2,(i-1)*p.numJ+1)-p.ank_stiff/4;
%         end
        
        if q1(1,1)>pi/2
            gradceq(1,i,(i-1)*p.numJ+1) = gradceq(1,i,(i-1)*p.numJ+1)-p.ank_stiff/4;
        end
        if q2(1,1)>pi/2
            gradceq(1,i+1,(i-1)*p.numJ+1) = gradceq(1,i+1,(i-1)*p.numJ+1)-p.ank_stiff/2;
        end
        if q3(1,1)>pi/2
            gradceq(1,i+2,(i-1)*p.numJ+1) = gradceq(1,i+2,(i-1)*p.numJ+1)-p.ank_stiff/4;
        end
        
        % back ankle
%         if qank2<-pi/2 %1.3963
%             gradceq(6,i,i*p.numJ) = gradceq(6,i,i*p.numJ)-p.ank_stiff/4;
%             gradceq(6,i+1,i*p.numJ) = gradceq(6,i+1,i*p.numJ)-p.ank_stiff/2;
%             gradceq(6,i+2,i*p.numJ) = gradceq(6,i+2,i*p.numJ)-p.ank_stiff/4;
%         end
        
        if q1(6,1)<-pi/2
            gradceq(6,i,i*p.numJ) = gradceq(6,i,i*p.numJ)-p.ank_stiff/4;
        end
        if q2(6,1)<-pi/2
            gradceq(6,i+1,i*p.numJ) = gradceq(6,i+1,i*p.numJ)-p.ank_stiff/2;
        end
        if q3(6,1)<-pi/2
            gradceq(6,i+2,i*p.numJ) = gradceq(6,i+2,i*p.numJ)-p.ank_stiff/4;
        end
        
        
        % font knee
        gradceq(2,i,(i-1)*p.numJ+2) = gradceq(2,i,(i-1)*p.numJ+2)-p.knee_stiff1/4;
        gradceq(2,i+1,(i-1)*p.numJ+2) = gradceq(2,i+1,(i-1)*p.numJ+2)-p.knee_stiff1/2;
        gradceq(2,i+2,(i-1)*p.numJ+2) = gradceq(2,i+2,(i-1)*p.numJ+2)-p.knee_stiff1/4;
        % back knee
        gradceq(5,i,(i-1)*p.numJ+5) =   gradceq(5,i,(i-1)*p.numJ+5)-p.knee_stiff2/4;
        gradceq(5,i+1,(i-1)*p.numJ+5) = gradceq(5,i+1,(i-1)*p.numJ+5)-p.knee_stiff2/2;
        gradceq(5,i+2,(i-1)*p.numJ+5) = gradceq(5,i+2,(i-1)*p.numJ+5)-p.knee_stiff2/4;
        % front hip 
        if qHip1>0
            gradceq(3,i,(i-1)*p.numJ+3) = gradceq(3,i,(i-1)*p.numJ+3)-p.hip_stiff/4;
            gradceq(3,i+1,(i-1)*p.numJ+3) = gradceq(3,i+1,(i-1)*p.numJ+3)-p.hip_stiff/2;
            gradceq(3,i+2,(i-1)*p.numJ+3) = gradceq(3,i+2,(i-1)*p.numJ+3)-p.hip_stiff/4;
        end
        if qHip2<pi
            gradceq(4,i,(i-1)*p.numJ+4) = gradceq(4,i,(i-1)*p.numJ+4)-p.hip_stiff/4;
            gradceq(4,i+1,(i-1)*p.numJ+4) = gradceq(4,i+1,(i-1)*p.numJ+4)-p.hip_stiff/2;
            gradceq(4,i+2,(i-1)*p.numJ+4) = gradceq(4,i+2,(i-1)*p.numJ+4)-p.hip_stiff/4;
        end
        
        % gradient related to u
        gradceq(p.numJ+1:2*p.numJ,i,(i-1)*p.numJ+1:i*p.numJ) =eye(p.numJ)/4;
        gradceq(p.numJ+1:2*p.numJ,i+1,(i-1)*p.numJ+1:i*p.numJ) = eye(p.numJ)/2;
        gradceq(p.numJ+1:2*p.numJ,i+2,(i-1)*p.numJ+1:i*p.numJ) = eye(p.numJ)/4;
        
        
        % gradient related to Tau_toe
        
        if(i>p.phase1_idx)
            if(i>=p.phase2_idx)
                if tau_toe_flag1==1
                    gradceq(1:p.numJ,i,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(1:p.numJ,i,(i-1)*p.numJ+1:i*p.numJ),[p.numJ,p.numJ])+    0.5*dTau_toe_dq1(qtemp21,qdiff21,fx_toe1,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
                    gradceq(1:p.numJ,i+1,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(1:p.numJ,i+1,(i-1)*p.numJ+1:i*p.numJ),[p.numJ,p.numJ])+0.5*dTau_toe_dq2(qtemp21,qdiff21,fx_toe1,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
                    gradceq(2*p.numJ+1,i,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(2*p.numJ+1,i,(i-1)*p.numJ+1:i*p.numJ),[1,p.numJ])+0.25*dTau_toe_dfx(qtemp21,qdiff21,fx_toe1,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
                    gradceq(2*p.numJ+1,i+1,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(2*p.numJ+1,i+1,(i-1)*p.numJ+1:i*p.numJ),[1,p.numJ])+0.25*dTau_toe_dfx(qtemp21,qdiff21,fx_toe1,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
                end
                if tau_toe_flag2==1
                    gradceq(1:p.numJ,i+1,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(1:p.numJ,i+1,(i-1)*p.numJ+1:i*p.numJ),[p.numJ,p.numJ])+0.5*dTau_toe_dq1(qtemp32,qdiff32,fx_toe2,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
                    gradceq(1:p.numJ,i+2,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(1:p.numJ,i+2,(i-1)*p.numJ+1:i*p.numJ),[p.numJ,p.numJ])+0.5*dTau_toe_dq2(qtemp32,qdiff32,fx_toe2,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
                    gradceq(2*p.numJ+1,i+1,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(2*p.numJ+1,i+1,(i-1)*p.numJ+1:i*p.numJ),[1,p.numJ])+0.25*dTau_toe_dfx(qtemp32,qdiff32,fx_toe2,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
                    gradceq(2*p.numJ+1,i+2,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(2*p.numJ+1,i+2,(i-1)*p.numJ+1:i*p.numJ),[1,p.numJ])+0.25*dTau_toe_dfx(qtemp32,qdiff32,fx_toe2,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
                end
                
                if tau_heel_flag1==1
                    gradceq(1:p.numJ,i,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(1:p.numJ,i,(i-1)*p.numJ+1:i*p.numJ),[p.numJ,p.numJ])+0.5*dTau_heel_dq1(qtemp21,qdiff21,fx_heel1,p.toe_th,p.k,p.cmax_heel,p.dmax,p.sampT);
                    gradceq(1:p.numJ,i+1,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(1:p.numJ,i+1,(i-1)*p.numJ+1:i*p.numJ),[p.numJ,p.numJ])+0.5*dTau_heel_dq2(qtemp21,qdiff21,fx_heel1,p.toe_th,p.k,p.cmax_heel,p.dmax,p.sampT);
                    
                    gradceq(2*p.numJ+2,i,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(2*p.numJ+2,i,(i-1)*p.numJ+1:i*p.numJ),[1,p.numJ])+0.25*dTau_heel_dfx(qtemp21,qdiff21,fx_heel1,p.toe_th,p.k,p.cmax_heel,p.dmax,p.sampT);
                    gradceq(2*p.numJ+2,i+1,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(2*p.numJ+2,i+1,(i-1)*p.numJ+1:i*p.numJ),[1,p.numJ])+0.25*dTau_heel_dfx(qtemp21,qdiff21,fx_heel1,p.toe_th,p.k,p.cmax_heel,p.dmax,p.sampT);
                    
                end
                if tau_heel_flag2==1
                    gradceq(1:p.numJ,i+1,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(1:p.numJ,i+1,(i-1)*p.numJ+1:i*p.numJ),[p.numJ,p.numJ])+0.5*dTau_heel_dq1(qtemp32,qdiff32,fx_heel2,p.toe_th,p.k,p.cmax_heel,p.dmax,p.sampT);
                    gradceq(1:p.numJ,i+2,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(1:p.numJ,i+2,(i-1)*p.numJ+1:i*p.numJ),[p.numJ,p.numJ])+0.5*dTau_heel_dq2(qtemp32,qdiff32,fx_heel2,p.toe_th,p.k,p.cmax_heel,p.dmax,p.sampT);
                    
                    gradceq(2*p.numJ+2,i+1,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(2*p.numJ+2,i+1,(i-1)*p.numJ+1:i*p.numJ),[1,p.numJ])+0.25*dTau_heel_dfx(qtemp32,qdiff32,fx_heel2,p.toe_th,p.k,p.cmax_heel,p.dmax,p.sampT);
                    gradceq(2*p.numJ+2,i+2,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(2*p.numJ+2,i+2,(i-1)*p.numJ+1:i*p.numJ),[1,p.numJ])+0.25*dTau_heel_dfx(qtemp32,qdiff32,fx_heel2,p.toe_th,p.k,p.cmax_heel,p.dmax,p.sampT);
                    
                    
                end
               
            end
        else
            gradceq(1:p.numJ,i,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(1:p.numJ,i,(i-1)*p.numJ+1:i*p.numJ),[p.numJ,p.numJ])+    0.5*dTau_toe_pushoff_dq1(qtemp21,qdiff21,fx_toe1,fy_toe1,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
            gradceq(1:p.numJ,i+1,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(1:p.numJ,i+1,(i-1)*p.numJ+1:i*p.numJ),[p.numJ,p.numJ])+0.5*dTau_toe_pushoff_dq2(qtemp21,qdiff21,fx_toe1,fy_toe1,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
            
            gradceq(2*p.numJ+1,i,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(2*p.numJ+1,i,(i-1)*p.numJ+1:i*p.numJ),[1,p.numJ])+0.25*dTau_toe_pushoff_dfx(qtemp21,qdiff21,fx_toe1,fy_toe1,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
            gradceq(2*p.numJ+1,i+1,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(2*p.numJ+1,i+1,(i-1)*p.numJ+1:i*p.numJ),[1,p.numJ])++0.25*dTau_toe_pushoff_dfx(qtemp21,qdiff21,fx_toe1,fy_toe1,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);

            gradceq(2*p.numJ+3,i,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(2*p.numJ+3,i,(i-1)*p.numJ+1:i*p.numJ),[1,p.numJ])+0.25*dTau_toe_pushoff_dfy(qtemp21,qdiff21,fx_toe1,fy_toe1,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
            gradceq(2*p.numJ+3,i+1,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(2*p.numJ+3,i+1,(i-1)*p.numJ+1:i*p.numJ),[1,p.numJ])+0.25*dTau_toe_pushoff_dfy(qtemp21,qdiff21,fx_toe1,fy_toe1,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);

            
            gradceq(1:p.numJ,i+1,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(1:p.numJ,i+1,(i-1)*p.numJ+1:i*p.numJ),[p.numJ,p.numJ])+0.5*dTau_toe_pushoff_dq1(qtemp32,qdiff32,fx_toe2,fy_toe2,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
            gradceq(1:p.numJ,i+2,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(1:p.numJ,i+2,(i-1)*p.numJ+1:i*p.numJ),[p.numJ,p.numJ])+0.5*dTau_toe_pushoff_dq2(qtemp32,qdiff32,fx_toe2,fy_toe2,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
            
            gradceq(2*p.numJ+1,i+1,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(2*p.numJ+1,i+1,(i-1)*p.numJ+1:i*p.numJ),[1,p.numJ])+0.25*dTau_toe_pushoff_dfx(qtemp32,qdiff32,fx_toe2,fy_toe2,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
            gradceq(2*p.numJ+1,i+2,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(2*p.numJ+1,i+2,(i-1)*p.numJ+1:i*p.numJ),[1,p.numJ])+0.25*dTau_toe_pushoff_dfx(qtemp32,qdiff32,fx_toe2,fy_toe2,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);

            gradceq(2*p.numJ+3,i+1,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(2*p.numJ+3,i+1,(i-1)*p.numJ+1:i*p.numJ),[1,p.numJ])+0.25*dTau_toe_pushoff_dfy(qtemp32,qdiff32,fx_toe2,fy_toe2,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);
            gradceq(2*p.numJ+3,i+2,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(2*p.numJ+3,i+2,(i-1)*p.numJ+1:i*p.numJ),[1,p.numJ])+0.25*dTau_toe_pushoff_dfy(qtemp32,qdiff32,fx_toe2,fy_toe2,p.toe_th,p.k,p.cmax_toe,p.dmax,p.sampT);

            
        end
        
        
        
        %gradient related to joint friction
        gradceq(1:p.numJ,i,(i-1)*p.numJ+1:i*p.numJ)=reshape(gradceq(1:p.numJ,i,(i-1)*p.numJ+1:i*p.numJ),[p.numJ,p.numJ])+eye(p.numJ)*p.joint_fri/p.sampT;
        gradceq(1:p.numJ,i+2,(i-1)*p.numJ+1:i*p.numJ)=reshape(gradceq(1:p.numJ,i+2,(i-1)*p.numJ+1:i*p.numJ),[p.numJ,p.numJ])-eye(p.numJ)*p.joint_fri/p.sampT;
    end
    
    
end
% remove the parts of the gradient we don't need

gradceq_q = gradceq(1:p.numJ,2:end-1,:);
gradceq_u = gradceq(p.numJ+1:2*p.numJ,:,:);
gradceq_fext1=gradceq([2*p.numJ+1,2*p.numJ+3],1:p.phase1_idx,:);
gradceq_fext2=gradceq(2*p.numJ+1:2*p.numJ+2,p.phase2_idx:end,:);

gradceq_q = reshape(gradceq_q,[size(gradceq_q,1)*size(gradceq_q,2),size(gradceq_q,3)]);

gradceq_u = reshape(gradceq_u,[size(gradceq_u,1)*size(gradceq_u,2),size(gradceq_u,3)]);
gradceq_u(1:p.numJ,:) = gradceq_u(1:p.numJ,:)+p.map_A2*gradceq_u(end-p.numJ+1:end,:);
gradceq_u = gradceq_u(1:end-p.numJ,:);

gradceq_fext1 = reshape(gradceq_fext1,[p.varDim.fext1_1*p.varDim.fext1_2,size(ceq,1)]);
gradceq_fext2 = reshape(gradceq_fext2,[p.varDim.fext2_1*p.varDim.fext2_2,size(ceq,1)]);


gradceq = [gradceq_q;gradceq_u;gradceq_fext1;gradceq_fext2];
% ceq=gather(ceq);
% gradceq=gather(gradceq);
end