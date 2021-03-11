function dTau_toe_pushoff_dq1 = dTau_toe_pushoff_dq1(in1,in2,Fx,Fy,H,k,cmax,dmax,sampT)
%DTAU_TOE_PUSHOFF_DQ1
%    DTAU_TOE_PUSHOFF_DQ1 = DTAU_TOE_PUSHOFF_DQ1(IN1,IN2,FX,FY,H,K,CMAX,DMAX,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    29-Jan-2021 13:33:00

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
t22 = sin(t21);
t24 = sin(t23);
t25 = (t19.*t22)./7.0368744177664e+18;
t26 = (Fy.*t19.*t22)./1.40737488355328e+19;
t27 = (t19.*t24)./7.0368744177664e+18;
t30 = (Fx.*t19.*t24)./1.40737488355328e+19;
t28 = -t26;
t29 = -t27;
t31 = t16+t25;
t32 = t15+t29;
t33 = (Fy.*t31)./2.0;
t37 = t14+t31;
t49 = t28+t30;
t34 = -t33;
t35 = (Fx.*t32)./2.0;
t38 = t13+t32;
t39 = (Fy.*t37)./2.0;
t43 = t12+t37;
t36 = -t35;
t40 = -t39;
t41 = (Fx.*t38)./2.0;
t44 = t11+t38;
t45 = (Fy.*t43)./2.0;
t42 = -t41;
t46 = -t45;
t47 = (Fx.*t44)./2.0;
t50 = t34+t36;
t48 = -t47;
t51 = t40+t42;
t52 = t46+t48;
dTau_toe_pushoff_dq1 = reshape([Fx.*(t44+cos(q_t1).*4.5018e-1).*(-1.0./2.0)-(Fy.*(t43+sin(q_t1).*4.5018e-1))./2.0,t52,t51,t51,t50,t49,t52,t52,t51,t51,t50,t49,t51,t51,t51,t51,t50,t49,t51,t51,t51,t51,t50,t49,t50,t50,t50,t50,t50,t49,t49,t49,t49,t49,t49,t49],[6,6]);
