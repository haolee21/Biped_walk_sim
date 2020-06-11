function Fs_toe1_d = Fs_toe1_d(in1,th)
%FS_TOE1_D
%    FS_TOE1_D = FS_TOE1_D(IN1,TH)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    10-Jun-2020 15:01:47

q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
q6 = in1(:,6);
t2 = sin(q1);
t3 = q1+q2;
t9 = atan(3.472941176470588);
t10 = 1.535969075209524e+3;
t4 = sin(t3);
t5 = q3+q4+t3;
t11 = -t9;
t6 = q5+t5;
t7 = sin(t5);
t8 = sin(t6);
t12 = q6+t6+t11;
t13 = cos(t12);
Fs_toe1_d = (tanh(t2.*1.81008e+2+t4.*1.752048e+2+t7.*1.752048e+2+t8.*1.81008e+2-th.*4.0e+2+t10.*t13.*(9.0./1.25e+2))./2.0-1.0./2.0).*(t2.*4.5252e-1+t4.*4.38012e-1+t7.*4.38012e-1+t8.*4.5252e-1-th+t10.*t13.*1.8e-4).^2.*-1.6e+6;
