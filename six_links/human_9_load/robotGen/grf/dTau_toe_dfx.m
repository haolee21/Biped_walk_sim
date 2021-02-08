function dTau_toe_dfx = dTau_toe_dfx(in1,in2,Fx,H,k,cmax,dmax,sampT)
%DTAU_TOE_DFX
%    DTAU_TOE_DFX = DTAU_TOE_DFX(IN1,IN2,FX,H,K,CMAX,DMAX,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    04-Feb-2021 14:04:05

q_t1 = in1(:,1);
q_t2 = in1(:,2);
q_t3 = in1(:,3);
q_t4 = in1(:,4);
q_t5 = in1(:,5);
q_t6 = in1(:,6);
t2 = q_t1+q_t2;
t14 = atan(2.165415384615385);
t15 = 1.1978829188531e+18;
t3 = sin(t2);
t4 = q_t3+q_t4+t2;
t16 = -t14;
t5 = q_t5+t4;
t6 = sin(t4);
t8 = t3.*4.4835e-1;
t7 = sin(t5);
t9 = -t8;
t10 = t6.*4.4835e-1;
t17 = q_t6+t5+t16;
t11 = t7.*4.5018e-1;
t12 = -t10;
t18 = cos(t17);
t13 = -t11;
t19 = (t15.*t18)./7.0368744177664e+18;
t20 = -t19;
t21 = t12+t13+t20;
dTau_toe_dfx = [t9+t21-sin(q_t1).*4.5018e-1,t9+t21,t21,t21,t13+t20,t20];
