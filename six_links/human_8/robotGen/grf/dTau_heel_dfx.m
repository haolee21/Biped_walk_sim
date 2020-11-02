function dTau_heel_dfx = dTau_heel_dfx(in1,in2,Fx,H,k,cmax,dmax,sampT)
%DTAU_HEEL_DFX
%    DTAU_HEEL_DFX = DTAU_HEEL_DFX(IN1,IN2,FX,H,K,CMAX,DMAX,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    30-Oct-2020 12:39:35

q_t1 = in1(:,1);
q_t2 = in1(:,2);
q_t3 = in1(:,3);
q_t4 = in1(:,4);
q_t5 = in1(:,5);
q_t6 = in1(:,6);
t2 = q_t1+q_t2;
t9 = atan(5.145162352941177e-1);
t14 = 7.878221328233238e+18;
t3 = sin(t2);
t4 = q_t3+q_t4+t2;
t5 = q_t5+t4;
t6 = sin(t4);
t8 = t3.*4.453122e-1;
t7 = sin(t5);
t10 = -t8;
t11 = t6.*4.453122e-1;
t16 = q_t6+t5+t9;
t12 = t7.*4.60062e-1;
t13 = -t11;
t17 = cos(t16);
t15 = -t12;
t18 = (t14.*t17)./9.007199254740992e+19;
t19 = -t18;
t20 = t13+t15+t19;
dTau_heel_dfx = [t10+t20-sin(q_t1).*4.60062e-1,t10+t20,t20,t20,t15+t19,t19];
