function dGrf_toe_c4_q2 = dGrf_toe_c4_q2(in1,in2,Fx,sampT)
%DGRF_TOE_C4_Q2
%    DGRF_TOE_C4_Q2 = DGRF_TOE_C4_Q2(IN1,IN2,FX,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    23-Jan-2021 20:04:38

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
t18 = atan(2.165415384615385);
t19 = 1.1978829188531e+18;
t3 = cos(t2);
t4 = sin(t2);
t6 = q_t3+q_t4+t2;
t20 = -t18;
t7 = cos(t6);
t8 = q_t5+t6;
t9 = sin(t6);
t12 = t3.*4.4835e-1;
t13 = t4.*4.4835e-1;
t10 = sin(t8);
t11 = cos(t8);
t14 = t7.*4.4835e-1;
t15 = t9.*4.4835e-1;
t21 = q_t6+t8+t20;
t16 = t11.*4.5018e-1;
t17 = t10.*4.5018e-1;
t22 = cos(t21);
t23 = sin(t21);
t24 = (t19.*t23)./7.0368744177664e+18;
t25 = (t19.*t22)./7.0368744177664e+18;
t28 = qd_t6.*t19.*t23.*(-1.4210854715202e-19);
t26 = -t24;
t27 = qd_t6.*t24;
t31 = t15+t17+t25;
t29 = t16+t26;
t37 = Fx.*t5.*t31;
t30 = qd_t5.*t29;
t32 = t14+t29;
t38 = -t37;
t33 = qd_t1.*t32;
t34 = qd_t2.*t32;
t35 = qd_t3.*t32;
t36 = qd_t4.*t32;
t39 = t12+t32;
t40 = qd_t2.*t39;
t41 = t28+t30+t33+t34+t35+t36;
t42 = (Fx.*t41)./2.0;
t43 = -t42;
t44 = t38+t43;
dGrf_toe_c4_q2 = [Fx.*(t28+t30+t35+t36+t40+qd_t1.*(t39+cos(q_t1).*4.5018e-1)).*(-1.0./2.0)-Fx.*t5.*(t13+t31+sin(q_t1).*4.5018e-1);Fx.*(t28+t30+t35+t36+t40+qd_t1.*t39).*(-1.0./2.0)-Fx.*t5.*(t13+t31);t44;t44;Fx.*(t28+t30+qd_t1.*t29+qd_t2.*t29+qd_t3.*t29+qd_t4.*t29).*(-1.0./2.0)-Fx.*t5.*(t17+t25);(Fx.*(t27+qd_t1.*t24+qd_t2.*t24+qd_t3.*t24+qd_t4.*t24+qd_t5.*t24))./2.0-(Fx.*t5.*t19.*t22)./7.0368744177664e+18];
