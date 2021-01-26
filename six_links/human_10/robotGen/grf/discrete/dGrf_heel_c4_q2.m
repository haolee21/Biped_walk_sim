function dGrf_heel_c4_q2 = dGrf_heel_c4_q2(in1,in2,Fx,sampT)
%DGRF_HEEL_C4_Q2
%    DGRF_HEEL_C4_Q2 = DGRF_HEEL_C4_Q2(IN1,IN2,FX,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    22-Jan-2021 21:34:58

q_t1 = in1(:,1);
q_t2 = in1(:,2);
q_t3 = in1(:,3);
q_t4 = in1(:,4);
q_t5 = in1(:,5);
q_t6 = in1(:,6);
qd_t1 = in2(:,1);
qd_t2 = in2(:,2);
qd_t3 = in2(:,3);
qd_t4 = in2(:,4);
qd_t5 = in2(:,5);
qd_t6 = in2(:,6);
t2 = q_t1+q_t2;
t5 = 1.0./sampT;
t18 = atan(5.774051282051282e-1);
t19 = 6.895773429086878e+18;
t3 = cos(t2);
t4 = sin(t2);
t6 = q_t3+q_t4+t2;
t7 = cos(t6);
t8 = q_t5+t6;
t9 = sin(t6);
t12 = t3.*4.165e-1;
t13 = t4.*4.165e-1;
t10 = sin(t8);
t11 = cos(t8);
t14 = t7.*4.165e-1;
t15 = t9.*4.165e-1;
t20 = q_t6+t8+t18;
t16 = t11.*4.182e-1;
t17 = t10.*4.182e-1;
t21 = cos(t20);
t22 = sin(t20);
t23 = (t19.*t21)./9.007199254740992e+19;
t24 = (t19.*t22)./9.007199254740992e+19;
t27 = qd_t6.*t19.*t22.*(-1.110223024625157e-20);
t25 = -t24;
t26 = qd_t6.*t24;
t30 = t15+t17+t23;
t28 = t16+t25;
t36 = Fx.*t5.*t30;
t29 = qd_t5.*t28;
t31 = t14+t28;
t37 = -t36;
t32 = qd_t1.*t31;
t33 = qd_t2.*t31;
t34 = qd_t3.*t31;
t35 = qd_t4.*t31;
t38 = t12+t31;
t39 = qd_t2.*t38;
t40 = t27+t29+t32+t33+t34+t35;
t41 = (Fx.*t40)./2.0;
t42 = -t41;
t43 = t37+t42;
dGrf_heel_c4_q2 = [Fx.*(t27+t29+t34+t35+t39+qd_t1.*(t38+cos(q_t1).*4.182e-1)).*(-1.0./2.0)-Fx.*t5.*(t13+t30+sin(q_t1).*4.182e-1);Fx.*(t27+t29+t34+t35+t39+qd_t1.*t38).*(-1.0./2.0)-Fx.*t5.*(t13+t30);t43;t43;Fx.*(t27+t29+qd_t1.*t28+qd_t2.*t28+qd_t3.*t28+qd_t4.*t28).*(-1.0./2.0)-Fx.*t5.*(t17+t23);(Fx.*(t26+qd_t1.*t24+qd_t2.*t24+qd_t3.*t24+qd_t4.*t24+qd_t5.*t24))./2.0-(Fx.*t5.*t19.*t21)./9.007199254740992e+19];
