function dJ_q3 = dJ_q3(in1)
%DJ_Q3
%    DJ_Q3 = DJ_Q3(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    11-Jun-2020 22:29:47

q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
q6 = in1(:,6);
t2 = q1+q2+q3+q4;
t3 = cos(t2);
t4 = q5+t2;
t5 = sin(t2);
t6 = sin(t4);
t7 = cos(t4);
t12 = q6+t4-1.290439793566535;
t13 = q6+t4+2.803565332283614e-1;
t14 = t3.*4.38012e-1;
t15 = t5.*4.38012e-1;
t8 = t7.*4.5252e-1;
t9 = t6.*4.5252e-1;
t16 = -t14;
t17 = -t15;
t18 = sin(t12);
t19 = sin(t13);
t10 = -t8;
t11 = -t9;
t20 = t18.*2.764744335377143e-1;
t21 = t19.*2.764744335377143e-1;
t22 = -t21;
t23 = t10+t16+t20;
t24 = t11+t17+t22;
dJ_q3 = reshape([t23,t24,0.0,0.0,0.0,0.0,t23,t24,0.0,0.0,0.0,0.0,t23,t24,0.0,0.0,0.0,0.0,t23,t24,0.0,0.0,0.0,0.0,t10+t20,t11+t22,0.0,0.0,0.0,0.0,t20,t22,0.0,0.0,0.0,0.0],[6,6]);
