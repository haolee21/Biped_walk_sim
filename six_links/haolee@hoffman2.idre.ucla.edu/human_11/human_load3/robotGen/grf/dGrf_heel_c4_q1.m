function dGrf_heel_c4_q1 = dGrf_heel_c4_q1(in1,in2,Fx,sampT)
%DGRF_HEEL_C4_Q1
%    DGRF_HEEL_C4_Q1 = DGRF_HEEL_C4_Q1(IN1,IN2,FX,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    21-Apr-2021 14:51:05

dq1 = in2(:,1);
dq2 = in2(:,2);
dq3 = in2(:,3);
dq4 = in2(:,4);
dq5 = in2(:,5);
dq6 = in2(:,6);
q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
q6 = in1(:,6);
t2 = q1+q2;
t5 = 1.0./sampT;
t18 = atan(5.774051282051283e-1);
t19 = 1.546478599905513e+18;
t3 = cos(t2);
t4 = sin(t2);
t6 = q3+q4+t2;
t7 = cos(t6);
t8 = q5+t6;
t9 = sin(t6);
t12 = t3.*4.4835e-1;
t13 = t4.*4.4835e-1;
t10 = sin(t8);
t11 = cos(t8);
t14 = t7.*4.4835e-1;
t15 = t9.*4.4835e-1;
t20 = q6+t8+t18;
t16 = t11.*4.4835e-1;
t17 = t10.*4.4835e-1;
t21 = cos(t20);
t22 = sin(t20);
t23 = t19.*t21.*5.329070518200751e-20;
t24 = t19.*t22.*5.329070518200751e-20;
t27 = dq6.*t19.*t22.*(-5.329070518200751e-20);
t25 = -t24;
t26 = dq6.*t24;
t30 = t15+t17+t23;
t28 = t16+t25;
t36 = Fx.*t5.*t30;
t29 = dq5.*t28;
t31 = t14+t28;
t32 = dq1.*t31;
t33 = dq2.*t31;
t34 = dq3.*t31;
t35 = dq4.*t31;
t37 = t12+t31;
t38 = dq2.*t37;
t39 = t27+t29+t32+t33+t34+t35;
t40 = (Fx.*t39)./2.0;
t41 = -t40;
t42 = t36+t41;
dGrf_heel_c4_q1 = [Fx.*(t27+t29+t34+t35+t38+dq1.*(t37+cos(q1).*4.4835e-1)).*(-1.0./2.0)+Fx.*t5.*(t13+t30+sin(q1).*4.4835e-1);Fx.*(t27+t29+t34+t35+t38+dq1.*t37).*(-1.0./2.0)+Fx.*t5.*(t13+t30);t42;t42;Fx.*(t27+t29+dq1.*t28+dq2.*t28+dq3.*t28+dq4.*t28).*(-1.0./2.0)+Fx.*t5.*(t17+t23);(Fx.*(t26+dq1.*t24+dq2.*t24+dq3.*t24+dq4.*t24+dq5.*t24))./2.0+Fx.*t5.*t23];
