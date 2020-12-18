function J_heel = J_heel(in1)
%J_HEEL
%    J_HEEL = J_HEEL(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    04-Dec-2020 16:29:36

q_t1 = in1(:,1);
q_t2 = in1(:,2);
q_t3 = in1(:,3);
q_t4 = in1(:,4);
q_t5 = in1(:,5);
q_t6 = in1(:,6);
t2 = q_t1+q_t2;
t13 = atan(5.145162352941177e-1);
t14 = atan(1.943573266309781);
t21 = 7.878221328233238e+18;
t3 = cos(t2);
t4 = sin(t2);
t5 = q_t3+q_t4+t2;
t22 = -t14;
t6 = cos(t5);
t7 = q_t5+t5;
t8 = sin(t5);
t11 = t3.*4.453122e-1;
t12 = t4.*4.453122e-1;
t9 = sin(t7);
t10 = cos(t7);
t15 = -t12;
t16 = t6.*4.453122e-1;
t17 = t8.*4.453122e-1;
t24 = q_t6+t7+t13;
t26 = q_t6+t7+t22;
t18 = t10.*4.60062e-1;
t19 = t9.*4.60062e-1;
t20 = -t17;
t25 = cos(t24);
t27 = cos(t26);
t23 = -t19;
t28 = (t21.*t25)./9.007199254740992e+19;
t30 = (t21.*t27)./9.007199254740992e+19;
t29 = -t28;
t31 = -t30;
t32 = t20+t23+t29;
t33 = t16+t18+t31;
J_heel = reshape([t15+t32-sin(q_t1).*4.60062e-1,t11+t33+cos(q_t1).*4.60062e-1,0.0,t15+t32,t11+t33,0.0,t32,t33,0.0,t32,t33,0.0,t23+t29,t18+t31,0.0,t29,t31,0.0],[3,6]);
