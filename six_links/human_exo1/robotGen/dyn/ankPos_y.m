function out1 = ankPos_y(in1)
%ANKPOS_Y
%    OUT1 = ANKPOS_Y(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    04-Dec-2020 16:29:36

q_t1 = in1(:,1);
q_t2 = in1(:,2);
q_t3 = in1(:,3);
q_t4 = in1(:,4);
q_t5 = in1(:,5);
t2 = cos(q_t1);
t3 = cos(q_t2);
t4 = cos(q_t3);
t5 = cos(q_t4);
t6 = sin(q_t1);
t7 = sin(q_t2);
t8 = sin(q_t3);
t9 = sin(q_t4);
t10 = t2.*t3;
t11 = t2.*t7;
t12 = t3.*t6;
t13 = t6.*t7;
t14 = -t13;
t15 = t11+t12;
t16 = t10+t14;
t17 = t4.*t15;
t18 = t8.*t15;
t19 = t4.*t16;
t20 = t8.*t16;
t21 = -t18;
t22 = t17+t20;
t23 = t19+t21;
out1 = t6.*4.60062e-1+t11.*4.453122e-1+t12.*4.453122e-1+t5.*t22.*4.453122e-1+cos(q_t5).*(t5.*t22-t9.*(t18-t19)).*4.60062e-1-sin(q_t5).*(t9.*t22+t5.*(t18-t19)).*4.60062e-1-t9.*(t18-t19).*4.453122e-1;
