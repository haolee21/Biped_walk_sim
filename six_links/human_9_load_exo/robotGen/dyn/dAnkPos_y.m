function dAnkPos_y = dAnkPos_y(in1)
%DANKPOS_Y
%    DANKPOS_Y = DANKPOS_Y(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    21-Jan-2021 23:27:50

q_t1 = in1(:,1);
q_t2 = in1(:,2);
q_t3 = in1(:,3);
q_t4 = in1(:,4);
q_t5 = in1(:,5);
t2 = cos(q_t1);
t3 = cos(q_t2);
t4 = cos(q_t3);
t5 = cos(q_t4);
t6 = cos(q_t5);
t7 = sin(q_t1);
t8 = sin(q_t2);
t9 = sin(q_t3);
t10 = sin(q_t4);
t11 = sin(q_t5);
t12 = t2.*t3;
t13 = t2.*t8;
t14 = t3.*t7;
t15 = t7.*t8;
t16 = -t15;
t17 = t13+t14;
t21 = t12.*4.4835e-1;
t22 = t15.*4.4835e-1;
t18 = t12+t16;
t19 = t4.*t17;
t20 = t9.*t17;
t26 = -t22;
t23 = t4.*t18;
t24 = t9.*t18;
t25 = -t20;
t27 = t19+t24;
t28 = t23+t25;
t31 = -t5.*(t20-t23);
t32 = -t10.*(t20-t23);
t36 = t5.*(t20-t23).*(-4.4835e-1);
t29 = t5.*t27;
t30 = t10.*t27;
t33 = -t30;
t34 = t30.*4.4835e-1;
t37 = t29+t32;
t41 = t6.*(t30+t5.*(t20-t23)).*(-4.5018e-1);
t35 = -t34;
t38 = t31+t33;
t39 = t11.*t37.*4.5018e-1;
t40 = -t39;
t42 = t35+t36+t40+t41;
dAnkPos_y = [t2.*4.5018e-1+t21+t26+t42;t21+t26+t42;t42;t42;t40+t41;0.0];
