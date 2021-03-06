function dGrf_heel_c5_s = dGrf_heel_c5_s(in1,in2)
%DGRF_HEEL_C5_S
%    DGRF_HEEL_C5_S = DGRF_HEEL_C5_S(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    08-Jul-2020 23:05:59

q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
q6 = in1(:,6);
qd1 = in2(:,1);
qd2 = in2(:,2);
qd3 = in2(:,3);
qd4 = in2(:,4);
qd5 = in2(:,5);
qd6 = in2(:,6);
t2 = q1+q2;
t3 = sin(t2);
t4 = q3+q4+t2;
t5 = q5+t4;
t6 = sin(t4);
t12 = t3.*4.38012e-1;
t7 = q6+t5;
t8 = sin(t5);
t13 = t6.*4.38012e-1;
t9 = cos(t7);
t10 = t8.*4.5252e-1;
t11 = t9.*4.5252e-1;
t14 = t10+t11+t13;
dGrf_heel_c5_s = (qd5.*(t10+t11)+qd2.*(t12+t14)+qd3.*t14+qd6.*t11+qd4.*t14+qd1.*(t12+t14+sin(q1).*4.5252e-1)).^2;
