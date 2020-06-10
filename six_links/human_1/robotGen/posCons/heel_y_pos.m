function heel_y_pos = heel_y_pos(in1)
%HEEL_Y_POS
%    HEEL_Y_POS = HEEL_Y_POS(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    09-Jun-2020 12:15:13

q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
t2 = cos(q1);
t3 = cos(q2);
t4 = cos(q3);
t5 = cos(q4);
t6 = sin(q1);
t7 = sin(q2);
t8 = sin(q3);
t9 = sin(q4);
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
heel_y_pos = t6.*4.5252e-1+t11.*4.38012e-1+t12.*4.38012e-1+t5.*t22.*4.38012e-1+cos(q5).*(t5.*t22-t9.*(t18-t19)).*5.2902e-1-sin(q5).*(t9.*t22+t5.*(t18-t19)).*5.2902e-1-t9.*(t18-t19).*4.38012e-1;
