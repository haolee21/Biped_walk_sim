function dJ_q1 = dJ_heel1(in1)
%DJ_HEEL1
%    DJ_Q1 = DJ_HEEL1(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    20-Apr-2021 22:34:23

q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
q6 = in1(:,6);
t2 = q1+q2;
t23 = atan(5.774051282051283e-1);
t24 = 1.546478599905513e+18;
t3 = cos(t2);
t4 = sin(t2);
t5 = q3+q4+t2;
t6 = cos(t5);
t7 = q5+t5;
t8 = sin(t5);
t11 = t3.*4.4835e-1;
t12 = t4.*4.4835e-1;
t9 = sin(t7);
t10 = cos(t7);
t13 = -t11;
t14 = -t12;
t15 = t6.*4.4835e-1;
t16 = t8.*4.4835e-1;
t25 = q6+t7+t23;
t17 = t10.*4.4835e-1;
t18 = t9.*4.4835e-1;
t19 = -t15;
t20 = -t16;
t26 = cos(t25);
t27 = sin(t25);
t21 = -t17;
t22 = -t18;
t28 = t24.*t26.*5.329070518200751e-20;
t29 = t24.*t27.*5.329070518200751e-20;
t30 = -t28;
t31 = t19+t21+t29;
t32 = t20+t22+t30;
dJ_q1 = reshape([t13+t31-cos(q1).*4.4835e-1,t14+t32-sin(q1).*4.4835e-1,t13+t31,t14+t32,t31,t32,t31,t32,t21+t29,t22+t30,t29,t30],[2,6]);
