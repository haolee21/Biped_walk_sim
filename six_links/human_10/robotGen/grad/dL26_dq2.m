function dL26_dq2 = dL26_dq2(in1,in2,sampT)
%DL26_DQ2
%    DL26_DQ2 = DL26_DQ2(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    22-Jan-2021 21:34:54

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
t7 = cos(q_t6);
t8 = sin(q_t1);
t9 = sin(q_t2);
t10 = sin(q_t3);
t11 = sin(q_t4);
t12 = sin(q_t5);
t13 = sin(q_t6);
t14 = q_t1+q_t2;
t17 = 1.0./sampT;
t15 = cos(t14);
t16 = sin(t14);
t18 = t2.*t3;
t19 = t2.*t9;
t20 = t3.*t8;
t21 = q_t3+q_t4+t14;
t22 = t8.*t9;
t33 = t2.*4.182e-1;
t34 = t8.*4.182e-1;
t23 = cos(t21);
t24 = q_t5+t21;
t25 = sin(t21);
t28 = -t22;
t32 = t19+t20;
t36 = qd_t1.*t33;
t37 = qd_t1.*t34;
t38 = t15.*4.165e-1;
t39 = t16.*4.165e-1;
t26 = q_t6+t24;
t27 = sin(t24);
t29 = cos(t24);
t35 = t18+t28;
t40 = t4.*t32;
t41 = t10.*t32;
t42 = qd_t1.*t38;
t43 = qd_t2.*t38;
t44 = qd_t1.*t39;
t45 = qd_t2.*t39;
t49 = t23.*4.165e-1;
t50 = t25.*4.165e-1;
t30 = cos(t26);
t31 = sin(t26);
t46 = t4.*t35;
t47 = t10.*t35;
t48 = -t41;
t51 = t29.*4.182e-1;
t52 = qd_t1.*t49;
t53 = qd_t2.*t49;
t54 = qd_t3.*t49;
t55 = qd_t4.*t49;
t56 = t27.*4.182e-1;
t57 = qd_t1.*t50;
t58 = qd_t2.*t50;
t59 = qd_t3.*t50;
t60 = qd_t4.*t50;
t61 = qd_t1.*t51;
t62 = qd_t2.*t51;
t63 = qd_t3.*t51;
t64 = qd_t4.*t51;
t65 = qd_t5.*t51;
t66 = qd_t1.*t56;
t67 = qd_t2.*t56;
t68 = qd_t3.*t56;
t69 = qd_t4.*t56;
t70 = qd_t5.*t56;
t71 = t40+t47;
t72 = t46+t48;
t75 = -t5.*(t41-t46);
t76 = -t11.*(t41-t46);
t78 = t30.*3.350155999999999e-2;
t79 = t31.*3.350155999999999e-2;
t73 = t5.*t71;
t74 = t11.*t71;
t80 = qd_t1.*t78;
t81 = qd_t2.*t78;
t82 = qd_t3.*t78;
t83 = qd_t4.*t78;
t84 = qd_t5.*t78;
t85 = qd_t6.*t78;
t86 = qd_t1.*t79;
t87 = qd_t2.*t79;
t88 = qd_t3.*t79;
t89 = qd_t4.*t79;
t90 = qd_t5.*t79;
t91 = qd_t6.*t79;
t92 = t51+t78;
t93 = t56+t79;
t77 = -t74;
t94 = t73+t76;
t98 = -t6.*(t74+t5.*(t41-t46));
t99 = -t12.*(t74+t5.*(t41-t46));
t101 = t49+t92;
t102 = t50+t93;
t115 = t86+t87+t88+t89+t90+t91;
t116 = t80+t81+t82+t83+t84+t85;
t95 = t75+t77;
t96 = t6.*t94;
t97 = t12.*t94;
t103 = t38+t101;
t104 = t39+t102;
t107 = t30.*t101.*3.157522029999999e-2;
t108 = t31.*t102.*3.157522029999999e-2;
t117 = t102.*t116.*(3.77e+2./8.0e+2);
t118 = t101.*t115.*(3.77e+2./8.0e+2);
t120 = t66+t67+t68+t69+t70+t115;
t121 = t61+t62+t63+t64+t65+t116;
t100 = -t97;
t105 = t33+t103;
t106 = t34+t104;
t109 = t96+t99;
t112 = t13.*(t97+t6.*(t74+t5.*(t41-t46))).*(-7.743822778574998e-2);
t113 = t107+t108;
t119 = -t118;
t122 = t52+t53+t54+t55+t121;
t123 = t57+t58+t59+t60+t120;
t110 = t98+t100;
t111 = t7.*t109.*7.743822778574998e-2;
t114 = t17.*t113;
t124 = t44+t45+t123;
t125 = t42+t43+t122;
t128 = t30.*t123.*3.157522029999999e-2;
t129 = t31.*t122.*3.157522029999999e-2;
t137 = t116.*t122.*2.35625e-1;
t138 = t115.*t123.*2.35625e-1;
t126 = t36+t125;
t127 = t37+t124;
t130 = -t129;
t131 = t31.*t126.*3.157522029999999e-2;
t132 = t30.*t127.*3.157522029999999e-2;
t133 = t31.*t126.*1.578761015e-2;
t135 = t30.*t127.*1.578761015e-2;
t139 = t115.*t127.*2.35625e-1;
t140 = t116.*t126.*2.35625e-1;
t134 = -t132;
t136 = -t133;
t141 = -t139;
t142 = -t140;
t143 = t128+t130+t131+t134;
t146 = t114+t117+t119+t135+t136;
t144 = (t17.*t143)./2.0;
t147 = t17.*t146;
t145 = -t144;
t148 = t111+t112+t137+t138+t141+t142+t145+t147;
dL26_dq2 = [t111+t112+t17.*(t135+t136-t105.*t115.*(3.77e+2./8.0e+2)+t106.*t116.*(3.77e+2./8.0e+2)+t17.*(t30.*t105.*3.157522029999999e-2+t31.*t106.*3.157522029999999e-2));t111+t112+t141+t142+t115.*t124.*2.35625e-1+t116.*t125.*2.35625e-1+t17.*(t135+t136-t103.*t115.*(3.77e+2./8.0e+2)+t104.*t116.*(3.77e+2./8.0e+2)+t17.*(t30.*t103.*3.157522029999999e-2+t31.*t104.*3.157522029999999e-2))-(t17.*(t131+t134+t30.*t124.*3.157522029999999e-2-t31.*t125.*3.157522029999999e-2))./2.0;t148;t148;t111+t112+t141+t142+t115.*t120.*2.35625e-1+t116.*t121.*2.35625e-1+t17.*(t135+t136-t92.*t115.*(3.77e+2./8.0e+2)+t93.*t116.*(3.77e+2./8.0e+2)+t17.*(t30.*t92.*3.157522029999999e-2+t31.*t93.*3.157522029999999e-2))-(t17.*(t131+t134+t30.*t120.*3.157522029999999e-2-t31.*t121.*3.157522029999999e-2))./2.0;t111+t112+t141+t142+t17.*(t135+t136-t30.*t115.*1.578761015e-2+t31.*t116.*1.578761015e-2+t17.*(t30.^2.*1.057819137393668e-3+t31.^2.*1.057819137393668e-3))-(t17.*(t131+t134+t30.*t115.*3.157522029999999e-2-t31.*t116.*3.157522029999999e-2))./2.0+t115.^2.*2.35625e-1+t116.^2.*2.35625e-1];
