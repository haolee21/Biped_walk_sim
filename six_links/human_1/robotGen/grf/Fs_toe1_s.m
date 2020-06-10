function Fs_toe1_s = Fs_toe1_s(in1,th)
%FS_TOE1_S
%    FS_TOE1_S = FS_TOE1_S(IN1,TH)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    09-Jun-2020 12:16:43

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
t2 = sin(q1);
t3 = q1+q2;
t12 = atan(3.472941176470588);
t13 = 1.535969075209524e+3;
t4 = cos(t3);
t5 = sin(t3);
t6 = q3+q4+t3;
t14 = -t12;
t7 = cos(t6);
t8 = q5+t6;
t9 = sin(t6);
t18 = t4.*4.38012e-1;
t10 = sin(t8);
t11 = cos(t8);
t16 = q6+t8+t14;
t19 = t7.*4.38012e-1;
t20 = q6+t8+3.902467605501841e-1;
t15 = t11.*4.5252e-1;
t17 = cos(t16);
t21 = cos(t20);
t22 = t21.*2.010953071953694e-1;
t23 = t15+t19+t22;
Fs_toe1_s = (t2.*6.7878e+4+t5.*6.57018e+4+t9.*6.57018e+4+t10.*6.7878e+4-th.*1.5e+5+t13.*t17.*2.7e+1).*(qd5.*(t15+t22)+qd2.*(t18+t23)+qd3.*t23+qd4.*t23+qd6.*t22+qd1.*(t18+t23+cos(q1).*4.5252e-1)).*(4.0./5.0)+(t2.*(-4.5252e-1)-t5.*4.38012e-1-t9.*4.38012e-1-t10.*4.5252e-1+th-t13.*t17.*1.8e-4).^(1.1e+1./5.0).*8.0e+6;
