function [ceq,gradceq]=dynConst_forwardDyn(x,q,p)


ceq = zeros(p.numJ*(size(x,2)-2),1);
gradceq = zeros(size(x,1),size(x,2),size(ceq,1));
for i=1:size(x,2)-2
    
    
    q1 = q(1:p.numJ,i);
    q2 = q(1:p.numJ,i+1);
    q3 = q(1:p.numJ,i+2);
    
    u1 = x(1:p.numJ,i);
    u2 = x(1:p.numJ,i+1);
    u3 = x(1:p.numJ,i+2);
    
    fx_toe1 = (x(p.numJ+1,i)+x(p.numJ+1,i+1))/2;
    fx_toe2 = (x(p.numJ+1,i+1)+x(p.numJ+1,i+2))/2;

    
    fx_heel1 = (x(p.numJ+2,i)+x(p.numJ+2,i+1))/2;
    fx_heel2 = (x(p.numJ+2,i+1)+x(p.numJ+2,i+2))/2;
    

    
    qank1 = (q1(1,1)+2*q2(1,1)+q3(1,1))/4;
    if qank1>pi/2
        tend_ank1_1 = [pi/2-q1(1,1),0,0,0,0,0]*p.ank_stiff;
        tend_ank1_2 = [pi/2-q2(1,1),0,0,0,0,0]*p.ank_stiff;
        tend_ank1_3 = [pi/2-q3(1,1),0,0,0,0,0]*p.ank_stiff;
    else
        tend_ank1_1 = [0,0,0,0,0,0];
        tend_ank1_2 = [0,0,0,0,0,0];
        tend_ank1_3 = [0,0,0,0,0,0];
    end
        
    
    tend_ank2_1 = [0,0,0,0,0,-pi/2-q1(6,1)]*p.ank_stiff;
    tend_ank2_2 = [0,0,0,0,0,-pi/2-q2(6,1)]*p.ank_stiff;
    tend_ank2_3 = [0,0,0,0,0,-pi/2-q3(6,1)]*p.ank_stiff;
    
    tend_kne1_1 = [0,-q1(2,1),0,0,0,0]*p.knee_stiff;
    tend_kne1_2 = [0,-q2(2,1),0,0,0,0]*p.knee_stiff;
    tend_kne1_3 = [0,-q3(2,1),0,0,0,0]*p.knee_stiff;
    
    tend_kne2_1 = [0,0,0,0,-q1(5,1),0]*p.knee_stiff;
    tend_kne2_2 = [0,0,0,0,-q2(5,1),0]*p.knee_stiff;
    tend_kne2_3 = [0,0,0,0,-q3(5,1),0]*p.knee_stiff;
    
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
    if(toePos_y(qtemp21)<p.toe_th)
        tau_toe_1 = Tau_toe(qtemp21,qdiff21,fx_toe1,p.toe_th,p.k,p.cmax,p.dmax,p.sampT);
        tau_toe_flag1=1;
    else
        tau_toe_1 = zeros(p.numJ,1);
    end
    tau_toe_flag2=0;
    if(toePos_y(qtemp32)<p.toe_th)
        tau_toe_2 = Tau_toe(qtemp32,qdiff32,fx_toe2,p.toe_th,p.k,p.cmax,p.dmax,p.sampT);
        tau_toe_flag2=1;
    else
        tau_toe_2 = zeros(p.numJ,1);
    end
    tau_heel_flag1=0;
    if(heelPos_y(qtemp21)<p.toe_th)
        tau_heel_1 = Tau_heel(qtemp21,qdiff21,fx_heel1,p.toe_th,p.k,p.cmax,p.dmax,p.sampT);
        tau_heel_flag1=1;
    else
        tau_heel_1 = zeros(p.numJ,1);
    end
    tau_heel_flag2=0;
    if(heelPos_y(qtemp32)<p.toe_th)
        tau_heel_2 = Tau_heel(qtemp32,qdiff32,fx_heel2,p.toe_th,p.k,p.cmax,p.dmax,p.sampT);
        tau_heel_flag2=1;
    else
        tau_heel_2 = zeros(p.numJ,1);
    end
    
    
    tau_toe = (tau_toe_1+tau_toe_2)/2;
    tau_heel = (tau_heel_1+tau_heel_2)/2;
    
    
    
    tend_ank1 = (tend_ank1_1+2*tend_ank1_2+tend_ank1_3).'/4;
    tend_ank2 = (tend_ank2_1+2*tend_ank2_2+tend_ank2_3).'/4;
    
    tend_kne1 = (tend_kne1_1+2*tend_kne1_2+tend_kne1_3).'/4;
    tend_kne2 = (tend_kne2_1+2*tend_kne2_2+tend_kne2_3).'/4;
    
    dq =(q3-q1)/p.sampT;
    fri_tau = p.joint_fri*eye(p.numJ)*dq; %we simplify many terms here, dq1 = (q2-q1)/sampT,  dq2 = (q3-q2)/sampT, thus, the average is (q3-q1)/2/sampT
     
    
    ceq((i-1)*p.numJ+1:i*p.numJ,1) = dL1+dL2+u_sum+tau_toe+tau_heel+tend_ank1+tend_ank2+tend_kne1+tend_kne2-fri_tau;

    
    %now we solve the gradient
    
    if nargout>1
        % the gradient will be a little complicated since for ever
        % constraints it will be related to 3 different time states
        
       
        
           
        
        % gradient related to u
        gradceq(1:p.numJ,i,(i-1)*p.numJ+1:i*p.numJ) =eye(p.numJ)/4;
        gradceq(1:p.numJ,i+1,(i-1)*p.numJ+1:i*p.numJ) = eye(p.numJ)/2;
        gradceq(1:p.numJ,i+2,(i-1)*p.numJ+1:i*p.numJ) = eye(p.numJ)/4;
        
        
        % gradient related to Tau_toe
        if tau_toe_flag1==1
            % fx = (fx1+fx2)/2, the gradients of it are both dTau_toe_dfx*0.5
            gradceq(p.numJ+1,i,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(p.numJ+1,i,(i-1)*p.numJ+1:i*p.numJ),[1,p.numJ])    +0.5*dTau_toe_dfx(qtemp21,qdiff21,fx_toe1,p.toe_th,p.k,p.cmax,p.dmax,p.sampT);
            gradceq(p.numJ+1,i+1,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(p.numJ+1,i+1,(i-1)*p.numJ+1:i*p.numJ),[1,p.numJ])+0.5*dTau_toe_dfx(qtemp21,qdiff21,fx_toe1,p.toe_th,p.k,p.cmax,p.dmax,p.sampT);
        end
        if tau_toe_flag2==1
            % fx = (fx1+fx2)/2, the gradients of it are both dTau_toe_dfx*0.5
            gradceq(p.numJ+1,i+1,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(p.numJ+1,i+1,(i-1)*p.numJ+1:i*p.numJ),[1,p.numJ])+0.5*dTau_toe_dfx(qtemp32,qdiff32,fx_toe2,p.toe_th,p.k,p.cmax,p.dmax,p.sampT);
            gradceq(p.numJ+1,i+2,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(p.numJ+1,i+2,(i-1)*p.numJ+1:i*p.numJ),[1,p.numJ])+0.5*dTau_toe_dfx(qtemp32,qdiff32,fx_toe2,p.toe_th,p.k,p.cmax,p.dmax,p.sampT);
            
        end
        
        if tau_heel_flag1==1
         
            % fx = (fx1+fx2)/2, the gradients of it are both dTau_heel_dfx*0.5
            gradceq(p.numJ+2,i,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(p.numJ+2,i,(i-1)*p.numJ+1:i*p.numJ),[1,p.numJ])+0.5*dTau_heel_dfx(qtemp21,qdiff21,fx_heel1,p.toe_th,p.k,p.cmax,p.dmax,p.sampT);
            gradceq(p.numJ+2,i+1,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(p.numJ+2,i+1,(i-1)*p.numJ+1:i*p.numJ),[1,p.numJ])+0.5*dTau_heel_dfx(qtemp21,qdiff21,fx_heel1,p.toe_th,p.k,p.cmax,p.dmax,p.sampT);
        end
        if tau_heel_flag2==1
            
            
            % fx = (fx1+fx2)/2, the gradients of it are both dTau_heel_dfx*0.5
            gradceq(p.numJ+2,i+1,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(p.numJ+2,i+1,(i-1)*p.numJ+1:i*p.numJ),[1,p.numJ])+0.5*dTau_heel_dfx(qtemp32,qdiff32,fx_heel2,p.toe_th,p.k,p.cmax,p.dmax,p.sampT);
            gradceq(p.numJ+2,i+2,(i-1)*p.numJ+1:i*p.numJ) = reshape(gradceq(p.numJ+2,i+2,(i-1)*p.numJ+1:i*p.numJ),[1,p.numJ])+0.5*dTau_heel_dfx(qtemp32,qdiff32,fx_heel2,p.toe_th,p.k,p.cmax,p.dmax,p.sampT);
            
        end
        
        
        
        
        %gradient related to joint friction
        
        
    end
    
    
end
gradceq = reshape(gradceq,[size(x,1)*size(x,2),size(ceq,1)]);

% ceq=gather(ceq);
% gradceq=gather(gradceq);

end