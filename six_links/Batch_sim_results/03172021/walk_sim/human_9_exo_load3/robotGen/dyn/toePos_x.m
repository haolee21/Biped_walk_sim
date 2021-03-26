function out1 = toePos_x(in1)
%TOEPOS_X
%    OUT1 = TOEPOS_X(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    23-Feb-2021 13:35:09

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
t20 = t14+t18;
t21 = t4.*t19;
t22 = t10.*t19;
t23 = t4.*t20;
t24 = t10.*t20;
t25 = -t22;
t26 = t21+t24;
t27 = t23+t25;
t30 = -t5.*(t22-t23);
t31 = -t11.*(t22-t23);
t28 = t5.*t26;
t29 = t11.*t26;
t32 = -t29;
t33 = t28+t31;
t37 = -t6.*(t29+t5.*(t22-t23));
t38 = -t12.*(t29+t5.*(t22-t23));
t34 = t30+t32;
t35 = t6.*t33;
t36 = t12.*t33;
t39 = -t36;
t40 = t35+t38;
t41 = t37+t39;
out1 = t2.*4.5018e-1+t14.*4.4835e-1-t17.*4.4835e-1-t29.*4.4835e-1-t36.*4.5018e-1-t6.*(t29+t5.*(t22-t23)).*4.5018e-1-t7.*t40.*7.137e-2-t13.*t40.*1.54545696e-1-t5.*(t22-t23).*4.4835e-1-t7.*(t36+t6.*(t29+t5.*(t22-t23))).*1.54545696e-1+t13.*(t36+t6.*(t29+t5.*(t22-t23))).*7.137e-2;
