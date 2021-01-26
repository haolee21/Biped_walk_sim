function out1 = dL1_2(in1,in2,sampT)
%DL1_2
%    OUT1 = DL1_2(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    22-Jan-2021 22:38:40

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
t13 = q_t2+q_t3;
t14 = qd_t1.^2;
t15 = cos(t12);
t16 = sin(t12);
t17 = sin(t13);
t18 = t2.*t3;
t19 = t2.*t8;
t20 = t3.*t7;
t21 = q_t3+q_t4+t12;
t22 = t7.*t8;
t36 = qd_t1.*t2.*4.5018e-1;
t37 = qd_t1.*t7.*4.5018e-1;
t67 = qd_t1.*t2.*5.068576200624125e+19;
t68 = qd_t1.*t7.*5.068576200624125e+19;
t23 = cos(t21);
t24 = q_t5+t21;
t25 = sin(t21);
t28 = -t22;
t32 = t19+t20;
t38 = t15.*4.4835e-1;
t39 = t16.*4.4835e-1;
t69 = qd_t1.*t15.*5.047972232328905e+19;
t70 = qd_t2.*t15.*5.047972232328905e+19;
t71 = qd_t1.*t16.*5.047972232328905e+19;
t72 = qd_t2.*t16.*5.047972232328905e+19;
t26 = q_t6+t24;
t27 = sin(t24);
t29 = cos(t24);
t33 = t18+t28;
t34 = t4.*t32;
t35 = t9.*t32;
t43 = qd_t1.*t38;
t44 = qd_t2.*t38;
t45 = qd_t1.*t39;
t46 = qd_t2.*t39;
t47 = t23.*4.4835e-1;
t48 = t25.*4.4835e-1;
t73 = qd_t1.*t23.*2.185771976598416e+19;
t74 = qd_t2.*t23.*2.185771976598416e+19;
t75 = qd_t3.*t23.*2.185771976598416e+19;
t76 = qd_t4.*t23.*2.185771976598416e+19;
t77 = qd_t1.*t25.*2.185771976598416e+19;
t78 = qd_t2.*t25.*2.185771976598416e+19;
t79 = qd_t3.*t25.*2.185771976598416e+19;
t80 = qd_t4.*t25.*2.185771976598416e+19;
t30 = cos(t26);
t31 = sin(t26);
t40 = t4.*t33;
t41 = t9.*t33;
t42 = -t35;
t49 = qd_t1.*t47;
t50 = qd_t2.*t47;
t51 = qd_t3.*t47;
t52 = qd_t4.*t47;
t53 = qd_t1.*t48;
t54 = qd_t2.*t48;
t55 = qd_t3.*t48;
t56 = qd_t4.*t48;
t57 = qd_t1.*t29.*4.5018e-1;
t58 = qd_t2.*t29.*4.5018e-1;
t59 = qd_t3.*t29.*4.5018e-1;
t60 = qd_t4.*t29.*4.5018e-1;
t61 = qd_t5.*t29.*4.5018e-1;
t62 = qd_t1.*t27.*4.5018e-1;
t63 = qd_t2.*t27.*4.5018e-1;
t64 = qd_t3.*t27.*4.5018e-1;
t65 = qd_t4.*t27.*4.5018e-1;
t66 = qd_t5.*t27.*4.5018e-1;
t88 = qd_t1.*t29.*1.9492794e-1;
t89 = qd_t2.*t29.*1.9492794e-1;
t90 = qd_t3.*t29.*1.9492794e-1;
t91 = qd_t4.*t29.*1.9492794e-1;
t92 = qd_t5.*t29.*1.9492794e-1;
t93 = qd_t1.*t27.*1.9492794e-1;
t94 = qd_t2.*t27.*1.9492794e-1;
t95 = qd_t3.*t27.*1.9492794e-1;
t96 = qd_t4.*t27.*1.9492794e-1;
t97 = qd_t5.*t27.*1.9492794e-1;
t112 = t67+t69+t70+t73+t74+t75+t76;
t113 = t68+t71+t72+t77+t78+t79+t80;
t81 = t34+t41;
t82 = t40+t42;
t85 = -t5.*(t35-t40);
t86 = -t10.*(t35-t40);
t98 = qd_t1.*t30.*3.6063444e-2;
t99 = qd_t2.*t30.*3.6063444e-2;
t100 = qd_t3.*t30.*3.6063444e-2;
t101 = qd_t4.*t30.*3.6063444e-2;
t102 = qd_t5.*t30.*3.6063444e-2;
t103 = qd_t6.*t30.*3.6063444e-2;
t104 = qd_t1.*t31.*3.6063444e-2;
t105 = qd_t2.*t31.*3.6063444e-2;
t106 = qd_t3.*t31.*3.6063444e-2;
t107 = qd_t4.*t31.*3.6063444e-2;
t108 = qd_t5.*t31.*3.6063444e-2;
t109 = qd_t6.*t31.*3.6063444e-2;
t114 = t37+t45+t46+t53+t54+t55+t56+t93+t94+t95+t96+t97;
t115 = t36+t43+t44+t49+t50+t51+t52+t88+t89+t90+t91+t92;
t83 = t5.*t81;
t84 = t10.*t81;
t116 = t37+t45+t46+t53+t54+t55+t56+t62+t63+t64+t65+t66+t104+t105+t106+t107+t108+t109;
t117 = t36+t43+t44+t49+t50+t51+t52+t57+t58+t59+t60+t61+t98+t99+t100+t101+t102+t103;
t87 = -t84;
t110 = t83+t86;
t111 = t85+t87;
out1 = t18.*(-1.72019140563375e+2)+t22.*1.72019140563375e+2+t35.*1.072403809535427e+2-t40.*1.072403809535427e+2+t84.*1.4909183186625e+1-sin(q_t6).*(t11.*(t84+t5.*(t35-t40))-t6.*t110).*1.6671994923285e-1+t6.*(t84+t5.*(t35-t40)).*4.97104263012825+t114.*(t43+t44+t49+t50+t51+t52+t88+t89+t90+t91+t92).*1.51125-t115.*(t45+t46+t53+t54+t55+t56+t93+t94+t95+t96+t97).*1.51125-t8.*t14.*6.83782418168325-t14.*t17.*4.921251243391016+t11.*t110.*4.97104263012825+t5.*(t35-t40).*1.4909183186625e+1-(qd_t1.*2.719062807063214e+1+qd_t2.*2.719062807063214e+1+qd_t3.*1.375504232042036e+1+qd_t4.*1.921845015486628e-1+qd_t5.*5.586664473909651e-2+qd_t1.*t3.*1.36756483633665e+1+qd_t1.*t4.*1.960498462814307e+1+qd_t2.*t4.*1.960498462814307e+1+qd_t3.*t4.*9.802492314071536+t114.*(t27.*1.9492794e-1+t39+t48).*3.0225+t115.*(t29.*1.9492794e-1+t38+t47).*3.0225+qd_t1.*cos(t13).*9.842502486782032+t112.*(t15.*5.047972232328905e+19+t23.*2.185771976598416e+19).*5.127595883936577e-40+t113.*(t16.*5.047972232328905e+19+t25.*2.185771976598416e+19).*5.127595883936577e-40+t116.*(t27.*4.5018e-1+t31.*3.6063444e-2+t39+t48).*(3.77e+2./4.0e+2)+t117.*(t29.*4.5018e-1+t30.*3.6063444e-2+t38+t47).*(3.77e+2./4.0e+2))./sampT+t116.*(t43+t44+t49+t50+t51+t52+t57+t58+t59+t60+t61+t98+t99+t100+t101+t102+t103).*(3.77e+2./8.0e+2)-t117.*(t45+t46+t53+t54+t55+t56+t62+t63+t64+t65+t66+t104+t105+t106+t107+t108+t109).*(3.77e+2./8.0e+2)+t113.*(t69+t70+t73+t74+t75+t76).*2.563797941968288e-40-t112.*(t71+t72+t77+t78+t79+t80).*2.563797941968288e-40+cos(q_t6).*(t6.*(t84+t5.*(t35-t40))+t11.*t110).*1.6671994923285e-1-qd_t1.*qd_t2.*t8.*6.83782418168325-qd_t1.*qd_t2.*t17.*4.921251243391016-qd_t1.*qd_t3.*t17.*4.921251243391016;
