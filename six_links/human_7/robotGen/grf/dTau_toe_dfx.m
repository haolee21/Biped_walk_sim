function dTau_toe_dfx = dTau_toe_dfx(in1,in2,Fx,H,k,cmax,dmax,sampT)
%DTAU_TOE_DFX
%    DTAU_TOE_DFX = DTAU_TOE_DFX(IN1,IN2,FX,H,K,CMAX,DMAX,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    04-Oct-2020 16:02:10

q_t1 = in1(:,1);
q_t2 = in1(:,2);
q_t3 = in1(:,3);
q_t4 = in1(:,4);
q_t5 = in1(:,5);
q_t6 = in1(:,6);
t2 = q_t1+q_t2;
t3 = sin(t2);
t4 = q_t3+q_t4+t2;
t5 = q_t5+t4;
t6 = sin(t4);
t8 = t3.*4.453122e-1;
t7 = sin(t5);
t9 = -t8;
t10 = t6.*4.453122e-1;
t11 = q_t6+t5-1.092654576325972;
t12 = cos(t11);
t13 = t7.*4.60062e-1;
t14 = -t10;
t15 = -t13;
t16 = t12.*1.690282735215953e-1;
t17 = -t16;
t18 = t14+t15+t17;
dTau_toe_dfx = [t9+t18-sin(q_t1).*4.60062e-1,t9+t18,t18,t18,t15+t17,t17];
