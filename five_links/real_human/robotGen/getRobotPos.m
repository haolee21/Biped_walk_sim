function draw_pos = getRobotPos(q1,q2,q3,q4,q5)
%GETROBOTPOS
%    DRAW_POS = GETROBOTPOS(Q1,Q2,Q3,Q4,Q5)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    24-Apr-2020 12:32:15

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
t22 = t2.*(4.3e+1./1.0e+2);
t23 = t7.*(4.3e+1./1.0e+2);
t16 = -t15;
t17 = t12.*(2.0./5.0);
t18 = t13.*(2.0./5.0);
t19 = t14.*(2.0./5.0);
t20 = t15.*(2.0./5.0);
t24 = t13+t14;
t21 = -t20;
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
t41 = t5.*(t27-t28).*(-2.0./5.0);
t42 = t10.*(t27-t28).*(-2.0./5.0);
t33 = t5.*t31;
t34 = t10.*t31;
t37 = -t34;
t38 = t33.*(2.0./5.0);
t39 = t34.*(2.0./5.0);
t43 = t33+t36;
t40 = -t39;
t44 = t35+t37;
draw_pos = reshape([t22,t23,0.0,t2.*(6.0./2.5e+1),t7.*(6.0./2.5e+1),0.0,t17+t21+t22,t18+t19+t23,0.0,t12.*(2.3e+1./1.0e+2)-t15.*(2.3e+1./1.0e+2)+t22,t13.*(2.3e+1./1.0e+2)+t14.*(2.3e+1./1.0e+2)+t23,0.0,t17+t21+t22-t27.*(7.1e+1./1.0e+2)+t28.*(7.1e+1./1.0e+2),t18+t19+t23+t26.*(7.1e+1./1.0e+2)+t29.*(7.1e+1./1.0e+2),0.0,t17+t21+t22-t27.*(2.9e+1./1.0e+2)+t28.*(2.9e+1./1.0e+2),t18+t19+t23+t26.*(2.9e+1./1.0e+2)+t29.*(2.9e+1./1.0e+2),0.0,t17+t21+t22+t40+t41,t18+t19+t23+t38+t42,0.0,t17+t21+t22-t34.*(1.7e+1./1.0e+2)-t5.*(t27-t28).*(1.7e+1./1.0e+2),t18+t19+t23+t33.*(1.7e+1./1.0e+2)-t10.*(t27-t28).*(1.7e+1./1.0e+2),0.0,t17+t21+t22+t40+t41-t6.*(t34+t5.*(t27-t28)).*(4.3e+1./1.0e+2)-t11.*t43.*(4.3e+1./1.0e+2),t18+t19+t23+t38+t42-t11.*(t34+t5.*(t27-t28)).*(4.3e+1./1.0e+2)+t6.*t43.*(4.3e+1./1.0e+2),0.0,t17+t21+t22+t40+t41-t6.*(t34+t5.*(t27-t28)).*(1.9e+1./1.0e+2)-t11.*t43.*(1.9e+1./1.0e+2),t18+t19+t23+t38+t42-t11.*(t34+t5.*(t27-t28)).*(1.9e+1./1.0e+2)+t6.*t43.*(1.9e+1./1.0e+2),0.0],[6,5]);
