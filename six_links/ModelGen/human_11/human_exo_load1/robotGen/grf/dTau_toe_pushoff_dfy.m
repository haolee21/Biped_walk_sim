function dTau_toe_pushoff_dfy = dTau_toe_pushoff_dfy(in1,in2,Fx,Fy,H,k,cmax,dmax,sampT)
%DTAU_TOE_PUSHOFF_DFY
%    DTAU_TOE_PUSHOFF_DFY = DTAU_TOE_PUSHOFF_DFY(IN1,IN2,FX,FY,H,K,CMAX,DMAX,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    16-Apr-2021 13:30:39

q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
q6 = in1(:,6);
t2 = q1+q2;
t11 = atan(4.618051608502898e-1);
t12 = 1.1978829188531e+18;
t3 = cos(t2);
t4 = q3+q4+t2;
t5 = cos(t4);
t6 = q5+t4;
t8 = t3.*4.4835e-1;
t7 = cos(t6);
t9 = t5.*4.4835e-1;
t13 = q6+t6+t11;
t10 = t7.*4.4835e-1;
t14 = cos(t13);
t15 = (t12.*t14)./7.0368744177664e+18;
t16 = t9+t10+t15;
dTau_toe_pushoff_dfy = [t8+t16+cos(q1).*4.4835e-1,t8+t16,t16,t16,t10+t15,t15];
