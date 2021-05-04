function dL14_dq2 = dL14_dq2(in1,in2,sampT)
%DL14_DQ2
%    DL14_DQ2 = DL14_DQ2(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    22-Apr-2021 14:34:18

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
t2 = cos(q4);
t3 = cos(q5);
t4 = cos(q6);
t5 = sin(q4);
t6 = sin(q5);
t7 = sin(q6);
t8 = q3+q4;
t9 = q4+q5;
t10 = q5+q6;
t11 = dq1.^2;
t12 = dq2.^2;
t13 = dq3.^2;
t23 = 1.0./sampT;
t110 = atan(1.979012320620293);
t111 = 4.501575681747185e+18;
t14 = cos(t8);
t15 = cos(t9);
t16 = cos(t10);
t17 = q2+t8;
t18 = q5+t8;
t19 = q6+t9;
t20 = sin(t8);
t21 = sin(t9);
t22 = sin(t10);
t29 = t8+t10;
t43 = t7.*6.03176239575e-2;
t114 = t4.*3.0478650046299e-2;
t138 = t2.*1.891232166915;
t171 = dq1.*t5.*1.891232166915;
t172 = dq2.*t5.*1.891232166915;
t173 = dq3.*t5.*1.891232166915;
t193 = dq4.*t5.*9.456160834575e-1;
t211 = t3.*9.050792802904125e-1;
t24 = cos(t17);
t25 = cos(t18);
t26 = cos(t19);
t27 = q1+t17;
t28 = q5+t17;
t30 = sin(t17);
t31 = sin(t18);
t32 = sin(t19);
t34 = cos(t29);
t36 = t10+t17;
t39 = sin(t29);
t44 = -t43;
t46 = t22.*6.03176239575e-2;
t48 = dq1.*t16.*6.03176239575e-2;
t49 = dq2.*t16.*6.03176239575e-2;
t50 = dq3.*t16.*6.03176239575e-2;
t51 = dq4.*t16.*6.03176239575e-2;
t62 = t22.*3.015881197875e-2;
t63 = dq5.*t16.*3.015881197875e-2;
t64 = dq6.*t16.*3.015881197875e-2;
t115 = t16.*3.0478650046299e-2;
t116 = t16.*1.52393250231495e-2;
t118 = dq1.*t22.*3.0478650046299e-2;
t119 = dq2.*t22.*3.0478650046299e-2;
t120 = dq3.*t22.*3.0478650046299e-2;
t121 = dq4.*t22.*3.0478650046299e-2;
t123 = dq5.*t22.*1.52393250231495e-2;
t124 = dq6.*t22.*1.52393250231495e-2;
t212 = t15.*6.28014194487225e-1;
t215 = t14.*1.36279964968875;
t216 = dq1.*t21.*6.28014194487225e-1;
t217 = dq2.*t21.*6.28014194487225e-1;
t218 = dq3.*t21.*6.28014194487225e-1;
t220 = dq1.*t20.*6.81399824844375e-1;
t221 = dq1.*t20.*1.36279964968875;
t222 = dq2.*t20.*6.81399824844375e-1;
t223 = dq2.*t20.*1.36279964968875;
t224 = dq3.*t20.*6.81399824844375e-1;
t225 = dq4.*t20.*6.81399824844375e-1;
t226 = dq1.*t21.*3.140070972436125e-1;
t227 = dq2.*t21.*3.140070972436125e-1;
t228 = dq3.*t21.*3.140070972436125e-1;
t229 = dq4.*t21.*3.140070972436125e-1;
t230 = dq5.*t21.*3.140070972436125e-1;
t231 = dq1.*dq2.*t14.*6.81399824844375e-1;
t235 = dq1.*dq2.*t15.*3.140070972436125e-1;
t236 = dq1.*dq3.*t15.*3.140070972436125e-1;
t237 = dq1.*dq4.*t15.*1.570035486218063e-1;
t238 = dq2.*dq3.*t15.*3.140070972436125e-1;
t239 = dq1.*dq5.*t15.*1.570035486218063e-1;
t240 = dq2.*dq4.*t15.*1.570035486218063e-1;
t241 = dq2.*dq5.*t15.*1.570035486218063e-1;
t242 = dq3.*dq4.*t15.*1.570035486218063e-1;
t243 = dq3.*dq5.*t15.*1.570035486218063e-1;
t245 = dq1.*dq3.*t14.*3.406999124221875e-1;
t246 = dq1.*dq4.*t14.*3.406999124221875e-1;
t247 = dq2.*dq3.*t14.*3.406999124221875e-1;
t248 = dq2.*dq4.*t14.*3.406999124221875e-1;
t259 = t11.*t15.*1.570035486218063e-1;
t260 = t12.*t15.*1.570035486218063e-1;
t261 = t13.*t15.*1.570035486218063e-1;
t271 = t11.*t14.*3.406999124221875e-1;
t272 = t12.*t14.*3.406999124221875e-1;
t33 = cos(t28);
t35 = q5+t27;
t37 = sin(t27);
t38 = sin(t28);
t41 = sin(t36);
t42 = cos(t36);
t45 = t32.*4.1853045195e-2;
t52 = dq1.*t26.*4.1853045195e-2;
t53 = dq2.*t26.*4.1853045195e-2;
t54 = dq3.*t26.*4.1853045195e-2;
t55 = -t46;
t56 = dq1.*t26.*2.09265225975e-2;
t57 = dq2.*t26.*2.09265225975e-2;
t58 = dq3.*t26.*2.09265225975e-2;
t59 = dq4.*t26.*2.09265225975e-2;
t60 = dq5.*t26.*2.09265225975e-2;
t61 = dq6.*t26.*2.09265225975e-2;
t65 = dq1.*dq2.*t32.*2.09265225975e-2;
t66 = dq1.*dq3.*t32.*2.09265225975e-2;
t67 = dq2.*dq3.*t32.*2.09265225975e-2;
t68 = -t62;
t69 = dq1.*dq4.*t32.*1.046326129875e-2;
t70 = dq1.*dq5.*t32.*1.046326129875e-2;
t71 = dq2.*dq4.*t32.*1.046326129875e-2;
t72 = dq1.*dq6.*t32.*1.046326129875e-2;
t73 = dq2.*dq5.*t32.*1.046326129875e-2;
t74 = dq3.*dq4.*t32.*1.046326129875e-2;
t75 = dq2.*dq6.*t32.*1.046326129875e-2;
t76 = dq3.*dq5.*t32.*1.046326129875e-2;
t77 = dq3.*dq6.*t32.*1.046326129875e-2;
t78 = t39.*3.015881197875e-2;
t79 = dq1.*t34.*3.015881197875e-2;
t80 = dq2.*t34.*3.015881197875e-2;
t81 = dq1.*t34.*1.5079405989375e-2;
t82 = dq2.*t34.*1.5079405989375e-2;
t83 = dq3.*t34.*1.5079405989375e-2;
t84 = dq4.*t34.*1.5079405989375e-2;
t85 = dq5.*t34.*1.5079405989375e-2;
t86 = dq6.*t34.*1.5079405989375e-2;
t87 = t11.*t32.*1.046326129875e-2;
t88 = t12.*t32.*1.046326129875e-2;
t89 = t13.*t32.*1.046326129875e-2;
t91 = dq1.*dq3.*t39.*7.5397029946875e-3;
t92 = dq1.*dq4.*t39.*7.5397029946875e-3;
t93 = dq2.*dq3.*t39.*7.5397029946875e-3;
t94 = dq1.*dq5.*t39.*7.5397029946875e-3;
t95 = dq2.*dq4.*t39.*7.5397029946875e-3;
t96 = dq1.*dq6.*t39.*7.5397029946875e-3;
t97 = dq2.*dq5.*t39.*7.5397029946875e-3;
t98 = dq2.*dq6.*t39.*7.5397029946875e-3;
t101 = dq1.*dq2.*t39.*1.5079405989375e-2;
t102 = t11.*t39.*7.5397029946875e-3;
t103 = t12.*t39.*7.5397029946875e-3;
t112 = t10+t27+t110;
t117 = t26.*2.1148451052534e-2;
t125 = dq1.*t32.*1.0574225526267e-2;
t126 = dq1.*t32.*2.1148451052534e-2;
t127 = dq2.*t32.*1.0574225526267e-2;
t128 = dq2.*t32.*2.1148451052534e-2;
t129 = dq3.*t32.*1.0574225526267e-2;
t130 = dq3.*t32.*2.1148451052534e-2;
t131 = dq4.*t32.*1.0574225526267e-2;
t132 = dq5.*t32.*1.0574225526267e-2;
t133 = dq6.*t32.*1.0574225526267e-2;
t134 = t34.*1.52393250231495e-2;
t135 = dq1.*dq2.*t26.*1.0574225526267e-2;
t136 = dq1.*dq3.*t26.*1.0574225526267e-2;
t137 = dq2.*dq3.*t26.*1.0574225526267e-2;
t141 = dq1.*dq4.*t26.*5.2871127631335e-3;
t143 = dq1.*dq5.*t26.*5.2871127631335e-3;
t144 = dq2.*dq4.*t26.*5.2871127631335e-3;
t145 = dq1.*dq6.*t26.*5.2871127631335e-3;
t146 = dq2.*dq5.*t26.*5.2871127631335e-3;
t147 = dq3.*dq4.*t26.*5.2871127631335e-3;
t148 = dq2.*dq6.*t26.*5.2871127631335e-3;
t149 = dq3.*dq5.*t26.*5.2871127631335e-3;
t150 = dq3.*dq6.*t26.*5.2871127631335e-3;
t151 = dq1.*t39.*7.61966251157475e-3;
t152 = dq1.*t39.*1.52393250231495e-2;
t153 = dq2.*t39.*7.61966251157475e-3;
t154 = dq2.*t39.*1.52393250231495e-2;
t155 = dq3.*t39.*7.61966251157475e-3;
t156 = dq4.*t39.*7.61966251157475e-3;
t157 = dq5.*t39.*7.61966251157475e-3;
t158 = dq6.*t39.*7.61966251157475e-3;
t159 = t11.*t26.*5.2871127631335e-3;
t160 = t12.*t26.*5.2871127631335e-3;
t161 = t13.*t26.*5.2871127631335e-3;
t174 = dq1.*dq2.*t34.*7.61966251157475e-3;
t175 = dq1.*dq3.*t34.*3.809831255787375e-3;
t176 = dq1.*dq4.*t34.*3.809831255787375e-3;
t177 = dq2.*dq3.*t34.*3.809831255787375e-3;
t178 = dq1.*dq5.*t34.*3.809831255787375e-3;
t179 = dq2.*dq4.*t34.*3.809831255787375e-3;
t180 = dq1.*dq6.*t34.*3.809831255787375e-3;
t181 = dq2.*dq5.*t34.*3.809831255787375e-3;
t182 = dq2.*dq6.*t34.*3.809831255787375e-3;
t194 = t11.*t34.*3.809831255787375e-3;
t195 = t12.*t34.*3.809831255787375e-3;
t232 = dq1.*t30.*6.81399824844375e-1;
t233 = dq1.*t30.*1.36279964968875;
t234 = t25.*4.525396401452063e-1;
t244 = -t231;
t249 = dq1.*dq2.*t24.*3.406999124221875e-1;
t250 = dq1.*dq3.*t24.*3.406999124221875e-1;
t251 = dq1.*dq4.*t24.*3.406999124221875e-1;
t252 = dq1.*t31.*2.262698200726031e-1;
t253 = dq1.*t31.*4.525396401452063e-1;
t254 = dq2.*t31.*2.262698200726031e-1;
t255 = dq2.*t31.*4.525396401452063e-1;
t256 = dq3.*t31.*2.262698200726031e-1;
t257 = dq4.*t31.*2.262698200726031e-1;
t258 = dq5.*t31.*2.262698200726031e-1;
t262 = -t235;
t263 = -t236;
t264 = -t237;
t265 = -t238;
t266 = -t239;
t267 = -t240;
t268 = -t241;
t269 = -t242;
t270 = -t243;
t273 = -t245;
t274 = -t246;
t275 = -t247;
t276 = -t248;
t277 = t11.*t24.*3.406999124221875e-1;
t281 = -t259;
t282 = -t260;
t283 = -t261;
t284 = -t271;
t285 = -t272;
t286 = dq1.*dq2.*t25.*2.262698200726031e-1;
t291 = dq1.*dq3.*t25.*1.131349100363016e-1;
t292 = dq1.*dq4.*t25.*1.131349100363016e-1;
t293 = dq2.*dq3.*t25.*1.131349100363016e-1;
t294 = dq1.*dq5.*t25.*1.131349100363016e-1;
t295 = dq2.*dq4.*t25.*1.131349100363016e-1;
t296 = dq2.*dq5.*t25.*1.131349100363016e-1;
t301 = t11.*t25.*1.131349100363016e-1;
t302 = t12.*t25.*1.131349100363016e-1;
t40 = sin(t35);
t47 = -t45;
t90 = -t78;
t99 = dq1.*t42.*3.015881197875e-2;
t100 = dq1.*t42.*1.5079405989375e-2;
t104 = dq1.*dq2.*t41.*7.5397029946875e-3;
t105 = dq1.*dq3.*t41.*7.5397029946875e-3;
t106 = dq1.*dq4.*t41.*7.5397029946875e-3;
t107 = dq1.*dq5.*t41.*7.5397029946875e-3;
t108 = dq1.*dq6.*t41.*7.5397029946875e-3;
t109 = t11.*t41.*7.5397029946875e-3;
t113 = sin(t112);
t122 = t37.*7.4545915933125;
t139 = -t135;
t140 = -t136;
t142 = -t137;
t162 = -t141;
t163 = -t143;
t164 = -t144;
t165 = -t145;
t166 = -t146;
t167 = -t147;
t168 = -t148;
t169 = -t149;
t170 = -t150;
t183 = dq1.*t41.*7.61966251157475e-3;
t184 = dq1.*t41.*1.52393250231495e-2;
t185 = -t159;
t186 = -t160;
t187 = -t161;
t188 = dq1.*dq2.*t42.*3.809831255787375e-3;
t189 = dq1.*dq3.*t42.*3.809831255787375e-3;
t190 = dq1.*dq4.*t42.*3.809831255787375e-3;
t191 = dq1.*dq5.*t42.*3.809831255787375e-3;
t192 = dq1.*dq6.*t42.*3.809831255787375e-3;
t196 = -t174;
t197 = -t175;
t198 = -t176;
t199 = -t177;
t200 = -t178;
t201 = -t179;
t202 = -t180;
t203 = -t181;
t204 = -t182;
t205 = t11.*t42.*3.809831255787375e-3;
t213 = -t194;
t214 = -t195;
t278 = -t249;
t279 = -t250;
t280 = -t251;
t287 = dq1.*t38.*2.262698200726031e-1;
t288 = dq1.*t38.*4.525396401452063e-1;
t289 = -t277;
t290 = -t286;
t297 = dq1.*dq2.*t33.*1.131349100363016e-1;
t298 = dq1.*dq3.*t33.*1.131349100363016e-1;
t299 = dq1.*dq4.*t33.*1.131349100363016e-1;
t300 = dq1.*dq5.*t33.*1.131349100363016e-1;
t303 = -t291;
t304 = -t292;
t305 = -t293;
t306 = -t294;
t307 = -t295;
t308 = -t296;
t309 = t11.*t33.*1.131349100363016e-1;
t314 = -t301;
t315 = -t302;
t206 = -t188;
t207 = -t189;
t208 = -t190;
t209 = -t191;
t210 = -t192;
t219 = -t205;
t310 = -t297;
t311 = -t298;
t312 = -t299;
t313 = -t300;
t316 = -t309;
t317 = t40.*2.475417569880938;
t318 = t111.*t113.*4.10601552758294e-20;
dL14_dq2 = [t122+t317+t318-t23.*(t52+t53+t54+t59+t60+t61+t79+t80+t83+t84+t85+t86+t99+t126+t128+t130+t131+t132+t133+t152+t154+t155+t156+t157+t158+t171+t172+t173+t184+t193+t216+t217+t218+t221+t223+t224+t225+t229+t230+t233+t253+t255+t256+t257+t258+t288+t23.*(t24.*1.36279964968875+t33.*4.525396401452063e-1-t41.*3.015881197875e-2+t42.*1.52393250231495e-2+t44+t47+t55+t90+t114+t115+t117+t134+t138+t211+t212+t215+t234+1.559595569006101)+dq2.*t30.*6.81399824844375e-1+dq3.*t30.*6.81399824844375e-1+dq4.*t30.*6.81399824844375e-1+dq2.*t38.*2.262698200726031e-1+dq3.*t38.*2.262698200726031e-1+dq4.*t38.*2.262698200726031e-1+dq2.*t41.*7.61966251157475e-3+dq5.*t38.*2.262698200726031e-1+dq2.*t42.*1.5079405989375e-2+dq3.*t41.*7.61966251157475e-3+dq3.*t42.*1.5079405989375e-2+dq4.*t41.*7.61966251157475e-3+dq4.*t42.*1.5079405989375e-2+dq5.*t41.*7.61966251157475e-3+dq5.*t42.*1.5079405989375e-2+dq6.*t41.*7.61966251157475e-3+dq6.*t42.*1.5079405989375e-2);t104+t105+t106+t107+t108+t109+t122+t206+t207+t208+t209+t210+t219+t278+t279+t280+t289+t310+t311+t312+t313+t316+t317+t318+(t23.*(t99+t184+t233+t288))./2.0-t23.*(t52+t53+t54+t59+t60+t61+t79+t80+t83+t84+t85+t86+t100+t126+t128+t130+t131+t132+t133+t152+t154+t155+t156+t157+t158+t171+t172+t173+t183+t193+t216+t217+t218+t221+t223+t224+t225+t229+t230+t232+t253+t255+t256+t257+t258+t287+t23.*(t44+t47+t55+t90+t114+t115+t117+t134+t138+t211+t212+t215+t234+1.559595569006101));t91+t92+t93+t94+t95+t96+t97+t98+t101+t102+t103+t104+t105+t106+t107+t108+t109+t122+t196+t197+t198+t199+t200+t201+t202+t203+t204+t206+t207+t208+t209+t210+t213+t214+t219+t244+t273+t274+t275+t276+t278+t279+t280+t284+t285+t289+t290+t303+t304+t305+t306+t307+t308+t310+t311+t312+t313+t314+t315+t316+t317+t318-t23.*(t52+t53+t54+t59+t60+t61+t81+t82+t100+t126+t128+t130+t131+t132+t133+t151+t153+t171+t172+t173+t183+t193+t216+t217+t218+t220+t222+t229+t230+t232+t252+t254+t287+t23.*(t44+t47+t55+t114+t115+t117+t138+t211+t212+1.559595569006101))+(t23.*(t79+t80+t99+t152+t154+t184+t221+t223+t233+t253+t255+t288))./2.0;t65+t66+t67+t69+t70+t71+t72+t73+t74+t75+t76+t77+t87+t88+t89+t91+t92+t93+t94+t95+t96+t97+t98+t101+t102+t103+t104+t105+t106+t107+t108+t109+t122+t139+t140+t142+t162+t163+t164+t165+t166+t167+t168+t169+t170+t185+t186+t187+t196+t197+t198+t199+t200+t201+t202+t203+t204+t206+t207+t208+t209+t210+t213+t214+t219+t244+t262+t263+t264+t265+t266+t267+t268+t269+t270+t273+t274+t275+t276+t278+t279+t280+t281+t282+t283+t284+t285+t289+t290+t303+t304+t305+t306+t307+t308+t310+t311+t312+t313+t314+t315+t316+t317+t318+(t23.*(t52+t53+t54+t79+t80+t99+t126+t128+t130+t152+t154+t171+t172+t173+t184+t216+t217+t218+t221+t223+t233+t253+t255+t288))./2.0-t2.*t11.*4.7280804172875e-1-t2.*t12.*4.7280804172875e-1-t2.*t13.*4.7280804172875e-1-t23.*(t56+t57+t58+t81+t82+t100+t125+t127+t129+t151+t153+t183+t220+t222+t226+t227+t228+t232+t252+t254+t287+dq1.*t5.*9.456160834575e-1+dq2.*t5.*9.456160834575e-1+dq3.*t5.*9.456160834575e-1+t23.*(t44+t55+t114+t115+t211+1.559595569006101))-dq1.*dq2.*t2.*9.456160834575e-1-dq1.*dq3.*t2.*9.456160834575e-1-dq1.*dq4.*t2.*4.7280804172875e-1-dq2.*dq3.*t2.*9.456160834575e-1-dq2.*dq4.*t2.*4.7280804172875e-1-dq3.*dq4.*t2.*4.7280804172875e-1;t65+t66+t67+t69+t70+t71+t72+t73+t74+t75+t76+t77+t87+t88+t89+t91+t92+t93+t94+t95+t96+t97+t98+t101+t102+t103+t104+t105+t106+t107+t108+t109+t139+t140+t142+t162+t163+t164+t165+t166+t167+t168+t169+t170+t185+t186+t187+t196+t197+t198+t199+t200+t201+t202+t203+t204+t206+t207+t208+t209+t210+t213+t214+t219+t262+t263+t264+t265+t266+t267+t268+t269+t270+t281+t282+t283+t290+t303+t304+t305+t306+t307+t308+t310+t311+t312+t313+t314+t315+t316+t317+t318+(t23.*(t48+t49+t50+t51+t52+t53+t54+t63+t64+t79+t80+t99+t118+t119+t120+t121+t123+t124+t126+t128+t130+t152+t154+t184+t216+t217+t218+t253+t255+t288+dq1.*t6.*9.050792802904125e-1+dq2.*t6.*9.050792802904125e-1+dq3.*t6.*9.050792802904125e-1+dq4.*t6.*9.050792802904125e-1+dq5.*t6.*4.525396401452063e-1))./2.0-t23.*(t56+t57+t58+t81+t82+t100+t125+t127+t129+t151+t153+t183+t226+t227+t228+t252+t254+t287+t23.*(t3.*4.525396401452063e-1+t44+t68+t114+t116+3.812664659543186e-1));t65+t66+t67+t69+t70+t71+t72+t73+t74+t75+t76+t77+t87+t88+t89+t91+t92+t93+t94+t95+t96+t97+t98+t101+t102+t103+t104+t105+t106+t107+t108+t109+t139+t140+t142+t162+t163+t164+t165+t166+t167+t168+t169+t170+t185+t186+t187+t196+t197+t198+t199+t200+t201+t202+t203+t204+t206+t207+t208+t209+t210+t213+t214+t219+t318-t23.*(t56+t57+t58+t81+t82+t100+t125+t127+t129+t151+t153+t183+t23.*(t4.*1.52393250231495e-2-t7.*3.015881197875e-2+t68+t116+2.248006586491552e-2))+(t23.*(t48+t49+t50+t51+t52+t53+t54+t63+t64+t79+t80+t99+t118+t119+t120+t121+t123+t124+t126+t128+t130+t152+t154+t184+dq1.*t4.*6.03176239575e-2+dq2.*t4.*6.03176239575e-2+dq3.*t4.*6.03176239575e-2+dq1.*t7.*3.0478650046299e-2+dq4.*t4.*6.03176239575e-2+dq2.*t7.*3.0478650046299e-2+dq5.*t4.*6.03176239575e-2+dq3.*t7.*3.0478650046299e-2+dq6.*t4.*3.015881197875e-2+dq4.*t7.*3.0478650046299e-2+dq5.*t7.*3.0478650046299e-2+dq6.*t7.*1.52393250231495e-2))./2.0];
