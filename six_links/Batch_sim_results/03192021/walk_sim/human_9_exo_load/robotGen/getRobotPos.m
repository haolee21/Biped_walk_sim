function draw_pos = getRobotPos(q_t1,q_t2,q_t3,q_t4,q_t5,q_t6)
%GETROBOTPOS
%    DRAW_POS = GETROBOTPOS(Q_T1,Q_T2,Q_T3,Q_T4,Q_T5,Q_T6)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    04-Feb-2021 02:30:04

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
t21 = t2.*4.5018e-1;
t22 = t8.*4.5018e-1;
t18 = -t17;
t19 = t15+t16;
t25 = t14.*4.4835e-1;
t26 = t15.*4.4835e-1;
t27 = t16.*4.4835e-1;
t28 = t17.*4.4835e-1;
t20 = t14+t18;
t23 = t4.*t19;
t24 = t10.*t19;
t32 = -t28;
t29 = t4.*t20;
t30 = t10.*t20;
t31 = -t24;
t33 = t23+t30;
t34 = t29+t31;
t37 = -t5.*(t24-t29);
t38 = -t11.*(t24-t29);
t43 = t5.*(t24-t29).*(-4.4835e-1);
t44 = t11.*(t24-t29).*(-4.4835e-1);
t35 = t5.*t33;
t36 = t11.*t33;
t39 = -t36;
t40 = t35.*4.4835e-1;
t41 = t36.*4.4835e-1;
t45 = t35+t38;
t49 = -t6.*(t36+t5.*(t24-t29));
t50 = -t12.*(t36+t5.*(t24-t29));
t55 = t6.*(t36+t5.*(t24-t29)).*(-4.5018e-1);
t56 = t12.*(t36+t5.*(t24-t29)).*(-4.5018e-1);
t42 = -t41;
t46 = t37+t39;
t47 = t6.*t45;
t48 = t12.*t45;
t51 = -t48;
t52 = t47.*4.5018e-1;
t53 = t48.*4.5018e-1;
t57 = t47+t50;
t63 = t7.*(t48+t6.*(t36+t5.*(t24-t29))).*(-7.137e-2);
t64 = t13.*(t48+t6.*(t36+t5.*(t24-t29))).*(-7.137e-2);
t65 = t13.*(t48+t6.*(t36+t5.*(t24-t29))).*7.137e-2;
t54 = -t53;
t58 = t49+t51;
t59 = t7.*t57.*7.137e-2;
t60 = t13.*t57.*7.137e-2;
t61 = -t59;
t62 = -t60;
draw_pos = reshape([t21,t22,0.0,t2.*2.5525206e-1,t8.*2.5525206e-1,0.0,1.0,t21+t25+t32,t22+t26+t27,0.0,t14.*2.5421445e-1-t17.*2.5421445e-1+t21,t15.*2.5421445e-1+t16.*2.5421445e-1+t22,0.0,1.0,t21-t24.*6.222e-1+t25+t29.*6.222e-1+t32,t22+t23.*6.222e-1+t26+t27+t30.*6.222e-1,0.0,t21-t24.*3.412436765328911e-1+t25+t29.*3.412436765328911e-1+t32,t22+t23.*3.412436765328911e-1+t26+t27+t30.*3.412436765328911e-1,0.0,1.0,t21+t25+t32+t42+t43,t22+t26+t27+t40+t44,0.0,t21+t25+t32-t36.*1.9413555e-1-t5.*(t24-t29).*1.9413555e-1,t22+t26+t27+t35.*1.9413555e-1-t11.*(t24-t29).*1.9413555e-1,0.0,1.0,t21+t25+t32+t42+t43+t54+t55,t22+t26+t27+t40+t44+t52+t56,0.0,t21+t25+t32+t42+t43-t48.*1.9492794e-1-t6.*(t36+t5.*(t24-t29)).*1.9492794e-1,t22+t26+t27+t40+t44+t47.*1.9492794e-1-t12.*(t36+t5.*(t24-t29)).*1.9492794e-1,0.0,1.0,t21+t25+t32+t42+t43+t54+t55+t61+t65-t13.*t57.*1.54545696e-1-t7.*(t48+t6.*(t36+t5.*(t24-t29))).*1.54545696e-1,t22+t26+t27+t40+t44+t52+t56+t62+t63+t7.*t57.*1.54545696e-1-t13.*(t48+t6.*(t36+t5.*(t24-t29))).*1.54545696e-1,0.0,t21+t25+t32+t42+t43+t54+t55+t61+t65-t13.*t57.*3.6063444e-2-t7.*(t48+t6.*(t36+t5.*(t24-t29))).*3.6063444e-2,t22+t26+t27+t40+t44+t52+t56+t62+t63+t7.*t57.*3.6063444e-2-t13.*(t48+t6.*(t36+t5.*(t24-t29))).*3.6063444e-2,0.0,1.0,t21+t25+t32+t42+t43+t54+t55+t61+t65+t13.*t57.*4.120940400000001e-2+t7.*(t48+t6.*(t36+t5.*(t24-t29))).*4.120940400000001e-2,t22+t26+t27+t40+t44+t52+t56+t62+t63-t7.*t57.*4.120940400000001e-2+t13.*(t48+t6.*(t36+t5.*(t24-t29))).*4.120940400000001e-2,0.0,0.0,0.0,0.0,0.0],[7,7]);
