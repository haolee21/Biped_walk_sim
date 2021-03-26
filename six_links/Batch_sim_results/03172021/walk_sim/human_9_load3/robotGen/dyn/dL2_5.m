function out1 = dL2_5(in1,in2,sampT)
%DL2_5
%    OUT1 = DL2_5(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    23-Feb-2021 13:39:55

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
t67 = qd_t1.*t26.*1.9492794e-1;
t68 = qd_t2.*t26.*1.9492794e-1;
t69 = qd_t3.*t26.*1.9492794e-1;
t70 = qd_t4.*t26.*1.9492794e-1;
t71 = qd_t5.*t26.*1.9492794e-1;
t72 = qd_t1.*t24.*1.9492794e-1;
t73 = qd_t2.*t24.*1.9492794e-1;
t74 = qd_t3.*t24.*1.9492794e-1;
t75 = qd_t4.*t24.*1.9492794e-1;
t76 = qd_t5.*t24.*1.9492794e-1;
t60 = t31+t36;
t61 = t35+t37;
t64 = -t5.*(t32-t35);
t65 = -t10.*(t32-t35);
t77 = qd_t1.*t27.*3.6063444e-2;
t78 = qd_t2.*t27.*3.6063444e-2;
t79 = qd_t3.*t27.*3.6063444e-2;
t80 = qd_t4.*t27.*3.6063444e-2;
t81 = qd_t5.*t27.*3.6063444e-2;
t82 = qd_t6.*t27.*3.6063444e-2;
t83 = qd_t1.*t28.*3.6063444e-2;
t84 = qd_t2.*t28.*3.6063444e-2;
t85 = qd_t3.*t28.*3.6063444e-2;
t86 = qd_t4.*t28.*3.6063444e-2;
t87 = qd_t5.*t28.*3.6063444e-2;
t88 = qd_t6.*t28.*3.6063444e-2;
t91 = t34+t40+t41+t46+t47+t48+t49+t72+t73+t74+t75+t76;
t92 = t33+t38+t39+t42+t43+t44+t45+t67+t68+t69+t70+t71;
t62 = t5.*t60;
t63 = t10.*t60;
t93 = t34+t40+t41+t46+t47+t48+t49+t55+t56+t57+t58+t59+t83+t84+t85+t86+t87+t88;
t94 = t33+t38+t39+t42+t43+t44+t45+t50+t51+t52+t53+t54+t77+t78+t79+t80+t81+t82;
t66 = -t63;
t89 = t62+t65;
t90 = t64+t66;
out1 = sin(q_t6).*(t11.*(t63+t5.*(t32-t35))-t6.*t89).*(-1.6671994923285e-1)+t6.*(t63+t5.*(t32-t35)).*4.97104263012825+t93.*(t50+t51+t52+t53+t54+t77+t78+t79+t80+t81+t82).*(3.77e+2./8.0e+2)-t94.*(t55+t56+t57+t58+t59+t83+t84+t85+t86+t87+t88).*(3.77e+2./8.0e+2)+(qd_t1.*7.232013102222651e-2+qd_t2.*7.232013102222651e-2+qd_t3.*7.232013102222651e-2+qd_t4.*7.232013102222651e-2+qd_t5.*7.232013102222651e-2+qd_t6.*1.645348628313e-2+t24.*t91.*5.891696986500001e-1+t26.*t92.*5.891696986500001e-1+t93.*(t24.*4.5018e-1+t28.*3.6063444e-2).*(3.77e+2./4.0e+2)+t94.*(t26.*4.5018e-1+t27.*3.6063444e-2).*(3.77e+2./4.0e+2))./sampT+t11.*t89.*4.97104263012825+t91.*(t67+t68+t69+t70+t71).*1.51125-t92.*(t72+t73+t74+t75+t76).*1.51125+cos(q_t6).*(t6.*(t63+t5.*(t32-t35))+t11.*t89).*1.6671994923285e-1;
