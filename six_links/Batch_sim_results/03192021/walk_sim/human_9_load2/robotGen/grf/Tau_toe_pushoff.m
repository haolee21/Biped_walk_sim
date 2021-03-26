function Tau_toe_pushoff = Tau_toe_pushoff(in1,in2,Fx,Fy,H,k,cmax,dmax,sampT)
%TAU_TOE_PUSHOFF
%    TAU_TOE_PUSHOFF = TAU_TOE_PUSHOFF(IN1,IN2,FX,FY,H,K,CMAX,DMAX,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    18-Feb-2021 20:26:38

q_t1 = in1(:,1);
q_t2 = in1(:,2);
q_t3 = in1(:,3);
q_t4 = in1(:,4);
q_t5 = in1(:,5);
q_t6 = in1(:,6);
t2 = q_t1+q_t2;
t17 = atan(4.618051608502898e-1);
t18 = atan(2.165415384615385);
t19 = 1.1978829188531e+18;
t3 = cos(t2);
t4 = sin(t2);
t5 = q_t3+q_t4+t2;
t20 = -t18;
t6 = cos(t5);
t7 = q_t5+t5;
t8 = sin(t5);
t11 = t3.*4.4835e-1;
t12 = t4.*4.4835e-1;
t9 = sin(t7);
t10 = cos(t7);
t13 = t6.*4.4835e-1;
t14 = t8.*4.4835e-1;
t21 = q_t6+t7+t17;
t23 = q_t6+t7+t20;
t15 = t10.*4.5018e-1;
t16 = t9.*4.5018e-1;
t22 = cos(t21);
t24 = cos(t23);
t25 = (t19.*t22)./7.0368744177664e+18;
t26 = (t19.*t24)./7.0368744177664e+18;
t27 = t13+t15+t25;
t29 = t14+t16+t26;
t28 = Fy.*t27;
t30 = Fx.*t29;
t31 = -t30;
t32 = t28+t31;
Tau_toe_pushoff = [Fy.*(t11+t27+cos(q_t1).*4.5018e-1)-Fx.*(t12+t29+sin(q_t1).*4.5018e-1);-Fx.*(t12+t29)+Fy.*(t11+t27);t32;t32;-Fx.*(t16+t26)+Fy.*(t15+t25);Fy.*t25-(Fx.*t19.*t24)./7.0368744177664e+18];
