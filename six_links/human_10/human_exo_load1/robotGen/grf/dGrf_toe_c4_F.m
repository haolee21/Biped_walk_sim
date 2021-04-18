function dGrf_toe_c4_Fx = dGrf_toe_c4_F(in1,in2)
%DGRF_TOE_C4_F
%    DGRF_TOE_C4_FX = DGRF_TOE_C4_F(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    16-Apr-2021 01:24:03

dq1 = in2(:,1);
dq2 = in2(:,2);
dq3 = in2(:,3);
dq4 = in2(:,4);
dq5 = in2(:,5);
dq6 = in2(:,6);
q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
q6 = in1(:,6);
t2 = q1+q2;
t11 = atan(2.165415384615385);
t12 = 1.1978829188531e+18;
t3 = sin(t2);
t4 = q3+q4+t2;
t13 = -t11;
t5 = q5+t4;
t6 = sin(t4);
t8 = t3.*4.4835e-1;
t7 = sin(t5);
t9 = t6.*4.4835e-1;
t14 = q6+t5+t13;
t10 = t7.*4.4835e-1;
t15 = cos(t14);
t16 = (t12.*t15)./7.0368744177664e+18;
t17 = t9+t10+t16;
dGrf_toe_c4_Fx = -dq2.*(t8+t17)-dq5.*(t10+t16)-dq3.*t17-dq4.*t17-dq1.*(t8+t17+sin(q1).*4.4835e-1)-(dq6.*t12.*t15)./7.0368744177664e+18;
