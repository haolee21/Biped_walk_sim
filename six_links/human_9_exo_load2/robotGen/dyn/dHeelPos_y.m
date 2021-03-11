function dHeelPos_y = dHeelPos_y(in1)
%DHEELPOS_Y
%    DHEELPOS_Y = DHEELPOS_Y(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    18-Feb-2021 20:15:05

q_t1 = in1(:,1);
q_t2 = in1(:,2);
q_t3 = in1(:,3);
q_t4 = in1(:,4);
q_t5 = in1(:,5);
q_t6 = in1(:,6);
t2 = cos(q_t1);
t3 = cos(q_t2);
t4 = cos(q_t3);
t5 = cos(q_t4);
t6 = cos(q_t5);
t7 = cos(q_t6);
t8 = sin(q_t1);
t9 = sin(q_t2);
t10 = sin(q_t3);
t11 = sin(q_t4);
t12 = sin(q_t5);
t13 = sin(q_t6);
t14 = t2.*t3;
t15 = t2.*t9;
t16 = t3.*t8;
t17 = t8.*t9;
t18 = -t17;
t19 = t15+t16;
t23 = t14.*4.4835e-1;
t24 = t17.*4.4835e-1;
t20 = t14+t18;
t21 = t4.*t19;
t22 = t10.*t19;
t28 = -t24;
t25 = t4.*t20;
t26 = t10.*t20;
t27 = -t22;
t29 = t21+t26;
t30 = t25+t27;
t33 = -t5.*(t22-t25);
t34 = -t11.*(t22-t25);
t38 = t5.*(t22-t25).*(-4.4835e-1);
t31 = t5.*t29;
t32 = t11.*t29;
t35 = -t32;
t36 = t32.*4.4835e-1;
t39 = t31+t34;
t43 = -t6.*(t32+t5.*(t22-t25));
t44 = -t12.*(t32+t5.*(t22-t25));
t48 = t6.*(t32+t5.*(t22-t25)).*(-4.5018e-1);
t37 = -t36;
t40 = t33+t35;
t41 = t6.*t39;
t42 = t12.*t39;
t45 = -t42;
t46 = t42.*4.5018e-1;
t49 = t41+t44;
t53 = t13.*(t42+t6.*(t32+t5.*(t22-t25))).*(-7.137e-2);
t54 = t13.*(t42+t6.*(t32+t5.*(t22-t25))).*7.137e-2;
t56 = t7.*(t42+t6.*(t32+t5.*(t22-t25))).*(-4.120940400000001e-2);
t57 = t7.*(t42+t6.*(t32+t5.*(t22-t25))).*4.120940400000001e-2;
t47 = -t46;
t50 = t43+t45;
t51 = t7.*t49.*7.137e-2;
t55 = t13.*t49.*4.120940400000001e-2;
t52 = -t51;
t58 = t37+t38+t47+t48+t52+t54+t55+t57;
dHeelPos_y = [t2.*4.5018e-1+t23+t28+t58;t23+t28+t58;t58;t58;t47+t48+t52+t54+t55+t57;t52+t54+t55+t57];
