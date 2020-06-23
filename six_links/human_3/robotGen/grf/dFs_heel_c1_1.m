function dFs_heel_c1_1 = dFs_heel_c1_1(in1,in2,us,ud)
%DFS_HEEL_C1_1
%    DFS_HEEL_C1_1 = DFS_HEEL_C1_1(IN1,IN2,US,UD)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    22-Jun-2020 13:34:01

q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
q6 = in1(:,6);
qd1 = in1(:,7);
qd2 = in1(:,8);
qd3 = in1(:,9);
qd4 = in1(:,10);
qd5 = in1(:,11);
qd6 = in1(:,12);
t2 = cos(q1);
t3 = sin(q1);
t4 = q1+q2;
t7 = -us;
t5 = cos(t4);
t6 = sin(t4);
t8 = q3+q4+t4;
t12 = t7+ud;
t18 = t2.*4.5252e-1;
t19 = t3.*4.5252e-1;
t9 = cos(t8);
t10 = q5+t8;
t11 = sin(t8);
t29 = t5.*4.38012e-1;
t30 = t6.*4.38012e-1;
t13 = q6+t10;
t14 = sin(t10);
t15 = cos(t10);
t32 = t9.*4.38012e-1;
t33 = t11.*4.38012e-1;
t16 = cos(t13);
t17 = sin(t13);
t22 = t15.*4.5252e-1;
t23 = t14.*4.5252e-1;
t20 = qd6.*t16.*4.5252e+1;
t21 = qd6.*t17.*4.5252e+1;
t25 = -t22;
t26 = t16.*4.5252e-1;
t27 = t17.*4.5252e-1;
t24 = -t21;
t28 = -t27;
t31 = t23+t26;
t34 = t25+t27;
t35 = qd5.*t31.*1.0e+2;
t36 = qd5.*t34.*1.0e+2;
t38 = t31+t33;
t39 = t22+t28+t32;
t37 = -t36;
t40 = qd3.*t38.*1.0e+2;
t41 = qd4.*t38.*1.0e+2;
t42 = qd3.*t39.*1.0e+2;
t43 = qd4.*t39.*1.0e+2;
t44 = t30+t38;
t45 = t29+t39;
t46 = qd2.*t44.*1.0e+2;
t47 = qd2.*t45.*1.0e+2;
t48 = t19+t44;
t49 = t18+t45;
t50 = qd1.*t48.*1.0e+2;
t51 = qd1.*t49.*1.0e+2;
t52 = t20+t35+t40+t41+t46+t50+5.0;
t54 = t20+t35+t40+t41+t46+t50-5.0;
t56 = t24+t37+t42+t43+t47+t51;
t53 = tanh(t52);
t55 = tanh(t54);
dFs_heel_c1_1 = t12.*((t56.*(t53.^2-1.0))./2.0-(t56.*(t55.^2-1.0))./2.0).*(us+t12.*(t53.*(-1.0./2.0)+t55./2.0+1.0)).*-2.0;
