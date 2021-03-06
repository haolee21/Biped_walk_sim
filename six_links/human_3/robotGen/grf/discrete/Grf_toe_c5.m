function Grf_toe_c5 = Grf_toe_c5(in1,in2,s,sampT)
%GRF_TOE_C5
%    GRF_TOE_C5 = GRF_TOE_C5(IN1,IN2,S,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    08-Jul-2020 23:05:58

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
t9 = t3.*4.38012e-1;
t7 = sin(t5);
t10 = q6+t5-1.290439793566535;
t11 = t6.*4.38012e-1;
t8 = t7.*4.5252e-1;
t12 = cos(t10);
t13 = t12.*2.764744335377143e-1;
t14 = t8+t11+t13;
Grf_toe_c5 = s.*(qd2.*(t9+t14)+qd5.*(t8+t13)+qd3.*t14+qd4.*t14+qd6.*t13+qd1.*(t9+t14+sin(q1).*4.5252e-1)).^2;
