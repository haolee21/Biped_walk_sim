function dL11_dq2 = dL11_dq2(in1,in2,sampT)
%DL11_DQ2
%    DL11_DQ2 = DL11_DQ2(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    01-Aug-2021 18:51:54

dq1 = in2(:,1);
dq2 = in2(:,2);
dq3 = in2(:,3);
dq4 = in2(:,4);
dq5 = in2(:,5);
dq6 = in2(:,6);
q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
q6 = in1(:,6);
t2 = cos(q2);
t3 = cos(q3);
t4 = cos(q4);
t5 = cos(q5);
t6 = cos(q6);
t7 = sin(q2);
t8 = sin(q3);
t9 = sin(q4);
t10 = sin(q5);
t11 = sin(q6);
t12 = q1+q2;
t13 = q2+q3;
t14 = q3+q4;
t15 = q4+q5;
t16 = q5+q6;
t30 = 1.0./sampT;
t92 = atan(1.979012320620293);
t93 = 4.501575681747185e+18;
t17 = cos(t13);
t18 = cos(t14);
t19 = cos(t15);
t20 = cos(t16);
t21 = q3+t12;
t22 = q4+t13;
t23 = q5+t14;
t24 = q6+t15;
t25 = sin(t12);
t26 = sin(t13);
t27 = sin(t14);
t28 = sin(t15);
t29 = sin(t16);
t31 = t30.^2;
t35 = t12+t14;
t36 = t13+t15;
t37 = t14+t16;
t52 = t11.*6.03176239575e-2;
t96 = t6.*3.0478650046299e-2;
t119 = t4.*3.78246433383;
t131 = t3.*3.105481568125425e+1;
t132 = t5.*9.050792802904125e-1;
t32 = cos(t22);
t33 = cos(t23);
t34 = cos(t24);
t38 = sin(t21);
t39 = sin(t22);
t40 = sin(t23);
t41 = sin(t24);
t42 = cos(t36);
t43 = cos(t37);
t44 = t12+t23;
t45 = t13+t24;
t46 = sin(t35);
t47 = sin(t36);
t48 = sin(t37);
t53 = -t52;
t56 = t29.*6.03176239575e-2;
t61 = dq1.*t20.*6.03176239575e-2;
t62 = dq2.*t20.*6.03176239575e-2;
t63 = dq3.*t20.*6.03176239575e-2;
t64 = dq4.*t20.*6.03176239575e-2;
t70 = t29.*3.015881197875e-2;
t71 = dq5.*t20.*3.015881197875e-2;
t72 = dq6.*t20.*3.015881197875e-2;
t94 = t16+t35+t92;
t97 = t20.*3.0478650046299e-2;
t98 = t20.*1.52393250231495e-2;
t101 = dq1.*t29.*3.0478650046299e-2;
t102 = dq2.*t29.*3.0478650046299e-2;
t103 = dq3.*t29.*3.0478650046299e-2;
t104 = dq4.*t29.*3.0478650046299e-2;
t105 = t25.*1.080011377816875e+2;
t108 = dq5.*t29.*1.52393250231495e-2;
t109 = dq6.*t29.*1.52393250231495e-2;
t133 = t19.*6.28014194487225e-1;
t134 = t19.*1.25602838897445;
t135 = t18.*1.36279964968875;
t136 = t18.*2.7255992993775;
t137 = t17.*1.552740784062713e+1;
t138 = dq1.*t28.*1.25602838897445;
t139 = dq2.*t28.*1.25602838897445;
t140 = dq3.*t28.*1.25602838897445;
t141 = dq4.*t28.*6.28014194487225e-1;
t142 = dq5.*t28.*6.28014194487225e-1;
t144 = dq1.*t27.*2.7255992993775;
t145 = dq2.*t27.*2.7255992993775;
t146 = dq3.*t27.*1.36279964968875;
t147 = dq4.*t27.*1.36279964968875;
t148 = dq1.*t26.*3.105481568125425e+1;
t149 = dq2.*t26.*1.552740784062713e+1;
t150 = dq3.*t26.*1.552740784062713e+1;
t49 = sin(t44);
t50 = sin(t45);
t51 = cos(t45);
t54 = t41.*4.1853045195e-2;
t55 = t41.*8.370609039e-2;
t58 = dq1.*t34.*8.370609039e-2;
t59 = dq2.*t34.*8.370609039e-2;
t60 = dq3.*t34.*8.370609039e-2;
t65 = dq4.*t34.*4.1853045195e-2;
t66 = dq5.*t34.*4.1853045195e-2;
t67 = dq6.*t34.*4.1853045195e-2;
t69 = -t56;
t73 = t48.*6.03176239575e-2;
t74 = -t70;
t75 = dq1.*t43.*6.03176239575e-2;
t76 = dq2.*t43.*6.03176239575e-2;
t78 = t48.*3.015881197875e-2;
t79 = dq3.*t43.*3.015881197875e-2;
t80 = dq4.*t43.*3.015881197875e-2;
t81 = dq5.*t43.*3.015881197875e-2;
t82 = dq6.*t43.*3.015881197875e-2;
t95 = sin(t94);
t99 = t34.*2.1148451052534e-2;
t100 = t34.*4.2296902105068e-2;
t106 = t46.*7.4545915933125;
t107 = t43.*3.0478650046299e-2;
t110 = dq1.*t41.*4.2296902105068e-2;
t111 = dq2.*t41.*4.2296902105068e-2;
t112 = dq3.*t41.*4.2296902105068e-2;
t113 = dq4.*t41.*2.1148451052534e-2;
t114 = dq5.*t41.*2.1148451052534e-2;
t115 = dq6.*t41.*2.1148451052534e-2;
t116 = t43.*1.52393250231495e-2;
t117 = dq1.*t48.*3.0478650046299e-2;
t118 = dq2.*t48.*3.0478650046299e-2;
t121 = dq3.*t48.*1.52393250231495e-2;
t122 = dq4.*t48.*1.52393250231495e-2;
t123 = dq5.*t48.*1.52393250231495e-2;
t124 = dq6.*t48.*1.52393250231495e-2;
t143 = t32.*1.36279964968875;
t151 = dq1.*t39.*2.7255992993775;
t152 = dq2.*t39.*1.36279964968875;
t153 = dq3.*t39.*1.36279964968875;
t154 = dq4.*t39.*1.36279964968875;
t155 = t33.*4.525396401452063e-1;
t156 = t33.*9.050792802904125e-1;
t157 = t42.*4.525396401452063e-1;
t158 = dq1.*t40.*9.050792802904125e-1;
t159 = dq2.*t40.*9.050792802904125e-1;
t160 = dq3.*t40.*4.525396401452063e-1;
t161 = dq4.*t40.*4.525396401452063e-1;
t162 = dq5.*t40.*4.525396401452063e-1;
t163 = dq1.*t47.*9.050792802904125e-1;
t164 = dq2.*t47.*4.525396401452063e-1;
t165 = dq3.*t47.*4.525396401452063e-1;
t166 = dq4.*t47.*4.525396401452063e-1;
t167 = dq5.*t47.*4.525396401452063e-1;
t168 = t38.*6.896678435529809e+1;
t57 = -t54;
t68 = -t55;
t77 = -t73;
t83 = t50.*3.015881197875e-2;
t84 = dq1.*t51.*6.03176239575e-2;
t85 = -t78;
t87 = dq2.*t51.*3.015881197875e-2;
t88 = dq3.*t51.*3.015881197875e-2;
t89 = dq4.*t51.*3.015881197875e-2;
t90 = dq5.*t51.*3.015881197875e-2;
t91 = dq6.*t51.*3.015881197875e-2;
t120 = t51.*1.52393250231495e-2;
t125 = dq1.*t50.*3.0478650046299e-2;
t126 = dq2.*t50.*1.52393250231495e-2;
t127 = dq3.*t50.*1.52393250231495e-2;
t128 = dq4.*t50.*1.52393250231495e-2;
t129 = dq5.*t50.*1.52393250231495e-2;
t130 = dq6.*t50.*1.52393250231495e-2;
t169 = t49.*2.475417569880938;
t170 = t93.*t95.*4.10601552758294e-20;
t86 = -t83;
dL11_dq2 = [t105+t106+t168+t169+t170+sin(q1).*1.129803118051191e+2-t31.*(t2.*3.94881224256225e+1+t17.*3.105481568125425e+1+t32.*2.7255992993775+t42.*9.050792802904125e-1-t50.*6.03176239575e-2+t51.*3.0478650046299e-2+t53+t68+t69+t77+t96+t97+t100+t107+t119+t131+t132+t134+t136+t156+6.314434393547206e+1);t105+t106+t168+t169+t170-t31.*(t2.*1.974406121281125e+1+t53+t68+t69+t77+t86+t96+t97+t100+t107+t119+t120+t131+t132+t134+t136+t137+t143+t156+t157+4.258377595317307e+1)+(t30.*(t84+t87+t88+t89+t90+t91+t125+t126+t127+t128+t129+t130+t148+t149+t150+t151+t152+t153+t154+t163+t164+t165+t166+t167+dq1.*t7.*3.94881224256225e+1+dq2.*t7.*1.974406121281125e+1))./2.0;t106+t168+t169+t170-t31.*(t3.*1.552740784062713e+1+t53+t68+t69+t85+t86+t96+t97+t100+t116+t119+t120+t132+t134+t135+t137+t143+t155+t157+2.302418528699879e+1)+(t30.*(t75+t76+t79+t80+t81+t82+t84+t87+t88+t89+t90+t91+t117+t118+t121+t122+t123+t124+t125+t126+t127+t128+t129+t130+t144+t145+t146+t147+t148+t149+t150+t151+t152+t153+t154+t158+t159+t160+t161+t162+t163+t164+t165+t166+t167+dq1.*t8.*3.105481568125425e+1+dq2.*t8.*3.105481568125425e+1+dq3.*t8.*1.552740784062713e+1))./2.0;t106+t169+t170-t31.*(t4.*1.891232166915+t53+t57+t69+t85+t86+t96+t97+t99+t116+t120+t132+t133+t135+t143+t155+t157+1.559595569006101)+(t30.*(t58+t59+t60+t65+t66+t67+t75+t76+t79+t80+t81+t82+t84+t87+t88+t89+t90+t91+t110+t111+t112+t113+t114+t115+t117+t118+t121+t122+t123+t124+t125+t126+t127+t128+t129+t130+t138+t139+t140+t141+t142+t144+t145+t146+t147+t151+t152+t153+t154+t158+t159+t160+t161+t162+t163+t164+t165+t166+t167+dq1.*t9.*3.78246433383+dq2.*t9.*3.78246433383+dq3.*t9.*3.78246433383+dq4.*t9.*1.891232166915))./2.0;t169+t170-t31.*(t5.*4.525396401452063e-1+t53+t57+t74+t85+t86+t96+t98+t99+t116+t120+t133+t155+t157+3.812664659543186e-1)+(t30.*(t58+t59+t60+t61+t62+t63+t64+t65+t66+t67+t71+t72+t75+t76+t79+t80+t81+t82+t84+t87+t88+t89+t90+t91+t101+t102+t103+t104+t108+t109+t110+t111+t112+t113+t114+t115+t117+t118+t121+t122+t123+t124+t125+t126+t127+t128+t129+t130+t138+t139+t140+t141+t142+t158+t159+t160+t161+t162+t163+t164+t165+t166+t167+dq1.*t10.*9.050792802904125e-1+dq2.*t10.*9.050792802904125e-1+dq3.*t10.*9.050792802904125e-1+dq4.*t10.*9.050792802904125e-1+dq5.*t10.*4.525396401452063e-1))./2.0;t170-t31.*(t6.*1.52393250231495e-2-t11.*3.015881197875e-2+t57+t74+t85+t86+t98+t99+t116+t120+2.248006586491552e-2)+(t30.*(t58+t59+t60+t61+t62+t63+t64+t65+t66+t67+t71+t72+t75+t76+t79+t80+t81+t82+t84+t87+t88+t89+t90+t91+t101+t102+t103+t104+t108+t109+t110+t111+t112+t113+t114+t115+t117+t118+t121+t122+t123+t124+t125+t126+t127+t128+t129+t130+dq1.*t6.*6.03176239575e-2+dq2.*t6.*6.03176239575e-2+dq3.*t6.*6.03176239575e-2+dq4.*t6.*6.03176239575e-2+dq5.*t6.*6.03176239575e-2+dq1.*t11.*3.0478650046299e-2+dq6.*t6.*3.015881197875e-2+dq2.*t11.*3.0478650046299e-2+dq3.*t11.*3.0478650046299e-2+dq4.*t11.*3.0478650046299e-2+dq5.*t11.*3.0478650046299e-2+dq6.*t11.*1.52393250231495e-2))./2.0];
