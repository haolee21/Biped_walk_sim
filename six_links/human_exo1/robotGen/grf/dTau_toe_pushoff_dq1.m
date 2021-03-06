function dTau_toe_pushoff_dq1 = dTau_toe_pushoff_dq1(in1,in2,Fx,Fy,H,k,cmax,dmax,sampT)
%DTAU_TOE_PUSHOFF_DQ1
%    DTAU_TOE_PUSHOFF_DQ1 = DTAU_TOE_PUSHOFF_DQ1(IN1,IN2,FX,FY,H,K,CMAX,DMAX,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    04-Dec-2020 16:38:33

q_t1 = in1(:,1);
q_t2 = in1(:,2);
q_t3 = in1(:,3);
q_t4 = in1(:,4);
q_t5 = in1(:,5);
q_t6 = in1(:,6);
t2 = q_t1+q_t2;
t13 = atan(5.18251222829003e-1);
t14 = atan(1.929566117647059);
t15 = 1.903089174117337e+18;
t3 = cos(t2);
t4 = sin(t2);
t5 = q_t3+q_t4+t2;
t20 = -t14;
t6 = cos(t5);
t7 = q_t5+t5;
t8 = sin(t5);
t11 = t3.*4.453122e-1;
t12 = t4.*4.453122e-1;
t9 = sin(t7);
t10 = cos(t7);
t16 = t6.*4.453122e-1;
t17 = t8.*4.453122e-1;
t21 = q_t6+t7+t13;
t23 = q_t6+t7+t20;
t18 = t10.*4.60062e-1;
t19 = t9.*4.60062e-1;
t22 = sin(t21);
t24 = sin(t23);
t25 = (t15.*t22)./1.125899906842624e+19;
t26 = (Fy.*t15.*t22)./2.251799813685248e+19;
t28 = (t15.*t24)./1.125899906842624e+19;
t30 = (Fx.*t15.*t24)./2.251799813685248e+19;
t27 = -t26;
t29 = -t28;
t31 = t19+t25;
t32 = t18+t29;
t33 = (Fy.*t31)./2.0;
t37 = t17+t31;
t43 = t27+t30;
t34 = -t33;
t35 = (Fx.*t32)./2.0;
t38 = t16+t32;
t39 = (Fy.*t37)./2.0;
t44 = t12+t37;
t36 = -t35;
t40 = -t39;
t41 = (Fx.*t38)./2.0;
t45 = t11+t38;
t46 = (Fy.*t44)./2.0;
t42 = -t41;
t47 = -t46;
t48 = (Fx.*t45)./2.0;
t50 = t34+t36;
t49 = -t48;
t51 = t40+t42;
t52 = t47+t49;
dTau_toe_pushoff_dq1 = reshape([Fx.*(t45+cos(q_t1).*4.60062e-1).*(-1.0./2.0)-(Fy.*(t44+sin(q_t1).*4.60062e-1))./2.0,t52,t51,t51,t50,t43,t52,t52,t51,t51,t50,t43,t51,t51,t51,t51,t50,t43,t51,t51,t51,t51,t50,t43,t50,t50,t50,t50,t50,t43,t43,t43,t43,t43,t43,t43],[6,6]);
