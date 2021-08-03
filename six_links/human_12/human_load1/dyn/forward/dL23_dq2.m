function dL23_dq2 = dL23_dq2(in1,in2,sampT)
%DL23_DQ2
%    DL23_DQ2 = DL23_DQ2(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    01-Aug-2021 18:51:48

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
t2 = cos(q3);
t3 = cos(q4);
t4 = cos(q5);
t5 = cos(q6);
t6 = sin(q3);
t7 = sin(q4);
t8 = sin(q5);
t9 = sin(q6);
t10 = q2+q3;
t11 = q3+q4;
t12 = q4+q5;
t13 = q5+q6;
t14 = dq1.^2;
t15 = dq2.^2;
t28 = 1.0./sampT;
t100 = atan(1.979012320620293);
t101 = 4.501575681747185e+18;
t16 = cos(t10);
t17 = cos(t11);
t18 = cos(t12);
t19 = cos(t13);
t20 = q1+t10;
t21 = q4+t10;
t22 = q5+t11;
t23 = q6+t12;
t24 = sin(t10);
t25 = sin(t11);
t26 = sin(t12);
t27 = sin(t13);
t33 = t10+t12;
t34 = t11+t13;
t49 = t9.*6.03176239575e-2;
t104 = t5.*3.0478650046299e-2;
t123 = t3.*3.78246433383;
t148 = t2.*1.272184398112154e+1;
t160 = dq1.*t6.*1.272184398112154e+1;
t161 = dq2.*t6.*1.272184398112154e+1;
t162 = dq3.*t6.*6.360921990560768;
t169 = t4.*9.050792802904125e-1;
t29 = cos(t21);
t30 = cos(t22);
t31 = cos(t23);
t32 = q4+t20;
t35 = sin(t20);
t36 = sin(t21);
t37 = sin(t22);
t38 = sin(t23);
t39 = cos(t33);
t40 = cos(t34);
t41 = t12+t20;
t42 = t10+t23;
t44 = sin(t33);
t45 = sin(t34);
t50 = -t49;
t53 = t27.*6.03176239575e-2;
t58 = dq1.*t19.*6.03176239575e-2;
t59 = dq2.*t19.*6.03176239575e-2;
t60 = dq3.*t19.*6.03176239575e-2;
t61 = dq4.*t19.*6.03176239575e-2;
t67 = t27.*3.015881197875e-2;
t68 = dq5.*t19.*3.015881197875e-2;
t69 = dq6.*t19.*3.015881197875e-2;
t102 = t20+t23+t100;
t105 = t19.*3.0478650046299e-2;
t106 = t19.*1.52393250231495e-2;
t109 = dq1.*t27.*3.0478650046299e-2;
t110 = dq2.*t27.*3.0478650046299e-2;
t111 = dq3.*t27.*3.0478650046299e-2;
t112 = dq4.*t27.*3.0478650046299e-2;
t114 = dq5.*t27.*1.52393250231495e-2;
t115 = dq6.*t27.*1.52393250231495e-2;
t170 = t18.*6.28014194487225e-1;
t171 = t18.*1.25602838897445;
t174 = t17.*1.36279964968875;
t175 = dq1.*t26.*1.25602838897445;
t176 = dq2.*t26.*1.25602838897445;
t177 = dq3.*t26.*1.25602838897445;
t178 = dq4.*t26.*6.28014194487225e-1;
t179 = dq5.*t26.*6.28014194487225e-1;
t181 = dq1.*t25.*6.81399824844375e-1;
t182 = dq1.*t25.*1.36279964968875;
t183 = dq2.*t25.*6.81399824844375e-1;
t184 = dq2.*t25.*1.36279964968875;
t185 = dq3.*t25.*6.81399824844375e-1;
t186 = dq4.*t25.*6.81399824844375e-1;
t187 = dq1.*dq2.*t17.*6.81399824844375e-1;
t190 = dq1.*t24.*6.360921990560768;
t191 = dq1.*t24.*1.272184398112154e+1;
t194 = dq1.*dq3.*t17.*3.406999124221875e-1;
t195 = dq1.*dq4.*t17.*3.406999124221875e-1;
t196 = dq2.*dq3.*t17.*3.406999124221875e-1;
t197 = dq2.*dq4.*t17.*3.406999124221875e-1;
t201 = dq1.*dq2.*t16.*3.180460995280384;
t202 = dq1.*dq3.*t16.*3.180460995280384;
t210 = t14.*t17.*3.406999124221875e-1;
t211 = t15.*t17.*3.406999124221875e-1;
t220 = t14.*t16.*3.180460995280384;
t43 = sin(t32);
t46 = sin(t41);
t47 = sin(t42);
t48 = cos(t42);
t51 = t38.*4.1853045195e-2;
t52 = t38.*8.370609039e-2;
t55 = dq1.*t31.*8.370609039e-2;
t56 = dq2.*t31.*8.370609039e-2;
t57 = dq3.*t31.*8.370609039e-2;
t62 = dq4.*t31.*4.1853045195e-2;
t63 = dq5.*t31.*4.1853045195e-2;
t64 = dq6.*t31.*4.1853045195e-2;
t66 = -t53;
t70 = -t67;
t71 = t45.*3.015881197875e-2;
t72 = dq1.*t40.*3.015881197875e-2;
t73 = dq2.*t40.*3.015881197875e-2;
t74 = dq1.*t40.*1.5079405989375e-2;
t75 = dq2.*t40.*1.5079405989375e-2;
t76 = dq3.*t40.*1.5079405989375e-2;
t77 = dq4.*t40.*1.5079405989375e-2;
t78 = dq5.*t40.*1.5079405989375e-2;
t79 = dq6.*t40.*1.5079405989375e-2;
t81 = dq1.*dq3.*t45.*7.5397029946875e-3;
t82 = dq1.*dq4.*t45.*7.5397029946875e-3;
t83 = dq2.*dq3.*t45.*7.5397029946875e-3;
t84 = dq1.*dq5.*t45.*7.5397029946875e-3;
t85 = dq2.*dq4.*t45.*7.5397029946875e-3;
t86 = dq1.*dq6.*t45.*7.5397029946875e-3;
t87 = dq2.*dq5.*t45.*7.5397029946875e-3;
t88 = dq2.*dq6.*t45.*7.5397029946875e-3;
t91 = dq1.*dq2.*t45.*1.5079405989375e-2;
t92 = t14.*t45.*7.5397029946875e-3;
t93 = t15.*t45.*7.5397029946875e-3;
t103 = sin(t102);
t107 = t31.*2.1148451052534e-2;
t108 = t31.*4.2296902105068e-2;
t116 = dq1.*t38.*4.2296902105068e-2;
t117 = dq2.*t38.*4.2296902105068e-2;
t118 = dq3.*t38.*4.2296902105068e-2;
t119 = dq4.*t38.*2.1148451052534e-2;
t120 = dq5.*t38.*2.1148451052534e-2;
t121 = dq6.*t38.*2.1148451052534e-2;
t122 = t40.*1.52393250231495e-2;
t124 = dq1.*t45.*7.61966251157475e-3;
t125 = dq1.*t45.*1.52393250231495e-2;
t126 = dq2.*t45.*7.61966251157475e-3;
t127 = dq2.*t45.*1.52393250231495e-2;
t128 = dq3.*t45.*7.61966251157475e-3;
t129 = dq4.*t45.*7.61966251157475e-3;
t130 = dq5.*t45.*7.61966251157475e-3;
t131 = dq6.*t45.*7.61966251157475e-3;
t132 = dq1.*dq2.*t40.*7.61966251157475e-3;
t133 = dq1.*dq3.*t40.*3.809831255787375e-3;
t134 = dq1.*dq4.*t40.*3.809831255787375e-3;
t135 = dq2.*dq3.*t40.*3.809831255787375e-3;
t136 = dq1.*dq5.*t40.*3.809831255787375e-3;
t137 = dq2.*dq4.*t40.*3.809831255787375e-3;
t138 = dq1.*dq6.*t40.*3.809831255787375e-3;
t139 = dq2.*dq5.*t40.*3.809831255787375e-3;
t140 = dq2.*dq6.*t40.*3.809831255787375e-3;
t149 = t14.*t40.*3.809831255787375e-3;
t150 = t15.*t40.*3.809831255787375e-3;
t188 = dq1.*t36.*6.81399824844375e-1;
t189 = dq1.*t36.*1.36279964968875;
t192 = t30.*4.525396401452063e-1;
t193 = -t187;
t198 = dq1.*dq2.*t29.*3.406999124221875e-1;
t199 = dq1.*dq3.*t29.*3.406999124221875e-1;
t200 = dq1.*dq4.*t29.*3.406999124221875e-1;
t203 = dq1.*t37.*2.262698200726031e-1;
t204 = dq1.*t37.*4.525396401452063e-1;
t205 = dq2.*t37.*2.262698200726031e-1;
t206 = dq2.*t37.*4.525396401452063e-1;
t207 = dq3.*t37.*2.262698200726031e-1;
t208 = dq4.*t37.*2.262698200726031e-1;
t209 = dq5.*t37.*2.262698200726031e-1;
t212 = -t194;
t213 = -t195;
t214 = -t196;
t215 = -t197;
t216 = t14.*t29.*3.406999124221875e-1;
t221 = -t201;
t222 = -t202;
t223 = -t210;
t224 = -t211;
t225 = dq1.*dq2.*t30.*2.262698200726031e-1;
t226 = dq1.*t44.*2.262698200726031e-1;
t227 = dq1.*t44.*4.525396401452063e-1;
t229 = -t220;
t231 = dq1.*dq3.*t30.*1.131349100363016e-1;
t232 = dq1.*dq4.*t30.*1.131349100363016e-1;
t233 = dq2.*dq3.*t30.*1.131349100363016e-1;
t234 = dq1.*dq5.*t30.*1.131349100363016e-1;
t235 = dq2.*dq4.*t30.*1.131349100363016e-1;
t236 = dq2.*dq5.*t30.*1.131349100363016e-1;
t237 = dq1.*dq2.*t39.*1.131349100363016e-1;
t238 = dq1.*dq3.*t39.*1.131349100363016e-1;
t239 = dq1.*dq4.*t39.*1.131349100363016e-1;
t240 = dq1.*dq5.*t39.*1.131349100363016e-1;
t241 = t14.*t30.*1.131349100363016e-1;
t242 = t15.*t30.*1.131349100363016e-1;
t249 = t14.*t39.*1.131349100363016e-1;
t257 = t35.*5.362019047677137e+1;
t54 = -t51;
t65 = -t52;
t80 = -t71;
t89 = dq1.*t48.*3.015881197875e-2;
t90 = dq1.*t48.*1.5079405989375e-2;
t94 = dq1.*dq2.*t47.*7.5397029946875e-3;
t95 = dq1.*dq3.*t47.*7.5397029946875e-3;
t96 = dq1.*dq4.*t47.*7.5397029946875e-3;
t97 = dq1.*dq5.*t47.*7.5397029946875e-3;
t98 = dq1.*dq6.*t47.*7.5397029946875e-3;
t99 = t14.*t47.*7.5397029946875e-3;
t113 = t43.*7.4545915933125;
t141 = dq1.*t47.*7.61966251157475e-3;
t142 = dq1.*t47.*1.52393250231495e-2;
t143 = dq1.*dq2.*t48.*3.809831255787375e-3;
t144 = dq1.*dq3.*t48.*3.809831255787375e-3;
t145 = dq1.*dq4.*t48.*3.809831255787375e-3;
t146 = dq1.*dq5.*t48.*3.809831255787375e-3;
t147 = dq1.*dq6.*t48.*3.809831255787375e-3;
t151 = -t132;
t152 = -t133;
t153 = -t134;
t154 = -t135;
t155 = -t136;
t156 = -t137;
t157 = -t138;
t158 = -t139;
t159 = -t140;
t163 = t14.*t48.*3.809831255787375e-3;
t172 = -t149;
t173 = -t150;
t217 = -t198;
t218 = -t199;
t219 = -t200;
t228 = -t216;
t230 = -t225;
t243 = -t231;
t244 = -t232;
t245 = -t233;
t246 = -t234;
t247 = -t235;
t248 = -t236;
t250 = -t237;
t251 = -t238;
t252 = -t239;
t253 = -t240;
t254 = -t241;
t255 = -t242;
t256 = -t249;
t258 = t46.*2.475417569880938;
t259 = t101.*t103.*4.10601552758294e-20;
t164 = -t143;
t165 = -t144;
t166 = -t145;
t167 = -t146;
t168 = -t147;
t180 = -t163;
dL23_dq2 = [t113+t257+t258+t259-t28.*(t72+t73+t76+t77+t78+t79+t89+t125+t127+t128+t129+t130+t131+t142+t160+t161+t162+t182+t184+t185+t186+t189+t191+t204+t206+t207+t208+t209+t227-t28.*(t16.*1.272184398112154e+1+t29.*1.36279964968875+t39.*4.525396401452063e-1-t47.*3.015881197875e-2+t48.*1.52393250231495e-2+t50+t65+t66+t80+t104+t105+t108+t122+t123+t148+t169+t171+t174+t192+1.91737985584778e+1)+dq2.*t24.*6.360921990560768+dq3.*t24.*6.360921990560768+dq2.*t36.*6.81399824844375e-1+dq3.*t36.*6.81399824844375e-1+dq4.*t36.*6.81399824844375e-1+dq2.*t44.*2.262698200726031e-1+dq3.*t44.*2.262698200726031e-1+dq4.*t44.*2.262698200726031e-1+dq2.*t47.*7.61966251157475e-3+dq5.*t44.*2.262698200726031e-1+dq2.*t48.*1.5079405989375e-2+dq3.*t47.*7.61966251157475e-3+dq3.*t48.*1.5079405989375e-2+dq4.*t47.*7.61966251157475e-3+dq4.*t48.*1.5079405989375e-2+dq5.*t47.*7.61966251157475e-3+dq5.*t48.*1.5079405989375e-2+dq6.*t47.*7.61966251157475e-3+dq6.*t48.*1.5079405989375e-2);t94+t95+t96+t97+t98+t99+t113+t164+t165+t166+t167+t168+t180+t217+t218+t219+t221+t222+t228+t229+t250+t251+t252+t253+t256+t257+t258+t259-(t28.*(t89+t142+t189+t191+t227))./2.0-t28.*(t72+t73+t76+t77+t78+t79+t90+t125+t127+t128+t129+t130+t131+t141+t160+t161+t162+t182+t184+t185+t186+t188+t190+t204+t206+t207+t208+t209+t226-t28.*(t50+t65+t66+t80+t104+t105+t108+t122+t123+t148+t169+t171+t174+t192+1.91737985584778e+1));t81+t82+t83+t84+t85+t86+t87+t88+t91+t92+t93+t94+t95+t96+t97+t98+t99+t113+t151+t152+t153+t154+t155+t156+t157+t158+t159+t164+t165+t166+t167+t168+t172+t173+t180+t193+t212+t213+t214+t215+t217+t218+t219+t221+t222+t223+t224+t228+t229+t230+t243+t244+t245+t246+t247+t248+t250+t251+t252+t253+t254+t255+t256+t257+t258+t259-t2.*t14.*3.180460995280384-t2.*t15.*3.180460995280384-t28.*(t74+t75+t90+t124+t126+t141+t181+t183+t188+t190+t203+t205+t226+dq1.*t6.*6.360921990560768+dq2.*t6.*6.360921990560768-t28.*(t50+t65+t66+t104+t105+t108+t123+t169+t171+1.91737985584778e+1))-(t28.*(t72+t73+t89+t125+t127+t142+t160+t161+t182+t184+t189+t191+t204+t206+t227))./2.0-dq1.*dq2.*t2.*6.360921990560768-dq1.*dq3.*t2.*3.180460995280384-dq2.*dq3.*t2.*3.180460995280384;t81+t82+t83+t84+t85+t86+t87+t88+t91+t92+t93+t94+t95+t96+t97+t98+t99+t113+t151+t152+t153+t154+t155+t156+t157+t158+t159+t164+t165+t166+t167+t168+t172+t173+t180+t193+t212+t213+t214+t215+t217+t218+t219+t223+t224+t228+t230+t243+t244+t245+t246+t247+t248+t250+t251+t252+t253+t254+t255+t256+t258+t259-t28.*(t74+t75+t90+t124+t126+t141+t181+t183+t188+t203+t205+t226-t28.*(t3.*1.891232166915+t50+t54+t66+t104+t105+t107+t169+t170+1.559595569006101))-(t28.*(t55+t56+t57+t62+t63+t64+t72+t73+t89+t116+t117+t118+t119+t120+t121+t125+t127+t142+t175+t176+t177+t178+t179+t182+t184+t189+t204+t206+t227+dq1.*t7.*3.78246433383+dq2.*t7.*3.78246433383+dq3.*t7.*3.78246433383+dq4.*t7.*1.891232166915))./2.0;t81+t82+t83+t84+t85+t86+t87+t88+t91+t92+t93+t94+t95+t96+t97+t98+t99+t151+t152+t153+t154+t155+t156+t157+t158+t159+t164+t165+t166+t167+t168+t172+t173+t180+t230+t243+t244+t245+t246+t247+t248+t250+t251+t252+t253+t254+t255+t256+t258+t259-t28.*(t74+t75+t90+t124+t126+t141+t203+t205+t226-t28.*(t4.*4.525396401452063e-1+t50+t54+t70+t104+t106+t107+t170+3.812664659543186e-1))-(t28.*(t55+t56+t57+t58+t59+t60+t61+t62+t63+t64+t68+t69+t72+t73+t89+t109+t110+t111+t112+t114+t115+t116+t117+t118+t119+t120+t121+t125+t127+t142+t175+t176+t177+t178+t179+t204+t206+t227+dq1.*t8.*9.050792802904125e-1+dq2.*t8.*9.050792802904125e-1+dq3.*t8.*9.050792802904125e-1+dq4.*t8.*9.050792802904125e-1+dq5.*t8.*4.525396401452063e-1))./2.0;t81+t82+t83+t84+t85+t86+t87+t88+t91+t92+t93+t94+t95+t96+t97+t98+t99+t151+t152+t153+t154+t155+t156+t157+t158+t159+t164+t165+t166+t167+t168+t172+t173+t180+t259-(t28.*(t55+t56+t57+t58+t59+t60+t61+t62+t63+t64+t68+t69+t72+t73+t89+t109+t110+t111+t112+t114+t115+t116+t117+t118+t119+t120+t121+t125+t127+t142+dq1.*t5.*6.03176239575e-2+dq2.*t5.*6.03176239575e-2+dq3.*t5.*6.03176239575e-2+dq4.*t5.*6.03176239575e-2+dq1.*t9.*3.0478650046299e-2+dq5.*t5.*6.03176239575e-2+dq2.*t9.*3.0478650046299e-2+dq6.*t5.*3.015881197875e-2+dq3.*t9.*3.0478650046299e-2+dq4.*t9.*3.0478650046299e-2+dq5.*t9.*3.0478650046299e-2+dq6.*t9.*1.52393250231495e-2))./2.0-t28.*(t74+t75+t90+t124+t126+t141-t28.*(t5.*1.52393250231495e-2-t9.*3.015881197875e-2+t54+t70+t106+t107+2.248006586491552e-2))];
