function dToePos_y = dToePos_y(in1)
%DTOEPOS_Y
%    DTOEPOS_Y = DTOEPOS_Y(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    17-Oct-2020 02:20:00

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
t33 = t14.*4.453122e-1;
t34 = t17.*4.453122e-1;
t20 = t14+t18;
t21 = t4.*t19;
t22 = t10.*t19;
t35 = -t34;
t23 = t4.*t20;
t24 = t10.*t20;
t25 = -t22;
t26 = t21+t24;
t27 = t23+t25;
t30 = -t5.*(t22-t23);
t31 = -t11.*(t22-t23);
t38 = t5.*(t22-t23).*(-4.453122e-1);
t28 = t5.*t26;
t29 = t11.*t26;
t32 = -t29;
t36 = t29.*4.453122e-1;
t39 = t28+t31;
t43 = -t6.*(t29+t5.*(t22-t23));
t44 = -t12.*(t29+t5.*(t22-t23));
t48 = t6.*(t29+t5.*(t22-t23)).*(-4.60062e-1);
t37 = -t36;
t40 = t30+t32;
t41 = t6.*t39;
t42 = t12.*t39;
t45 = -t42;
t46 = t42.*4.60062e-1;
t49 = t41+t44;
t53 = t13.*(t42+t6.*(t29+t5.*(t22-t23))).*(-7.7775e-2);
t54 = t13.*(t42+t6.*(t29+t5.*(t22-t23))).*7.7775e-2;
t57 = t7.*(t42+t6.*(t29+t5.*(t22-t23))).*(-1.500720048e-1);
t47 = -t46;
t50 = t43+t45;
t51 = t7.*t49.*7.7775e-2;
t55 = t13.*t49.*1.500720048e-1;
t52 = -t51;
t56 = -t55;
t58 = t37+t38+t47+t48+t52+t54+t56+t57;
dToePos_y = [t2.*4.60062e-1+t33+t35+t58;t33+t35+t58;t58;t58;t47+t48+t52+t54+t56+t57;t52+t54+t56+t57];
