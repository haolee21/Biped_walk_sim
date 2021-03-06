function out1 = getRobotPos(q1,q2,q3,q4,q5)
%GETROBOTPOS
%    OUT1 = GETROBOTPOS(Q1,Q2,Q3,Q4,Q5)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    15-Apr-2020 10:58:38

t2 = cos(q1);
t3 = cos(q2);
t4 = cos(q3);
t5 = cos(q4);
t6 = cos(q5);
t7 = sin(q1);
t8 = sin(q2);
t9 = sin(q3);
t10 = sin(q4);
t11 = sin(q5);
t12 = t2.*t3;
t13 = t2.*t8;
t14 = t3.*t7;
t15 = t7.*t8;
t17 = t2.*(9.0./2.0e+1);
t18 = t7.*(9.0./2.0e+1);
t16 = -t15;
t19 = t12.*(9.0./2.0e+1);
t20 = t13.*(9.0./2.0e+1);
t21 = t14.*(9.0./2.0e+1);
t22 = t15.*(9.0./2.0e+1);
t24 = t13+t14;
t23 = -t22;
t25 = t12+t16;
t26 = t4.*t24;
t27 = t9.*t24;
t28 = t4.*t25;
t29 = t9.*t25;
t30 = -t27;
t31 = t26+t29;
t32 = t28+t30;
t35 = -t5.*(t27-t28);
t36 = -t10.*(t27-t28);
t41 = t5.*(t27-t28).*(-9.0./2.0e+1);
t42 = t10.*(t27-t28).*(-9.0./2.0e+1);
t33 = t5.*t31;
t34 = t10.*t31;
t37 = -t34;
t38 = t33.*(9.0./2.0e+1);
t39 = t34.*(9.0./2.0e+1);
t43 = t33+t36;
t40 = -t39;
t44 = t35+t37;
out1 = reshape([t17,t18,0.0,t2.*(9.0./4.0e+1),t7.*(9.0./4.0e+1),0.0,t17+t19+t23,t18+t20+t21,0.0,t12.*(9.0./4.0e+1)-t15.*(9.0./4.0e+1)+t17,t13.*(9.0./4.0e+1)+t14.*(9.0./4.0e+1)+t18,0.0,t17+t19+t23-t27.*(9.0./1.0e+1)+t28.*(9.0./1.0e+1),t18+t20+t21+t26.*(9.0./1.0e+1)+t29.*(9.0./1.0e+1),0.0,t17+t19+t23-t27.*(9.0./2.0e+1)+t28.*(9.0./2.0e+1),t18+t20+t21+t26.*(9.0./2.0e+1)+t29.*(9.0./2.0e+1),0.0,t17+t19+t23+t40+t41,t18+t20+t21+t38+t42,0.0,t17+t19+t23-t34.*(9.0./4.0e+1)-t5.*(t27-t28).*(9.0./4.0e+1),t18+t20+t21+t33.*(9.0./4.0e+1)-t10.*(t27-t28).*(9.0./4.0e+1),0.0,t17+t19+t23+t40+t41-t6.*(t34+t5.*(t27-t28)).*(9.0./2.0e+1)-t11.*t43.*(9.0./2.0e+1),t18+t20+t21+t38+t42-t11.*(t34+t5.*(t27-t28)).*(9.0./2.0e+1)+t6.*t43.*(9.0./2.0e+1),0.0,t17+t19+t23+t40+t41-t6.*(t34+t5.*(t27-t28)).*(9.0./4.0e+1)-t11.*t43.*(9.0./4.0e+1),t18+t20+t21+t38+t42-t11.*(t34+t5.*(t27-t28)).*(9.0./4.0e+1)+t6.*t43.*(9.0./4.0e+1),0.0],[6,5]);
