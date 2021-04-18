function dJ_q2 = dJ_toe2(in1)
%DJ_TOE2
%    DJ_Q2 = DJ_TOE2(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    16-Apr-2021 12:57:39

q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
q6 = in1(:,6);
t2 = q1+q2;
t23 = atan(4.618051608502898e-1);
t24 = atan(2.165415384615385);
t25 = 1.1978829188531e+18;
t3 = cos(t2);
t4 = sin(t2);
t5 = q3+q4+t2;
t26 = -t24;
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
t27 = q6+t7+t23;
t29 = q6+t7+t26;
t17 = t10.*4.4835e-1;
t18 = t9.*4.4835e-1;
t19 = -t15;
t20 = -t16;
t28 = sin(t27);
t30 = sin(t29);
t21 = -t17;
t22 = -t18;
t31 = (t25.*t28)./7.0368744177664e+18;
t33 = (t25.*t30)./7.0368744177664e+18;
t32 = -t31;
t35 = t19+t21+t33;
t34 = t20+t22+t32;
t37 = t13+t35;
t36 = t14+t34;
dJ_q2 = reshape([t37,t36,0.0,t37,t36,0.0,t35,t34,0.0,t35,t34,0.0,t21+t33,t22+t32,0.0,t33,t32,0.0],[3,6]);
