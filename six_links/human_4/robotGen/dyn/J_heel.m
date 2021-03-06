function J_heel = J_heel(in1)
%J_HEEL
%    J_HEEL = J_HEEL(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    17-Jul-2020 17:32:32

q_t1 = in1(:,1);
q_t2 = in1(:,2);
q_t3 = in1(:,3);
q_t4 = in1(:,4);
q_t5 = in1(:,5);
q_t6 = in1(:,6);
t2 = q_t1+q_t2;
t3 = cos(t2);
t4 = sin(t2);
t5 = q_t3+q_t4+t2;
t6 = cos(t5);
t7 = q_t5+t5;
t8 = sin(t5);
t21 = t3.*4.13678e-1;
t22 = t4.*4.13678e-1;
t9 = q_t6+t7;
t10 = sin(t7);
t11 = cos(t7);
t23 = -t22;
t24 = t6.*4.13678e-1;
t25 = t8.*4.13678e-1;
t12 = cos(t9);
t13 = sin(t9);
t18 = t11.*4.2738e-1;
t19 = t10.*4.2738e-1;
t26 = -t25;
t14 = t12.*7.225e-2;
t15 = t13.*7.225e-2;
t20 = -t19;
t16 = -t14;
t17 = -t15;
t27 = t17+t18+t24;
t28 = t16+t20+t26;
J_heel = reshape([t23+t28-sin(q_t1).*4.2738e-1,t21+t27+cos(q_t1).*4.2738e-1,0.0,t23+t28,t21+t27,0.0,t28,t27,0.0,t28,t27,0.0,t16+t20,t17+t18,0.0,t16,t17,0.0],[3,6]);
