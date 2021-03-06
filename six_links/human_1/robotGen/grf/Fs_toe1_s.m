function Fs_toe1_s = Fs_toe1_s(in1,th,k,cmax,dmax,us,ud)
%FS_TOE1_S
%    FS_TOE1_S = FS_TOE1_S(IN1,TH,K,CMAX,DMAX,US,UD)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    13-Jun-2020 13:03:30

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
t6 = -th;
t13 = atan(3.472941176470588);
t14 = 1.535969075209524e+3;
t4 = cos(t3);
t5 = sin(t3);
t7 = q3+q4+t3;
t15 = -t13;
t16 = t2.*4.5252e-1;
t8 = cos(t7);
t9 = q5+t7;
t10 = sin(t7);
t21 = t4.*4.38012e-1;
t22 = t5.*4.38012e-1;
t11 = sin(t9);
t12 = cos(t9);
t19 = q6+t9+t15;
t24 = q6+t9+2.803565332283614e-1;
t25 = t8.*4.38012e-1;
t26 = t10.*4.38012e-1;
t17 = t12.*4.5252e-1;
t18 = t11.*4.5252e-1;
t20 = cos(t19);
t27 = cos(t24);
t23 = t14.*t20.*1.8e-4;
t28 = t27.*2.764744335377143e-1;
t29 = t17+t25+t28;
t30 = t6+t16+t18+t22+t23+t26;
Fs_toe1_s = -us.*(tanh(t2.*1.81008e+2+t5.*1.752048e+2+t10.*1.752048e+2+t11.*1.81008e+2-th.*4.0e+2+t14.*t20.*(9.0./1.25e+2))./2.0-1.0./2.0).*(k.*t30.^2+(cmax.*t30.*(qd5.*(t17+t28)+qd2.*(t21+t29)+qd3.*t29+qd4.*t29+qd6.*t28+qd1.*(t21+t29+cos(q1).*4.5252e-1)))./dmax);
