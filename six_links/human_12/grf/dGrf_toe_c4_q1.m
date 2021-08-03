function dGrf_toe_c4_q1 = dGrf_toe_c4_q1(in1,in2,Fx,sampT)
%DGRF_TOE_C4_Q1
%    DGRF_TOE_C4_Q1 = DGRF_TOE_C4_Q1(IN1,IN2,FX,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    01-Aug-2021 23:37:05

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
t18 = atan(2.165415384615385);
t19 = 1.1978829188531e+18;
t3 = cos(t2);
t4 = sin(t2);
t6 = q3+q4+t2;
t20 = -t18;
t7 = cos(t6);
t8 = q5+t6;
t9 = sin(t6);
t12 = t3.*4.4835e-1;
t13 = t4.*4.4835e-1;
t10 = sin(t8);
t11 = cos(t8);
t14 = t7.*4.4835e-1;
t15 = t9.*4.4835e-1;
t21 = q6+t8+t20;
t16 = t11.*4.4835e-1;
t17 = t10.*4.4835e-1;
t22 = cos(t21);
t23 = sin(t21);
t24 = (t19.*t23)./7.0368744177664e+18;
t25 = (t19.*t22)./7.0368744177664e+18;
t28 = dq6.*t19.*t23.*(-1.4210854715202e-19);
t26 = -t24;
t27 = dq6.*t24;
t31 = t15+t17+t25;
t29 = t16+t26;
t37 = Fx.*t5.*t31;
t30 = dq5.*t29;
t32 = t14+t29;
t33 = dq1.*t32;
t34 = dq2.*t32;
t35 = dq3.*t32;
t36 = dq4.*t32;
t38 = t12+t32;
t39 = dq2.*t38;
t40 = t28+t30+t33+t34+t35+t36;
t41 = (Fx.*t40)./2.0;
t42 = -t41;
t43 = t37+t42;
dGrf_toe_c4_q1 = [Fx.*(t28+t30+t35+t36+t39+dq1.*(t38+cos(q1).*4.4835e-1)).*(-1.0./2.0)+Fx.*t5.*(t13+t31+sin(q1).*4.4835e-1);Fx.*(t28+t30+t35+t36+t39+dq1.*t38).*(-1.0./2.0)+Fx.*t5.*(t13+t31);t43;t43;Fx.*(t28+t30+dq1.*t29+dq2.*t29+dq3.*t29+dq4.*t29).*(-1.0./2.0)+Fx.*t5.*(t17+t25);(Fx.*(t27+dq1.*t24+dq2.*t24+dq3.*t24+dq4.*t24+dq5.*t24))./2.0+Fx.*t5.*t25];
