function Fs_toe2_s = Fs_toe2_s(in1,th,k,cmax,dmax,us,ud)
%FS_TOE2_S
%    FS_TOE2_S = FS_TOE2_S(IN1,TH,K,CMAX,DMAX,US,UD)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    13-Jun-2020 13:03:29

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
t19 = q6+t8+2.803565332283614e-1;
t20 = t7.*4.38012e-1;
t15 = t11.*4.5252e-1;
t17 = cos(t16);
t21 = cos(t19);
t22 = t21.*2.764744335377143e-1;
t23 = t15+t20+t22;
Fs_toe2_s = us.*(tanh(t2.*1.81008e+2+t5.*1.752048e+2+t9.*1.752048e+2+t10.*1.81008e+2-th.*4.0e+2+t13.*t17.*(9.0./1.25e+2))./2.0-1.0./2.0).*(cmax.*(qd5.*(t15+t22)+qd2.*(t18+t23)+qd3.*t23+qd4.*t23+qd6.*t22+qd1.*(t18+t23+cos(q1).*4.5252e-1))-k.*(t2.*4.5252e-1+t5.*4.38012e-1+t9.*4.38012e-1+t10.*4.5252e-1-th+t13.*t17.*1.8e-4).^2);
