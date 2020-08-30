function [u,F_toe,F_heel,s_toe,s_heel] = u_no_ext(q1,q2,q3,p)
%returns the u, c_toe, c_heel for given q1, q2, q3
% the output will be short of 2

q = (q1+2*q2+q3)/4;
s_toe = -Grf_toe_c6(q.',0,p.toe_th);
s_heel= -Grf_heel_c6(q.',0,p.toe_th);
if(s_toe<0)
    s_toe=0;
end
if(s_heel<0)
    s_heel=0;
end

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





tend_ank1 = (tend_ank1_1+2*tend_ank1_2+tend_ank1_3).'/4*p.sampT;
tend_ank2 = (tend_ank2_1+2*tend_ank2_2+tend_ank2_3).'/4*p.sampT;

tend_kne1 = (tend_kne1_1+2*tend_kne1_2+tend_kne1_3).'/4*p.sampT;
tend_kne2 = (tend_kne2_1+2*tend_kne2_2+tend_kne2_3).'/4*p.sampT;

dq =(q3-q1)/2;
fri_tau = p.joint_fri*eye(p.numJ)*dq; %we simplify many terms here, dq1 = (q2-q1)/sampT,  dq2 = (q3-q2)/sampT, thus, the average is (q3-q1)/2/sampT

%calculate Fy, yet we cannot get Fx
Fy_toe = -Grf_toe_c1(q.',dq.',0,s_toe,p.toe_th,p.k,p.cmax,p.dmax);
Fy_heel = -Grf_heel_c1(q.',dq.',0,s_heel,p.toe_th,p.k,p.cmax,p.dmax);
F_toe = [0,Fy_toe];
F_heel = [0,Fy_heel];
tau_toe = Tau_toe(q.',F_toe);
tau_heel = Tau_heel(q.',F_heel);




u=-dL1-dL2-tend_ank1-tend_ank2-tend_kne1-tend_kne2+fri_tau-tau_toe-tau_heel;





end