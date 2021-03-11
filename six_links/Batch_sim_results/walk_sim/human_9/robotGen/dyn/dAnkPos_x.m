function dAnkPos_x = dAnkPos_x(in1)
%DANKPOS_X
%    DANKPOS_X = DANKPOS_X(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    29-Jan-2021 13:23:18

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
t21 = t13.*4.4835e-1;
t22 = t14.*4.4835e-1;
t18 = t12+t16;
t19 = t4.*t17;
t20 = t9.*t17;
t26 = -t21;
t27 = -t22;
t23 = t4.*t18;
t24 = t9.*t18;
t25 = -t20;
t28 = t19+t24;
t29 = t23+t25;
t32 = -t5.*(t20-t23);
t33 = -t10.*(t20-t23);
t37 = t10.*(t20-t23).*(-4.4835e-1);
t38 = t10.*(t20-t23).*4.4835e-1;
t30 = t5.*t28;
t31 = t10.*t28;
t34 = -t31;
t35 = t30.*4.4835e-1;
t39 = t30+t33;
t43 = t11.*(t31+t5.*(t20-t23)).*(-4.5018e-1);
t44 = t11.*(t31+t5.*(t20-t23)).*4.5018e-1;
t36 = -t35;
t40 = t32+t34;
t41 = t6.*t39.*4.5018e-1;
t42 = -t41;
t45 = t36+t38+t42+t44;
dAnkPos_x = [t7.*(-4.5018e-1)+t26+t27+t45;t26+t27+t45;t45;t45;t42+t44;0.0];
