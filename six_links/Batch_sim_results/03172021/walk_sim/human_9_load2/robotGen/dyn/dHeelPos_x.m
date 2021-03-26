function dHeelPos_x = dHeelPos_x(in1)
%DHEELPOS_X
%    DHEELPOS_X = DHEELPOS_X(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    18-Feb-2021 20:13:00

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
t23 = t15.*4.4835e-1;
t24 = t16.*4.4835e-1;
t20 = t14+t18;
t21 = t4.*t19;
t22 = t10.*t19;
t28 = -t23;
t29 = -t24;
t25 = t4.*t20;
t26 = t10.*t20;
t27 = -t22;
t30 = t21+t26;
t31 = t25+t27;
t34 = -t5.*(t22-t25);
t35 = -t11.*(t22-t25);
t39 = t11.*(t22-t25).*(-4.4835e-1);
t40 = t11.*(t22-t25).*4.4835e-1;
t32 = t5.*t30;
t33 = t11.*t30;
t36 = -t33;
t37 = t32.*4.4835e-1;
t41 = t32+t35;
t45 = -t6.*(t33+t5.*(t22-t25));
t46 = -t12.*(t33+t5.*(t22-t25));
t50 = t12.*(t33+t5.*(t22-t25)).*(-4.5018e-1);
t51 = t12.*(t33+t5.*(t22-t25)).*4.5018e-1;
t38 = -t37;
t42 = t34+t36;
t43 = t6.*t41;
t44 = t12.*t41;
t47 = -t44;
t48 = t43.*4.5018e-1;
t52 = t43+t46;
t55 = t7.*(t44+t6.*(t33+t5.*(t22-t25))).*(-7.137e-2);
t56 = t7.*(t44+t6.*(t33+t5.*(t22-t25))).*7.137e-2;
t58 = t13.*(t44+t6.*(t33+t5.*(t22-t25))).*(-4.120940400000001e-2);
t49 = -t48;
t53 = t45+t47;
t54 = t13.*t52.*7.137e-2;
t57 = t7.*t52.*4.120940400000001e-2;
t59 = t38+t40+t49+t51+t54+t56+t57+t58;
dHeelPos_x = [t8.*(-4.5018e-1)+t28+t29+t59;t28+t29+t59;t59;t59;t49+t51+t54+t56+t57+t58;t54+t56+t57+t58];
