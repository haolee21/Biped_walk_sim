function dJ_q2 = dJ_q2(in1)
%DJ_Q2
%    DJ_Q2 = DJ_Q2(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    20-Jun-2020 16:30:48

q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
q6 = in1(:,6);
t2 = q1+q2;
t3 = cos(t2);
t4 = sin(t2);
t5 = q3+q4+t2;
t6 = cos(t5);
t7 = q5+t5;
t8 = sin(t5);
t15 = t3.*4.38012e-1;
t16 = t4.*4.38012e-1;
t9 = sin(t7);
t10 = cos(t7);
t17 = -t15;
t18 = -t16;
t19 = q6+t7-1.290439793566535;
t20 = q6+t7+2.803565332283614e-1;
t21 = t6.*4.38012e-1;
t22 = t8.*4.38012e-1;
t11 = t10.*4.5252e-1;
t12 = t9.*4.5252e-1;
t23 = -t21;
t24 = -t22;
t25 = sin(t19);
t26 = sin(t20);
t13 = -t11;
t14 = -t12;
t27 = t25.*2.764744335377143e-1;
t28 = t26.*2.764744335377143e-1;
t29 = -t28;
t30 = t13+t23+t27;
t31 = t14+t24+t29;
t32 = t17+t30;
t33 = t18+t31;
dJ_q2 = reshape([t32,t33,0.0,0.0,0.0,0.0,t32,t33,0.0,0.0,0.0,0.0,t30,t31,0.0,0.0,0.0,0.0,t30,t31,0.0,0.0,0.0,0.0,t13+t27,t14+t29,0.0,0.0,0.0,0.0,t27,t29,0.0,0.0,0.0,0.0],[6,6]);
