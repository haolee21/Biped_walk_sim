function draw_pos = getRobotPos(q1,q2,q3,q4,q5,q6)
%GETROBOTPOS
%    DRAW_POS = GETROBOTPOS(Q1,Q2,Q3,Q4,Q5,Q6)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    12-Jun-2020 14:23:03

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
t21 = t2.*4.5252e-1;
t22 = t8.*4.5252e-1;
t18 = -t17;
t19 = t15+t16;
t35 = t14.*4.38012e-1;
t36 = t15.*4.38012e-1;
t37 = t16.*4.38012e-1;
t38 = t17.*4.38012e-1;
t20 = t14+t18;
t23 = t4.*t19;
t24 = t10.*t19;
t39 = -t38;
t25 = t4.*t20;
t26 = t10.*t20;
t27 = -t24;
t28 = t23+t26;
t29 = t25+t27;
t32 = -t5.*(t24-t25);
t33 = -t11.*(t24-t25);
t43 = t5.*(t24-t25).*(-4.38012e-1);
t44 = t11.*(t24-t25).*(-4.38012e-1);
t30 = t5.*t28;
t31 = t11.*t28;
t34 = -t31;
t40 = t30.*4.38012e-1;
t41 = t31.*4.38012e-1;
t45 = t30+t33;
t49 = -t12.*(t31+t5.*(t24-t25));
t50 = -t6.*(t31+t5.*(t24-t25));
t51 = t6.*(t31+t5.*(t24-t25));
t55 = t12.*(t31+t5.*(t24-t25)).*(-4.5252e-1);
t42 = -t41;
t46 = t32+t34;
t47 = t12.*t45;
t48 = t6.*t45;
t56 = t51.*(-4.5252e-1);
t52 = t47.*4.5252e-1;
t53 = t48.*4.5252e-1;
t57 = t48+t49;
t58 = t47+t51;
t54 = -t52;
t59 = t7.*t57.*7.65e-2;
t60 = t13.*t57.*7.65e-2;
t63 = t7.*t58.*7.65e-2;
t64 = t13.*t58.*7.65e-2;
t61 = -t59;
t62 = -t60;
t65 = -t63;
draw_pos = reshape([t21,t22,0.0,t2.*2.5657884e-1,t8.*2.5657884e-1,0.0,1.0,t21+t35+t39,t22+t36+t37,0.0,t14.*2.48352804e-1-t17.*2.48352804e-1+t21,t15.*2.48352804e-1+t16.*2.48352804e-1+t22,0.0,1.0,t21-t24.*7.6014e-1+t25.*7.6014e-1+t35+t39,t22+t23.*7.6014e-1+t26.*7.6014e-1+t36+t37,0.0,t21-t24.*4.572982929142857e-1+t25.*4.572982929142857e-1+t35+t39,t22+t23.*4.572982929142857e-1+t26.*4.572982929142857e-1+t36+t37,0.0,1.0,t21+t35+t39+t42+t43,t22+t36+t37+t40+t44,0.0,t21-t31.*1.89659196e-1+t35+t39-t5.*(t24-t25).*1.89659196e-1,t22+t30.*1.89659196e-1+t36+t37-t11.*(t24-t25).*1.89659196e-1,0.0,1.0,t21+t35+t39+t42+t43+t54+t56,t22+t36+t37+t40+t44+t53+t55,0.0,t21+t35+t39+t42+t43-t47.*1.9594116e-1-t51.*1.9594116e-1,t22+t36+t37+t40+t44+t48.*1.9594116e-1-t12.*(t31+t5.*(t24-t25)).*1.9594116e-1,0.0,1.0,t21+t35+t39+t42+t43+t54+t56+t61+t64-t7.*t58.*2.6568e-1-t13.*t57.*2.6568e-1,t22+t36+t37+t40+t44+t53+t55+t62+t65+t7.*t57.*2.6568e-1-t13.*t58.*2.6568e-1,0.0,t21+t35+t39+t42+t43+t54+t56+t61+t64-t7.*t58.*1.1729772e-1-t13.*t57.*1.1729772e-1,t22+t36+t37+t40+t44+t53+t55+t62+t65+t7.*t57.*1.1729772e-1-t13.*t58.*1.1729772e-1,0.0,1.0,t21+t35+t39+t42+t43-t47.*5.2902e-1-t51.*5.2902e-1,t22+t36+t37+t40+t44+t48.*5.2902e-1-t12.*(t31+t5.*(t24-t25)).*5.2902e-1,0.0,0.0,0.0,0.0,0.0],[7,7]);
