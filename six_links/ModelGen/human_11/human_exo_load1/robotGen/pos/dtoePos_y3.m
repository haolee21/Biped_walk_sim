function dPos_q3 = dtoePos_y3(in1)
%DTOEPOS_Y3
%    DPOS_Q3 = DTOEPOS_Y3(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    16-Apr-2021 13:30:48

q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
q6 = in1(:,6);
t2 = cos(q1);
t3 = cos(q2);
t4 = cos(q3);
t5 = cos(q4);
t6 = cos(q5);
t7 = cos(q6);
t8 = sin(q1);
t9 = sin(q2);
t10 = sin(q3);
t11 = sin(q4);
t12 = sin(q5);
t13 = sin(q6);
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
t37 = -t12.*(t29+t5.*(t22-t23));
t38 = -t6.*(t29+t5.*(t22-t23));
t39 = t6.*(t29+t5.*(t22-t23));
t34 = t30+t32;
t35 = t12.*t33;
t36 = t6.*t33;
t40 = t36+t37;
t41 = t35+t39;
dPos_q3 = t29.*(-4.4835e-1)-t35.*4.4835e-1-t39.*4.4835e-1-t7.*t40.*7.137e-2-t7.*t41.*1.54545696e-1-t13.*t40.*1.54545696e-1+t13.*t41.*7.137e-2-t5.*(t22-t23).*4.4835e-1;
