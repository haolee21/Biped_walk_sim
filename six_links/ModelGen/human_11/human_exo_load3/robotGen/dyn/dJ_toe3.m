function dJ_q3 = dJ_toe3(in1)
%DJ_TOE3
%    DJ_Q3 = DJ_TOE3(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    20-Apr-2021 22:34:19

q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
q6 = in1(:,6);
t2 = q1+q2+q3+q4;
t16 = atan(4.618051608502898e-1);
t17 = atan(2.165415384615385);
t18 = 1.1978829188531e+18;
t3 = cos(t2);
t4 = q5+t2;
t5 = sin(t2);
t19 = -t17;
t6 = sin(t4);
t7 = cos(t4);
t8 = t3.*4.4835e-1;
t9 = t5.*4.4835e-1;
t20 = q6+t4+t16;
t22 = q6+t4+t19;
t10 = t7.*4.4835e-1;
t11 = t6.*4.4835e-1;
t12 = -t8;
t13 = -t9;
t21 = sin(t20);
t23 = sin(t22);
t14 = -t10;
t15 = -t11;
t24 = (t18.*t21)./7.0368744177664e+18;
t26 = (t18.*t23)./7.0368744177664e+18;
t25 = -t24;
t28 = t12+t14+t26;
t27 = t13+t15+t25;
dJ_q3 = reshape([t28,t27,t28,t27,t28,t27,t28,t27,t14+t26,t15+t25,t26,t25],[2,6]);
