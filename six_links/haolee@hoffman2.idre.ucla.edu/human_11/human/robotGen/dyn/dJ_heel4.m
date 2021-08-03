function dJ_q4 = dJ_heel4(in1)
%DJ_HEEL4
%    DJ_Q4 = DJ_HEEL4(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    21-Apr-2021 15:23:53

q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
q6 = in1(:,6);
t2 = q1+q2+q3+q4;
t16 = atan(5.774051282051283e-1);
t17 = 1.546478599905513e+18;
t3 = cos(t2);
t4 = q5+t2;
t5 = sin(t2);
t6 = sin(t4);
t7 = cos(t4);
t8 = t3.*4.4835e-1;
t9 = t5.*4.4835e-1;
t18 = q6+t4+t16;
t10 = t7.*4.4835e-1;
t11 = t6.*4.4835e-1;
t12 = -t8;
t13 = -t9;
t19 = cos(t18);
t20 = sin(t18);
t14 = -t10;
t15 = -t11;
t21 = t17.*t19.*5.329070518200751e-20;
t22 = t17.*t20.*5.329070518200751e-20;
t23 = -t21;
t24 = t12+t14+t22;
t25 = t13+t15+t23;
dJ_q4 = reshape([t24,t25,t24,t25,t24,t25,t24,t25,t14+t22,t15+t23,t22,t23],[2,6]);
