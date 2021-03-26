function dTau_heel_dfx = dTau_heel_dfx(in1,in2,Fx,H,k,cmax,dmax,sampT)
%DTAU_HEEL_DFX
%    DTAU_HEEL_DFX = DTAU_HEEL_DFX(IN1,IN2,FX,H,K,CMAX,DMAX,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    18-Feb-2021 20:29:23

q_t1 = in1(:,1);
q_t2 = in1(:,2);
q_t3 = in1(:,3);
q_t4 = in1(:,4);
q_t5 = in1(:,5);
q_t6 = in1(:,6);
t2 = q_t1+q_t2;
t14 = atan(5.774051282051283e-1);
t15 = 1.546478599905513e+18;
t3 = sin(t2);
t4 = q_t3+q_t4+t2;
t5 = q_t5+t4;
t6 = sin(t4);
t8 = t3.*4.4835e-1;
t7 = sin(t5);
t9 = -t8;
t10 = t6.*4.4835e-1;
t16 = q_t6+t5+t14;
t11 = t7.*4.5018e-1;
t12 = -t10;
t17 = cos(t16);
t13 = -t11;
t18 = t15.*t17.*5.329070518200751e-20;
t19 = -t18;
t20 = t12+t13+t19;
dTau_heel_dfx = [t9+t20-sin(q_t1).*4.5018e-1,t9+t20,t20,t20,t13+t19,t19];
