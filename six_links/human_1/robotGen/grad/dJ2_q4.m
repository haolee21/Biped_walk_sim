function dJ2_q4 = dJ2_q4(in1)
%DJ2_Q4
%    DJ2_Q4 = DJ2_Q4(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    13-Jun-2020 13:04:10

q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
t2 = q1+q2+q3+q4;
t3 = cos(t2);
t4 = q5+t2;
t5 = sin(t2);
t6 = sin(t4);
t7 = cos(t4);
t12 = t3.*4.38012e-1;
t13 = t5.*4.38012e-1;
t8 = t7.*5.2902e-1;
t9 = t6.*5.2902e-1;
t14 = -t12;
t15 = -t13;
t10 = -t8;
t11 = -t9;
t16 = t10+t14;
t17 = t11+t15;
dJ2_q4 = reshape([t16,t17,0.0,0.0,0.0,0.0,t16,t17,0.0,0.0,0.0,0.0,t16,t17,0.0,0.0,0.0,0.0,t16,t17,0.0,0.0,0.0,0.0,t10,t11,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],[6,6]);
