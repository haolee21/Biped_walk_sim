function dL26_dq1 = dL26_dq1(in1,in2,sampT)
%DL26_DQ1
%    DL26_DQ1 = DL26_DQ1(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    30-Aug-2020 17:14:57

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
t39 = t2.*6.630192165655441e+16;
t40 = t8.*6.630192165655441e+16;
t23 = cos(t21);
t24 = q_t5+t21;
t25 = sin(t21);
t28 = -t22;
t32 = t19+t20;
t41 = qd_t1.*t39;
t42 = qd_t1.*t40;
t43 = t16.*6.417625145547314e+16;
t44 = t15.*6.417625145547314e+16;
t26 = q_t6+t24;
t27 = sin(t24);
t29 = cos(t24);
t33 = t18+t28;
t34 = t4.*t32;
t35 = t10.*t32;
t45 = qd_t1.*t44;
t46 = qd_t2.*t44;
t47 = qd_t1.*t43;
t48 = qd_t2.*t43;
t49 = t23.*6.417625145547314e+16;
t50 = t25.*6.417625145547314e+16;
t30 = cos(t26);
t31 = sin(t26);
t36 = t4.*t33;
t37 = t10.*t33;
t38 = -t35;
t51 = qd_t1.*t49;
t52 = qd_t2.*t49;
t53 = qd_t3.*t49;
t54 = qd_t4.*t49;
t55 = qd_t1.*t50;
t56 = qd_t2.*t50;
t57 = qd_t3.*t50;
t58 = qd_t4.*t50;
t59 = t29.*6.630192165655441e+16;
t60 = t27.*6.630192165655441e+16;
t61 = t30.*3.781624316870491e+15;
t62 = t31.*3.781624316870491e+15;
t75 = qd_t1.*t59;
t76 = qd_t2.*t59;
t77 = qd_t3.*t59;
t78 = qd_t4.*t59;
t79 = qd_t5.*t59;
t80 = qd_t1.*t60;
t81 = qd_t2.*t60;
t82 = qd_t3.*t60;
t83 = qd_t4.*t60;
t84 = qd_t5.*t60;
t85 = t34+t37;
t86 = t36+t38;
t89 = -t5.*(t35-t36);
t90 = -t11.*(t35-t36);
t63 = qd_t1.*t61;
t64 = qd_t2.*t61;
t65 = qd_t3.*t61;
t66 = qd_t4.*t61;
t67 = qd_t5.*t61;
t68 = qd_t6.*t61;
t69 = qd_t1.*t62;
t70 = qd_t2.*t62;
t71 = qd_t3.*t62;
t72 = qd_t4.*t62;
t73 = qd_t5.*t62;
t74 = qd_t6.*t62;
t87 = t5.*t85;
t88 = t11.*t85;
t92 = t59+t61;
t93 = t60+t62;
t91 = -t88;
t94 = t87+t90;
t98 = t49+t92;
t99 = t50+t93;
t100 = -t6.*(t88+t5.*(t35-t36));
t101 = -t12.*(t88+t5.*(t35-t36));
t111 = t69+t70+t71+t72+t73+t74;
t112 = t63+t64+t65+t66+t67+t68;
t95 = t89+t91;
t96 = t6.*t94;
t97 = t12.*t94;
t103 = t44+t98;
t104 = t43+t99;
t107 = t30.*t98.*1.870857489204152e-19;
t108 = t31.*t99.*1.870857489204152e-19;
t115 = t98.*t111.*2.473616272322356e-35;
t116 = t99.*t112.*2.473616272322356e-35;
t119 = t80+t81+t82+t83+t84+t111;
t120 = t75+t76+t77+t78+t79+t112;
t102 = -t97;
t105 = t40+t104;
t106 = t39+t103;
t109 = t96+t101;
t114 = t13.*(t97+t6.*(t88+t5.*(t35-t36))).*(-6.612405458007602e-2);
t117 = -t115;
t118 = t107+t108;
t122 = t55+t56+t57+t58+t119;
t123 = t51+t52+t53+t54+t120;
t110 = t100+t102;
t113 = t7.*t109.*6.612405458007602e-2;
t121 = t17.*t118;
t124 = t45+t46+t123;
t125 = t47+t48+t122;
t127 = t31.*t123.*1.870857489204152e-19;
t129 = t30.*t122.*1.870857489204152e-19;
t137 = t111.*t122.*1.236808136161178e-35;
t138 = t112.*t123.*1.236808136161178e-35;
t126 = t41+t124;
t128 = t42+t125;
t130 = -t127;
t131 = t31.*t126.*9.35428744602076e-20;
t132 = t31.*t126.*1.870857489204152e-19;
t133 = t30.*t128.*9.35428744602076e-20;
t134 = t30.*t128.*1.870857489204152e-19;
t139 = t112.*t126.*1.236808136161178e-35;
t140 = t111.*t128.*1.236808136161178e-35;
t135 = -t131;
t136 = -t134;
t141 = -t139;
t142 = -t140;
t147 = t17.*(t127-t129-t132+t134).*(-1.0./2.0);
t148 = (t17.*(t127-t129-t132+t134))./2.0;
t143 = t116+t117+t121+t133+t135;
t146 = t129+t130+t132+t136;
t144 = t17.*t143;
t145 = -t144;
t149 = t113+t114+t137+t138+t141+t142+t145+t148;
dL26_dq1 = [t113+t114-t17.*(t133+t135+t105.*t112.*2.473616272322356e-35-t106.*t111.*2.473616272322356e-35+t17.*(t30.*t106.*1.870857489204152e-19+t31.*t105.*1.870857489204152e-19));t113+t114+t141+t142-(t17.*(t132+t136+t30.*t125.*1.870857489204152e-19-t31.*t124.*1.870857489204152e-19))./2.0+t111.*t125.*1.236808136161178e-35+t112.*t124.*1.236808136161178e-35-t17.*(t133+t135-t103.*t111.*2.473616272322356e-35+t104.*t112.*2.473616272322356e-35+t17.*(t30.*t103.*1.870857489204152e-19+t31.*t104.*1.870857489204152e-19));t149;t149;t113+t114+t141+t142-(t17.*(t132+t136+t30.*t119.*1.870857489204152e-19-t31.*t120.*1.870857489204152e-19))./2.0+t111.*t119.*1.236808136161178e-35+t112.*t120.*1.236808136161178e-35-t17.*(t133+t135-t92.*t111.*2.473616272322356e-35+t93.*t112.*2.473616272322356e-35+t17.*(t30.*t92.*1.870857489204152e-19+t31.*t93.*1.870857489204152e-19));t113+t114+t141+t142-(t17.*(t132+t136+t30.*t111.*1.870857489204152e-19-t31.*t112.*1.870857489204152e-19))./2.0-t17.*(t133+t135-t30.*t111.*9.35428744602076e-20+t31.*t112.*9.35428744602076e-20+t17.*(t30.^2.*7.074880174573693e-4+t31.^2.*7.074880174573693e-4))+t111.^2.*1.236808136161178e-35+t112.^2.*1.236808136161178e-35];
