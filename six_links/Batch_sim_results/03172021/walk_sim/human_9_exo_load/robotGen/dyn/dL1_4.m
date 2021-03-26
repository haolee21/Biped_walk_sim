function out1 = dL1_4(in1,in2,sampT)
%DL1_4
%    OUT1 = DL1_4(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    04-Feb-2021 02:45:22

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
t62 = qd_t1.*t2.*5.068576200624125e+19;
t63 = qd_t1.*t7.*5.068576200624125e+19;
t20 = cos(t18);
t21 = q_t5+t18;
t22 = sin(t18);
t25 = -t19;
t29 = t16+t17;
t38 = qd_t1.*t13.*4.4835e-1;
t39 = qd_t2.*t13.*4.4835e-1;
t40 = qd_t1.*t14.*4.4835e-1;
t41 = qd_t2.*t14.*4.4835e-1;
t64 = qd_t1.*t13.*5.047972232328905e+19;
t65 = qd_t2.*t13.*5.047972232328905e+19;
t66 = qd_t1.*t14.*5.047972232328905e+19;
t67 = qd_t2.*t14.*5.047972232328905e+19;
t23 = q_t6+t21;
t24 = sin(t21);
t26 = cos(t21);
t30 = t15+t25;
t31 = t4.*t29;
t32 = t9.*t29;
t42 = t20.*4.4835e-1;
t43 = t22.*4.4835e-1;
t68 = qd_t1.*t20.*2.185771976598416e+19;
t69 = qd_t2.*t20.*2.185771976598416e+19;
t70 = qd_t3.*t20.*2.185771976598416e+19;
t71 = qd_t4.*t20.*2.185771976598416e+19;
t72 = qd_t1.*t22.*2.185771976598416e+19;
t73 = qd_t2.*t22.*2.185771976598416e+19;
t74 = qd_t3.*t22.*2.185771976598416e+19;
t75 = qd_t4.*t22.*2.185771976598416e+19;
t27 = cos(t23);
t28 = sin(t23);
t35 = t4.*t30;
t36 = t9.*t30;
t37 = -t32;
t44 = qd_t1.*t42;
t45 = qd_t2.*t42;
t46 = qd_t3.*t42;
t47 = qd_t4.*t42;
t48 = qd_t1.*t43;
t49 = qd_t2.*t43;
t50 = qd_t3.*t43;
t51 = qd_t4.*t43;
t52 = qd_t1.*t26.*4.5018e-1;
t53 = qd_t2.*t26.*4.5018e-1;
t54 = qd_t3.*t26.*4.5018e-1;
t55 = qd_t4.*t26.*4.5018e-1;
t56 = qd_t5.*t26.*4.5018e-1;
t57 = qd_t1.*t24.*4.5018e-1;
t58 = qd_t2.*t24.*4.5018e-1;
t59 = qd_t3.*t24.*4.5018e-1;
t60 = qd_t4.*t24.*4.5018e-1;
t61 = qd_t5.*t24.*4.5018e-1;
t83 = qd_t1.*t26.*1.9492794e-1;
t84 = qd_t2.*t26.*1.9492794e-1;
t85 = qd_t3.*t26.*1.9492794e-1;
t86 = qd_t4.*t26.*1.9492794e-1;
t87 = qd_t5.*t26.*1.9492794e-1;
t88 = qd_t1.*t24.*1.9492794e-1;
t89 = qd_t2.*t24.*1.9492794e-1;
t90 = qd_t3.*t24.*1.9492794e-1;
t91 = qd_t4.*t24.*1.9492794e-1;
t92 = qd_t5.*t24.*1.9492794e-1;
t107 = t62+t64+t65+t68+t69+t70+t71;
t108 = t63+t66+t67+t72+t73+t74+t75;
t76 = t31+t36;
t77 = t35+t37;
t80 = -t5.*(t32-t35);
t81 = -t10.*(t32-t35);
t93 = qd_t1.*t27.*3.6063444e-2;
t94 = qd_t2.*t27.*3.6063444e-2;
t95 = qd_t3.*t27.*3.6063444e-2;
t96 = qd_t4.*t27.*3.6063444e-2;
t97 = qd_t5.*t27.*3.6063444e-2;
t98 = qd_t6.*t27.*3.6063444e-2;
t99 = qd_t1.*t28.*3.6063444e-2;
t100 = qd_t2.*t28.*3.6063444e-2;
t101 = qd_t3.*t28.*3.6063444e-2;
t102 = qd_t4.*t28.*3.6063444e-2;
t103 = qd_t5.*t28.*3.6063444e-2;
t104 = qd_t6.*t28.*3.6063444e-2;
t109 = t34+t40+t41+t48+t49+t50+t51+t88+t89+t90+t91+t92;
t110 = t33+t38+t39+t44+t45+t46+t47+t83+t84+t85+t86+t87;
t78 = t5.*t76;
t79 = t10.*t76;
t111 = t34+t40+t41+t48+t49+t50+t51+t57+t58+t59+t60+t61+t99+t100+t101+t102+t103+t104;
t112 = t33+t38+t39+t44+t45+t46+t47+t52+t53+t54+t55+t56+t93+t94+t95+t96+t97+t98;
t82 = -t79;
t105 = t78+t81;
t106 = t80+t82;
out1 = t79.*2.20258743453e+1+t108.*(t68+t69+t70+t71).*3.234329711406148e-40-t107.*(t72+t73+t74+t75).*3.234329711406148e-40-sin(q_t6).*(t11.*(t79+t5.*(t32-t35))-t6.*t105).*3.0823290348885e-1+t6.*(t79+t5.*(t32-t35)).*8.362955577818251+t109.*(t44+t45+t46+t47+t83+t84+t85+t86+t87).*2.36125-t110.*(t48+t49+t50+t51+t88+t89+t90+t91+t92).*2.36125+t11.*t105.*8.362955577818251+t5.*(t32-t35).*2.20258743453e+1-(qd_t1.*2.896782738879034e-1+qd_t2.*2.896782738879034e-1+qd_t3.*2.896782738879034e-1+qd_t4.*2.896782738879034e-1+qd_t5.*1.177080545281428e-1+qd_t6.*3.041931018393e-2+t20.*t107.*1.41390144925424e-20+t22.*t108.*1.41390144925424e-20+t111.*(t24.*4.5018e-1+t28.*3.6063444e-2+t43).*(6.97e+2./4.0e+2)+t112.*(t26.*4.5018e-1+t27.*3.6063444e-2+t42).*(6.97e+2./4.0e+2)+t109.*(t24.*1.9492794e-1+t43).*4.7225+t110.*(t26.*1.9492794e-1+t42).*4.7225)./sampT+cos(q_t6).*(t6.*(t79+t5.*(t32-t35))+t11.*t105).*3.0823290348885e-1+t111.*(t44+t45+t46+t47+t52+t53+t54+t55+t56+t93+t94+t95+t96+t97+t98).*(6.97e+2./8.0e+2)-t112.*(t48+t49+t50+t51+t57+t58+t59+t60+t61+t99+t100+t101+t102+t103+t104).*(6.97e+2./8.0e+2);
