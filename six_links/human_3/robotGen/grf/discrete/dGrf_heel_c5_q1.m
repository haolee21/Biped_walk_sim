function dGrf_heel_c5_q1 = dGrf_heel_c5_q1(in1,in2,s,sampT)
%DGRF_HEEL_C5_Q1
%    DGRF_HEEL_C5_Q1 = DGRF_HEEL_C5_Q1(IN1,IN2,S,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    08-Jul-2020 23:06:01

q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
q6 = in1(:,6);
qd1 = in2(:,1);
qd2 = in2(:,2);
qd3 = in2(:,3);
qd4 = in2(:,4);
qd5 = in2(:,5);
qd6 = in2(:,6);
t2 = sin(q1);
t3 = q1+q2;
t6 = 1.0./sampT;
t4 = cos(t3);
t5 = sin(t3);
t7 = q3+q4+t3;
t16 = t2.*4.5252e-1;
t8 = cos(t7);
t9 = q5+t7;
t10 = sin(t7);
t26 = t4.*4.38012e-1;
t27 = t5.*4.38012e-1;
t11 = q6+t9;
t12 = sin(t9);
t13 = cos(t9);
t29 = t8.*4.38012e-1;
t30 = t10.*4.38012e-1;
t14 = cos(t11);
t15 = sin(t11);
t17 = t13.*4.5252e-1;
t18 = t12.*4.5252e-1;
t19 = -t17;
t20 = t14.*4.5252e-1;
t21 = t15.*4.5252e-1;
t25 = qd6.*t15.*(-4.5252e-1);
t22 = qd6.*t20;
t23 = qd6.*t21;
t24 = -t21;
t28 = t18+t20;
t31 = t19+t21;
t32 = qd5.*t28;
t33 = qd5.*t31;
t35 = t28+t30;
t36 = t17+t24+t29;
t34 = -t33;
t37 = qd3.*t35;
t38 = qd4.*t35;
t39 = qd1.*t36;
t40 = qd2.*t36;
t41 = qd3.*t36;
t42 = qd4.*t36;
t43 = t27+t35;
t44 = t26+t36;
t45 = qd2.*t43;
t46 = qd2.*t44;
t47 = t16+t43;
t49 = t25+t34+t39+t40+t41+t42;
t48 = qd1.*t47;
t50 = t22+t32+t37+t38+t45+t48;
t51 = s.*t6.*t35.*t50.*2.0;
t53 = s.*t49.*t50;
t52 = -t51;
t54 = t52+t53;
dGrf_heel_c5_q1 = [s.*t50.*(t25+t34+t41+t42+t46+qd1.*(t44+cos(q1).*4.5252e-1))-s.*t6.*t47.*t50.*2.0;s.*t50.*(t25+t34+t41+t42+t46+qd1.*t44)-s.*t6.*t43.*t50.*2.0;t54;t54;-s.*t50.*(t23+t33+qd1.*t31+qd2.*t31+qd3.*t31+qd4.*t31)-s.*t6.*t28.*t50.*2.0;-s.*t50.*(t23+qd1.*t21+qd2.*t21+qd3.*t21+qd4.*t21+qd5.*t21)-s.*t6.*t14.*t50.*9.0504e-1];
