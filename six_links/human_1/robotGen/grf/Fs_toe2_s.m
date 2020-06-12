function Fs_toe2_s = Fs_toe2_s(in1,th)
%FS_TOE2_S
%    FS_TOE2_S = FS_TOE2_S(IN1,TH)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    11-Jun-2020 22:29:29

q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
q6 = in1(:,6);
qd1 = in1(:,7);
qd2 = in1(:,8);
qd3 = in1(:,9);
qd4 = in1(:,10);
qd5 = in1(:,11);
qd6 = in1(:,12);
t2 = cos(q1);
t3 = sin(q1);
t4 = q1+q2;
t13 = atan(3.472941176470588);
t14 = 1.535969075209524e+3;
t5 = cos(t4);
t6 = sin(t4);
t7 = q3+q4+t4;
t15 = -t13;
t16 = t2.*4.5252e-1;
t8 = cos(t7);
t9 = q5+t7;
t10 = sin(t7);
t20 = t5.*4.38012e-1;
t11 = sin(t9);
t12 = cos(t9);
t18 = q6+t9+t15;
t21 = q6+t9+2.803565332283614e-1;
t22 = t8.*4.38012e-1;
t17 = t12.*4.5252e-1;
t19 = cos(t18);
t23 = cos(t21);
t24 = t23.*2.764744335377143e-1;
t25 = t17+t24;
t26 = t22+t25;
t27 = t20+t26;
t28 = t16+t27;
Fs_toe2_s = (tanh(t3.*1.81008e+2+t6.*1.752048e+2+t10.*1.752048e+2+t11.*1.81008e+2-th.*4.0e+2+t14.*t19.*(9.0./1.25e+2))./2.0-1.0./2.0).*((tanh(qd1.*t28.*1.0e+2+qd2.*t27.*1.0e+2+qd3.*t26.*1.0e+2+qd6.*t23.*2.764744335377143e+1+qd4.*t26.*1.0e+2+qd5.*t25.*1.0e+2)./2.0-1.0./2.0).*(qd1.*t28.*1.25e+3+qd2.*t27.*1.25e+3+qd3.*t26.*1.25e+3+qd6.*t23.*3.455930419221429e+2+qd4.*t26.*1.25e+3+qd5.*t25.*1.25e+3)-(t3.*4.5252e-1+t6.*4.38012e-1+t10.*4.38012e-1+t11.*4.5252e-1-th+t14.*t19.*1.8e-4).^2.*5.0e+5).*(4.0./5.0);
