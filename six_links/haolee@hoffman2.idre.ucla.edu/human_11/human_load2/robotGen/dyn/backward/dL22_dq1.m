function dL22_dq1 = dL22_dq1(in1,in2,sampT)
%DL22_DQ1
%    DL22_DQ1 = DL22_DQ1(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    22-Apr-2021 17:14:03

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
t17 = dq1.^2;
t31 = 1.0./sampT;
t92 = atan(1.979012320620293);
t93 = 4.501575681747185e+18;
t18 = cos(t13);
t19 = cos(t14);
t20 = cos(t15);
t21 = cos(t16);
t22 = q3+t12;
t23 = q4+t13;
t24 = q5+t14;
t25 = q6+t15;
t26 = sin(t12);
t27 = sin(t13);
t28 = sin(t14);
t29 = sin(t15);
t30 = sin(t16);
t35 = t12+t14;
t36 = t13+t15;
t37 = t14+t16;
t52 = t11.*6.03176239575e-2;
t96 = t6.*3.0478650046299e-2;
t124 = t4.*1.25602838897445;
t125 = dq1.*t7.*1.974406121281125e+1;
t126 = t3.*3.105481568125425e+1;
t145 = t5.*9.050792802904125e-1;
t32 = cos(t23);
t33 = cos(t24);
t34 = cos(t25);
t38 = sin(t22);
t39 = sin(t23);
t40 = sin(t24);
t41 = sin(t25);
t42 = cos(t36);
t43 = cos(t37);
t44 = t12+t24;
t45 = t13+t25;
t46 = sin(t35);
t47 = sin(t36);
t48 = sin(t37);
t53 = -t52;
t56 = t30.*6.03176239575e-2;
t61 = dq1.*t21.*6.03176239575e-2;
t62 = dq2.*t21.*6.03176239575e-2;
t63 = dq3.*t21.*6.03176239575e-2;
t64 = dq4.*t21.*6.03176239575e-2;
t70 = t30.*3.015881197875e-2;
t71 = dq5.*t21.*3.015881197875e-2;
t72 = dq6.*t21.*3.015881197875e-2;
t94 = t16+t35+t92;
t97 = t21.*3.0478650046299e-2;
t98 = t21.*1.52393250231495e-2;
t101 = dq1.*t30.*3.0478650046299e-2;
t102 = dq2.*t30.*3.0478650046299e-2;
t103 = dq3.*t30.*3.0478650046299e-2;
t104 = dq4.*t30.*3.0478650046299e-2;
t107 = dq5.*t30.*1.52393250231495e-2;
t108 = dq6.*t30.*1.52393250231495e-2;
t132 = t20.*1.891232166915;
t133 = t20.*3.78246433383;
t140 = dq1.*t29.*3.78246433383;
t141 = dq2.*t29.*3.78246433383;
t142 = dq3.*t29.*3.78246433383;
t143 = dq4.*t29.*1.891232166915;
t144 = dq5.*t29.*1.891232166915;
t149 = dq1.*t27.*7.763703920313563;
t150 = dq1.*t27.*1.552740784062713e+1;
t151 = t19.*4.525396401452063e-1;
t152 = t19.*9.050792802904125e-1;
t158 = dq1.*t28.*9.050792802904125e-1;
t159 = dq2.*t28.*9.050792802904125e-1;
t160 = dq3.*t28.*4.525396401452063e-1;
t161 = dq4.*t28.*4.525396401452063e-1;
t166 = dq1.*dq2.*t18.*3.881851960156781;
t167 = dq1.*dq3.*t18.*3.881851960156781;
t172 = t17.*t18.*3.881851960156781;
t192 = t26.*1.129803118051191e+2;
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
t105 = t43.*3.0478650046299e-2;
t109 = dq1.*t41.*4.2296902105068e-2;
t110 = dq2.*t41.*4.2296902105068e-2;
t111 = dq3.*t41.*4.2296902105068e-2;
t112 = dq4.*t41.*2.1148451052534e-2;
t113 = dq5.*t41.*2.1148451052534e-2;
t114 = dq6.*t41.*2.1148451052534e-2;
t115 = t43.*1.52393250231495e-2;
t116 = dq1.*t48.*3.0478650046299e-2;
t117 = dq2.*t48.*3.0478650046299e-2;
t118 = dq3.*t48.*1.52393250231495e-2;
t119 = dq4.*t48.*1.52393250231495e-2;
t120 = dq5.*t48.*1.52393250231495e-2;
t121 = dq6.*t48.*1.52393250231495e-2;
t147 = t33.*1.36279964968875;
t148 = t33.*2.7255992993775;
t153 = dq1.*t40.*2.7255992993775;
t154 = dq2.*t40.*2.7255992993775;
t155 = dq3.*t40.*1.36279964968875;
t156 = dq4.*t40.*1.36279964968875;
t157 = dq5.*t40.*1.36279964968875;
t162 = dq1.*t47.*6.81399824844375e-1;
t163 = dq1.*t47.*1.36279964968875;
t164 = dq1.*t39.*2.262698200726031e-1;
t165 = dq1.*t39.*4.525396401452063e-1;
t168 = dq1.*dq2.*t42.*3.406999124221875e-1;
t169 = dq1.*dq3.*t42.*3.406999124221875e-1;
t170 = dq1.*dq4.*t42.*3.406999124221875e-1;
t171 = dq1.*dq5.*t42.*3.406999124221875e-1;
t173 = -t166;
t174 = -t167;
t175 = t17.*t42.*3.406999124221875e-1;
t180 = dq1.*dq2.*t32.*1.131349100363016e-1;
t181 = dq1.*dq3.*t32.*1.131349100363016e-1;
t182 = dq1.*dq4.*t32.*1.131349100363016e-1;
t183 = -t172;
t185 = t17.*t32.*1.131349100363016e-1;
t190 = t38.*6.896678435529809e+1;
t191 = t46.*2.475417569880938;
t57 = -t54;
t68 = -t55;
t77 = -t73;
t83 = -t78;
t84 = dq1.*t51.*3.015881197875e-2;
t85 = dq1.*t51.*1.5079405989375e-2;
t86 = dq1.*dq2.*t50.*7.5397029946875e-3;
t87 = dq1.*dq3.*t50.*7.5397029946875e-3;
t88 = dq1.*dq4.*t50.*7.5397029946875e-3;
t89 = dq1.*dq5.*t50.*7.5397029946875e-3;
t90 = dq1.*dq6.*t50.*7.5397029946875e-3;
t91 = t17.*t50.*7.5397029946875e-3;
t106 = t49.*7.4545915933125;
t122 = dq1.*t50.*7.61966251157475e-3;
t123 = dq1.*t50.*1.52393250231495e-2;
t127 = dq1.*dq2.*t51.*3.809831255787375e-3;
t128 = dq1.*dq3.*t51.*3.809831255787375e-3;
t129 = dq1.*dq4.*t51.*3.809831255787375e-3;
t130 = dq1.*dq5.*t51.*3.809831255787375e-3;
t131 = dq1.*dq6.*t51.*3.809831255787375e-3;
t134 = t17.*t51.*3.809831255787375e-3;
t176 = -t168;
t177 = -t169;
t178 = -t170;
t179 = -t171;
t184 = -t175;
t186 = -t180;
t187 = -t181;
t188 = -t182;
t189 = -t185;
t193 = t93.*t95.*4.10601552758294e-20;
t135 = -t127;
t136 = -t128;
t137 = -t129;
t138 = -t130;
t139 = -t131;
t146 = -t134;
dL22_dq1 = [t106+t190+t191+t192+t193+t31.*(t84+t123+t125+t150+t163+t165+dq2.*t7.*9.872030606405625+dq2.*t27.*7.763703920313563+dq3.*t27.*7.763703920313563+dq2.*t39.*2.262698200726031e-1+dq3.*t39.*2.262698200726031e-1+dq4.*t39.*2.262698200726031e-1+dq2.*t47.*6.81399824844375e-1+dq3.*t47.*6.81399824844375e-1+dq4.*t47.*6.81399824844375e-1+dq2.*t50.*7.61966251157475e-3+dq5.*t47.*6.81399824844375e-1+dq2.*t51.*1.5079405989375e-2+dq3.*t50.*7.61966251157475e-3+dq3.*t51.*1.5079405989375e-2+dq4.*t50.*7.61966251157475e-3+dq4.*t51.*1.5079405989375e-2+dq5.*t50.*7.61966251157475e-3+dq5.*t51.*1.5079405989375e-2+dq6.*t50.*7.61966251157475e-3+dq6.*t51.*1.5079405989375e-2-t31.*(t2.*1.974406121281125e+1+t18.*1.552740784062713e+1+t32.*4.525396401452063e-1+t42.*1.36279964968875-t50.*3.015881197875e-2+t51.*1.52393250231495e-2+t53+t68+t69+t77+t96+t97+t100+t105+t124+t126+t133+t145+t148+t152+4.358475326929778e+1));t86+t87+t88+t89+t90+t91+t106+t135+t136+t137+t138+t139+t146+t173+t174+t176+t177+t178+t179+t183+t184+t186+t187+t188+t189+t190+t191+t192+t193-t2.*t17.*4.936015303202812+t31.*(t85+t122+t149+t162+t164+dq1.*t7.*9.872030606405625-t31.*(t53+t68+t69+t77+t96+t97+t100+t105+t124+t126+t133+t145+t148+t152+4.358475326929778e+1))-(t31.*(t84+t123+t125+t150+t163+t165))./2.0-dq1.*dq2.*t2.*4.936015303202812;t86+t87+t88+t89+t90+t91+t106+t135+t136+t137+t138+t139+t146+t173+t174+t176+t177+t178+t179+t183+t184+t186+t187+t188+t189+t190+t191+t193+t31.*(t85+t122+t149+t162+t164-t31.*(t3.*1.552740784062713e+1+t53+t68+t69+t83+t96+t97+t100+t115+t124+t133+t145+t147+t151+2.302418528699879e+1))-(t31.*(t75+t76+t79+t80+t81+t82+t84+t116+t117+t118+t119+t120+t121+t123+t150+t153+t154+t155+t156+t157+t158+t159+t160+t161+t163+t165+dq1.*t8.*3.105481568125425e+1+dq2.*t8.*3.105481568125425e+1+dq3.*t8.*1.552740784062713e+1))./2.0;t86+t87+t88+t89+t90+t91+t106+t135+t136+t137+t138+t139+t146+t176+t177+t178+t179+t184+t186+t187+t188+t189+t191+t193-(t31.*(t58+t59+t60+t65+t66+t67+t75+t76+t79+t80+t81+t82+t84+t109+t110+t111+t112+t113+t114+t116+t117+t118+t119+t120+t121+t123+t140+t141+t142+t143+t144+t153+t154+t155+t156+t157+t158+t159+t160+t161+t163+t165+dq1.*t9.*1.25602838897445+dq2.*t9.*1.25602838897445+dq3.*t9.*1.25602838897445+dq4.*t9.*6.28014194487225e-1))./2.0+t31.*(t85+t122+t162+t164-t31.*(t4.*6.28014194487225e-1+t53+t57+t69+t83+t96+t97+t99+t115+t132+t145+t147+t151+1.559595569006101));t86+t87+t88+t89+t90+t91+t106+t135+t136+t137+t138+t139+t146+t176+t177+t178+t179+t184+t193-(t31.*(t58+t59+t60+t61+t62+t63+t64+t65+t66+t67+t71+t72+t75+t76+t79+t80+t81+t82+t84+t101+t102+t103+t104+t107+t108+t109+t110+t111+t112+t113+t114+t116+t117+t118+t119+t120+t121+t123+t140+t141+t142+t143+t144+t153+t154+t155+t156+t157+t163+dq1.*t10.*9.050792802904125e-1+dq2.*t10.*9.050792802904125e-1+dq3.*t10.*9.050792802904125e-1+dq4.*t10.*9.050792802904125e-1+dq5.*t10.*4.525396401452063e-1))./2.0+t31.*(t85+t122+t162-t31.*(t5.*4.525396401452063e-1+t53+t57+t74+t83+t96+t98+t99+t115+t132+t147+1.200809168916698));t86+t87+t88+t89+t90+t91+t135+t136+t137+t138+t139+t146+t193+t31.*(t85+t122-t31.*(t6.*1.52393250231495e-2-t11.*3.015881197875e-2+t57+t74+t83+t98+t99+t115+2.248006586491552e-2))-(t31.*(t58+t59+t60+t61+t62+t63+t64+t65+t66+t67+t71+t72+t75+t76+t79+t80+t81+t82+t84+t101+t102+t103+t104+t107+t108+t109+t110+t111+t112+t113+t114+t116+t117+t118+t119+t120+t121+t123+dq1.*t6.*6.03176239575e-2+dq2.*t6.*6.03176239575e-2+dq3.*t6.*6.03176239575e-2+dq4.*t6.*6.03176239575e-2+dq5.*t6.*6.03176239575e-2+dq1.*t11.*3.0478650046299e-2+dq6.*t6.*3.015881197875e-2+dq2.*t11.*3.0478650046299e-2+dq3.*t11.*3.0478650046299e-2+dq4.*t11.*3.0478650046299e-2+dq5.*t11.*3.0478650046299e-2+dq6.*t11.*1.52393250231495e-2))./2.0];
