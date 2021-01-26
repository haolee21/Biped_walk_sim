function dGrf_toe_c4_Fx = dGrf_toe_c4_F(in1,in2)
%DGRF_TOE_C4_F
%    DGRF_TOE_C4_FX = DGRF_TOE_C4_F(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    22-Jan-2021 20:08:12

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
t11 = atan(2.165415384615384);
t12 = 4.451149643825727e+17;
t3 = sin(t2);
t4 = q_t3+q_t4+t2;
t13 = -t11;
t5 = q_t5+t4;
t6 = sin(t4);
t8 = t3.*4.165e-1;
t7 = sin(t5);
t9 = t6.*4.165e-1;
t14 = q_t6+t5+t13;
t10 = t7.*4.182e-1;
t15 = cos(t14);
t16 = (t12.*t15)./2.81474976710656e+18;
t17 = t9+t10+t16;
dGrf_toe_c4_Fx = -qd_t2.*(t8+t17)-qd_t5.*(t10+t16)-qd_t3.*t17-qd_t4.*t17-qd_t1.*(t8+t17+sin(q_t1).*4.182e-1)-(qd_t6.*t12.*t15)./2.81474976710656e+18;
