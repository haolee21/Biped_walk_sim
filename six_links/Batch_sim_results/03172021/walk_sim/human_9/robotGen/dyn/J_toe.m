function J_toe = J_toe(in1)
%J_TOE
%    J_TOE = J_TOE(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    29-Jan-2021 13:23:16

q_t1 = in1(:,1);
q_t2 = in1(:,2);
q_t3 = in1(:,3);
q_t4 = in1(:,4);
q_t5 = in1(:,5);
q_t6 = in1(:,6);
t2 = q_t1+q_t2;
t20 = atan(4.618051608502898e-1);
t21 = atan(2.165415384615385);
t22 = 1.1978829188531e+18;
t3 = cos(t2);
t4 = sin(t2);
t5 = q_t3+q_t4+t2;
t23 = -t21;
t6 = cos(t5);
t7 = q_t5+t5;
t8 = sin(t5);
t11 = t3.*4.4835e-1;
t12 = t4.*4.4835e-1;
t9 = sin(t7);
t10 = cos(t7);
t13 = -t12;
t14 = t6.*4.4835e-1;
t15 = t8.*4.4835e-1;
t24 = q_t6+t7+t20;
t26 = q_t6+t7+t23;
t16 = t10.*4.5018e-1;
t17 = t9.*4.5018e-1;
t18 = -t15;
t25 = cos(t24);
t27 = cos(t26);
t19 = -t17;
t28 = (t22.*t25)./7.0368744177664e+18;
t29 = (t22.*t27)./7.0368744177664e+18;
t30 = -t29;
t31 = t14+t16+t28;
t32 = t18+t19+t30;
J_toe = reshape([t13+t32-sin(q_t1).*4.5018e-1,t11+t31+cos(q_t1).*4.5018e-1,0.0,t13+t32,t11+t31,0.0,t32,t31,0.0,t32,t31,0.0,t19+t30,t16+t28,0.0,t30,t28,0.0],[3,6]);
