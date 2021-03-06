function dGrf_toe_c5_q1 = dGrf_toe_c5_q1(in1,in2,s,sampT)
%DGRF_TOE_C5_Q1
%    DGRF_TOE_C5_Q1 = DGRF_TOE_C5_Q1(IN1,IN2,S,SAMPT)

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
t13 = t2.*4.5252e-1;
t8 = cos(t7);
t9 = q5+t7;
t10 = sin(t7);
t17 = t4.*4.38012e-1;
t18 = t5.*4.38012e-1;
t11 = sin(t9);
t12 = cos(t9);
t19 = q6+t9-1.290439793566535;
t20 = t8.*4.38012e-1;
t21 = t10.*4.38012e-1;
t14 = t12.*4.5252e-1;
t15 = t11.*4.5252e-1;
t22 = cos(t19);
t23 = sin(t19);
t16 = -t14;
t24 = t22.*2.764744335377143e-1;
t25 = t23.*2.764744335377143e-1;
t29 = qd6.*t23.*(-2.764744335377143e-1);
t26 = qd6.*t24;
t27 = qd6.*t25;
t28 = -t25;
t30 = t15+t24;
t31 = t16+t25;
t32 = qd5.*t30;
t33 = -qd5.*(t14+t28);
t34 = qd5.*(t14+t28);
t35 = t21+t30;
t36 = t14+t20+t28;
t37 = qd3.*t35;
t38 = qd4.*t35;
t39 = qd1.*t36;
t40 = qd2.*t36;
t41 = qd3.*t36;
t42 = qd4.*t36;
t43 = t18+t35;
t44 = t17+t36;
t45 = qd2.*t43;
t46 = qd2.*t44;
t47 = t13+t43;
t49 = t29+t34+t39+t40+t41+t42;
t48 = qd1.*t47;
t50 = t26+t32+t37+t38+t45+t48;
t51 = s.*t6.*t35.*t50.*2.0;
t53 = s.*t49.*t50;
t52 = -t51;
t54 = t52+t53;
dGrf_toe_c5_q1 = [s.*t50.*(t29+t34+t41+t42+t46+qd1.*(t44+cos(q1).*4.5252e-1))-s.*t6.*t47.*t50.*2.0;s.*t50.*(t29+t34+t41+t42+t46+qd1.*t44)-s.*t6.*t43.*t50.*2.0;t54;t54;s.*t50.*(t29+t34+qd1.*(t14+t28)+qd2.*(t14+t28)+qd3.*(t14+t28)+qd4.*(t14+t28))-s.*t6.*t30.*t50.*2.0;-s.*t50.*(t27+qd1.*t25+qd2.*t25+qd3.*t25+qd4.*t25+qd5.*t25)-s.*t6.*t22.*t50.*5.529488670754286e-1];
