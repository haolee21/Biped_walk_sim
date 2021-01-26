function out1 = dL1_6(in1,in2,sampT)
%DL1_6
%    OUT1 = DL1_6(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    22-Jan-2021 01:28:58

q_t1 = in1(:,1);
q_t2 = in1(:,2);
q_t3 = in1(:,3);
q_t4 = in1(:,4);
q_t5 = in1(:,5);
q_t6 = in1(:,6);
qd_t1 = in2(:,1);
qd_t2 = in2(:,2);
qd_t3 = in2(:,3);
qd_t4 = in2(:,4);
qd_t5 = in2(:,5);
qd_t6 = in2(:,6);
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
t12 = q_t1+q_t2;
t13 = cos(t12);
t14 = sin(t12);
t15 = t2.*t3;
t16 = t2.*t8;
t17 = t3.*t7;
t18 = q_t3+q_t4+t12;
t19 = t7.*t8;
t33 = qd_t1.*t2.*4.5018e-1;
t34 = qd_t1.*t7.*4.5018e-1;
t20 = cos(t18);
t21 = q_t5+t18;
t22 = sin(t18);
t25 = -t19;
t29 = t16+t17;
t38 = qd_t1.*t13.*4.4835e-1;
t39 = qd_t2.*t13.*4.4835e-1;
t40 = qd_t1.*t14.*4.4835e-1;
t41 = qd_t2.*t14.*4.4835e-1;
t23 = q_t6+t21;
t24 = sin(t21);
t26 = cos(t21);
t30 = t15+t25;
t31 = t4.*t29;
t32 = t9.*t29;
t42 = qd_t1.*t20.*4.4835e-1;
t43 = qd_t2.*t20.*4.4835e-1;
t44 = qd_t3.*t20.*4.4835e-1;
t45 = qd_t4.*t20.*4.4835e-1;
t46 = qd_t1.*t22.*4.4835e-1;
t47 = qd_t2.*t22.*4.4835e-1;
t48 = qd_t3.*t22.*4.4835e-1;
t49 = qd_t4.*t22.*4.4835e-1;
t27 = cos(t23);
t28 = sin(t23);
t35 = t4.*t30;
t36 = t9.*t30;
t37 = -t32;
t50 = qd_t1.*t26.*4.5018e-1;
t51 = qd_t2.*t26.*4.5018e-1;
t52 = qd_t3.*t26.*4.5018e-1;
t53 = qd_t4.*t26.*4.5018e-1;
t54 = qd_t5.*t26.*4.5018e-1;
t55 = qd_t1.*t24.*4.5018e-1;
t56 = qd_t2.*t24.*4.5018e-1;
t57 = qd_t3.*t24.*4.5018e-1;
t58 = qd_t4.*t24.*4.5018e-1;
t59 = qd_t5.*t24.*4.5018e-1;
t60 = t31+t36;
t61 = t35+t37;
t64 = -t5.*(t32-t35);
t65 = -t10.*(t32-t35);
t67 = qd_t1.*t27.*3.6063444e-2;
t68 = qd_t2.*t27.*3.6063444e-2;
t69 = qd_t3.*t27.*3.6063444e-2;
t70 = qd_t4.*t27.*3.6063444e-2;
t71 = qd_t5.*t27.*3.6063444e-2;
t72 = qd_t6.*t27.*3.6063444e-2;
t73 = qd_t1.*t28.*3.6063444e-2;
t74 = qd_t2.*t28.*3.6063444e-2;
t75 = qd_t3.*t28.*3.6063444e-2;
t76 = qd_t4.*t28.*3.6063444e-2;
t77 = qd_t5.*t28.*3.6063444e-2;
t78 = qd_t6.*t28.*3.6063444e-2;
t62 = t5.*t60;
t63 = t10.*t60;
t81 = t34+t40+t41+t46+t47+t48+t49+t55+t56+t57+t58+t59+t73+t74+t75+t76+t77+t78;
t82 = t33+t38+t39+t42+t43+t44+t45+t50+t51+t52+t53+t54+t67+t68+t69+t70+t71+t72;
t66 = -t63;
t79 = t62+t65;
t80 = t64+t66;
out1 = sin(q_t6).*(t11.*(t63+t5.*(t32-t35))-t6.*t79).*(-1.6671994923285e-1)-(t27.*t82.*3.398979597e-2+t28.*t81.*3.398979597e-2)./sampT+t81.*(t67+t68+t69+t70+t71+t72).*(3.77e+2./8.0e+2)-t82.*(t73+t74+t75+t76+t77+t78).*(3.77e+2./8.0e+2)+cos(q_t6).*(t6.*(t63+t5.*(t32-t35))+t11.*t79).*1.6671994923285e-1;
