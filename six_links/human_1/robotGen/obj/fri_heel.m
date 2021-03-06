function fri2 = fri_heel(in1,th)
%FRI_HEEL
%    FRI2 = FRI_HEEL(IN1,TH)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    27-May-2020 01:08:12

q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
qd1 = in1(:,7);
qd2 = in1(:,8);
qd3 = in1(:,9);
qd4 = in1(:,10);
qd5 = in1(:,11);
t2 = cos(q1);
t3 = cos(q2);
t4 = cos(q3);
t5 = cos(q4);
t6 = sin(q1);
t7 = sin(q2);
t8 = sin(q3);
t9 = sin(q4);
t10 = q1+q2;
t11 = sin(t10);
t12 = t2.*t3;
t13 = t2.*t7;
t14 = t3.*t6;
t15 = q3+q4+t10;
t16 = t6.*t7;
t17 = q5+t15;
t18 = sin(t15);
t20 = -t16;
t21 = t13+t14;
t31 = t11.*4.38012e-1;
t19 = sin(t17);
t22 = t12+t20;
t23 = t4.*t21;
t24 = t8.*t21;
t32 = t18.*4.38012e-1;
t25 = t4.*t22;
t26 = t8.*t22;
t27 = -t24;
t28 = t19.*5.2902e-1;
t29 = t23+t26;
t30 = t25+t27;
t33 = t28+t32;
fri2 = -(tanh(t6.*1.81008e+2+t13.*1.752048e+2+t14.*1.752048e+2-th.*4.0e+2+t5.*t29.*1.752048e+2+cos(q5).*(t5.*t29-t9.*(t24-t25)).*2.11608e+2-sin(q5).*(t9.*t29+t5.*(t24-t25)).*2.11608e+2-t9.*(t24-t25).*1.752048e+2)./2.0-1.0./2.0).*(qd2.*(t31+t33)+qd5.*t28+qd3.*t33+qd4.*t33+qd1.*(t6.*4.5252e-1+t31+t33)).^2;
