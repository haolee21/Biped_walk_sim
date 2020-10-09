function dGrf_heel_c4_Fx = dGrf_heel_c4_F(in1,in2)
%DGRF_HEEL_C4_F
%    DGRF_HEEL_C4_FX = DGRF_HEEL_C4_F(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    04-Oct-2020 16:02:14

q_t1 = in1(:,1);
q_t2 = in1(:,2);
q_t3 = in1(:,3);
q_t4 = in1(:,4);
q_t5 = in1(:,5);
q_t6 = in1(:,6);
qd_t1 = in2(:,1);
qd_t2 = in2(:,2);
qd_t3 = in2(:,3);
qd_t4 = in2(:,4);
qd_t5 = in2(:,5);
qd_t6 = in2(:,6);
t2 = q_t1+q_t2;
t3 = sin(t2);
t4 = q_t3+q_t4+t2;
t5 = q_t5+t4;
t6 = sin(t4);
t8 = t3.*4.453122e-1;
t7 = sin(t5);
t9 = q_t6+t5+4.751930427460668e-1;
t10 = t6.*4.453122e-1;
t11 = t7.*4.60062e-1;
t12 = cos(t9);
t13 = t12.*8.746582711697523e-2;
t14 = t10+t11+t13;
dGrf_heel_c4_Fx = -qd_t2.*(t8+t14)-qd_t5.*(t11+t13)-qd_t1.*(t8+t14+sin(q_t1).*4.60062e-1)-qd_t3.*t14-qd_t4.*t14-qd_t6.*t12.*8.746582711697523e-2;
