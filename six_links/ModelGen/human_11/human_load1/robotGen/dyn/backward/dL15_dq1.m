function dL15_dq1 = dL15_dq1(in1,in2,sampT)
%DL15_DQ1
%    DL15_DQ1 = DL15_DQ1(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    22-Apr-2021 14:34:11

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
t2 = cos(q5);
t3 = cos(q6);
t4 = sin(q5);
t5 = sin(q6);
t6 = q4+q5;
t7 = q5+q6;
t8 = dq1.^2;
t9 = dq2.^2;
t10 = dq3.^2;
t11 = dq4.^2;
t18 = 1.0./sampT;
t121 = atan(1.979012320620293);
t122 = 4.501575681747185e+18;
t12 = cos(t6);
t13 = cos(t7);
t14 = q3+t6;
t15 = q6+t6;
t16 = sin(t6);
t17 = sin(t7);
t34 = t5.*6.03176239575e-2;
t125 = t3.*3.0478650046299e-2;
t260 = t2.*4.525396401452063e-1;
t263 = dq1.*t4.*4.525396401452063e-1;
t264 = dq2.*t4.*4.525396401452063e-1;
t265 = dq3.*t4.*4.525396401452063e-1;
t266 = dq4.*t4.*4.525396401452063e-1;
t267 = dq5.*t4.*2.262698200726031e-1;
t19 = cos(t14);
t20 = cos(t15);
t21 = q2+t14;
t22 = q6+t14;
t23 = sin(t14);
t24 = sin(t15);
t35 = -t34;
t47 = t17.*3.015881197875e-2;
t48 = dq1.*t13.*3.015881197875e-2;
t49 = dq2.*t13.*3.015881197875e-2;
t50 = dq3.*t13.*3.015881197875e-2;
t51 = dq4.*t13.*3.015881197875e-2;
t55 = dq1.*t13.*1.5079405989375e-2;
t56 = dq2.*t13.*1.5079405989375e-2;
t57 = dq3.*t13.*1.5079405989375e-2;
t58 = dq4.*t13.*1.5079405989375e-2;
t59 = dq5.*t13.*1.5079405989375e-2;
t60 = dq6.*t13.*1.5079405989375e-2;
t62 = dq1.*dq2.*t17.*1.5079405989375e-2;
t63 = dq1.*dq3.*t17.*1.5079405989375e-2;
t64 = dq1.*dq4.*t17.*1.5079405989375e-2;
t65 = dq2.*dq3.*t17.*1.5079405989375e-2;
t66 = dq2.*dq4.*t17.*1.5079405989375e-2;
t67 = dq3.*dq4.*t17.*1.5079405989375e-2;
t77 = dq1.*dq5.*t17.*7.5397029946875e-3;
t78 = dq1.*dq6.*t17.*7.5397029946875e-3;
t79 = dq2.*dq5.*t17.*7.5397029946875e-3;
t80 = dq2.*dq6.*t17.*7.5397029946875e-3;
t81 = dq3.*dq5.*t17.*7.5397029946875e-3;
t82 = dq3.*dq6.*t17.*7.5397029946875e-3;
t83 = dq4.*dq5.*t17.*7.5397029946875e-3;
t84 = dq4.*dq6.*t17.*7.5397029946875e-3;
t97 = t8.*t17.*7.5397029946875e-3;
t98 = t9.*t17.*7.5397029946875e-3;
t99 = t10.*t17.*7.5397029946875e-3;
t100 = t11.*t17.*7.5397029946875e-3;
t126 = t13.*1.52393250231495e-2;
t129 = dq1.*t17.*7.61966251157475e-3;
t130 = dq1.*t17.*1.52393250231495e-2;
t131 = dq2.*t17.*7.61966251157475e-3;
t132 = dq2.*t17.*1.52393250231495e-2;
t133 = dq3.*t17.*7.61966251157475e-3;
t134 = dq3.*t17.*1.52393250231495e-2;
t135 = dq4.*t17.*7.61966251157475e-3;
t136 = dq4.*t17.*1.52393250231495e-2;
t137 = dq5.*t17.*7.61966251157475e-3;
t138 = dq6.*t17.*7.61966251157475e-3;
t152 = dq1.*dq2.*t13.*7.61966251157475e-3;
t153 = dq1.*dq3.*t13.*7.61966251157475e-3;
t154 = dq1.*dq4.*t13.*7.61966251157475e-3;
t155 = dq2.*dq3.*t13.*7.61966251157475e-3;
t156 = dq1.*dq5.*t13.*3.809831255787375e-3;
t157 = dq2.*dq4.*t13.*7.61966251157475e-3;
t158 = dq1.*dq6.*t13.*3.809831255787375e-3;
t159 = dq2.*dq5.*t13.*3.809831255787375e-3;
t160 = dq3.*dq4.*t13.*7.61966251157475e-3;
t161 = dq2.*dq6.*t13.*3.809831255787375e-3;
t162 = dq3.*dq5.*t13.*3.809831255787375e-3;
t163 = dq3.*dq6.*t13.*3.809831255787375e-3;
t164 = dq4.*dq5.*t13.*3.809831255787375e-3;
t165 = dq4.*dq6.*t13.*3.809831255787375e-3;
t186 = t8.*t13.*3.809831255787375e-3;
t187 = t9.*t13.*3.809831255787375e-3;
t188 = t10.*t13.*3.809831255787375e-3;
t189 = t11.*t13.*3.809831255787375e-3;
t250 = t12.*1.891232166915;
t257 = dq1.*t16.*1.891232166915;
t258 = dq2.*t16.*1.891232166915;
t259 = dq3.*t16.*1.891232166915;
t270 = dq1.*t16.*9.456160834575e-1;
t271 = dq2.*t16.*9.456160834575e-1;
t272 = dq3.*t16.*9.456160834575e-1;
t273 = dq4.*t16.*9.456160834575e-1;
t274 = dq5.*t16.*9.456160834575e-1;
t275 = dq1.*dq2.*t12.*9.456160834575e-1;
t276 = dq1.*dq3.*t12.*9.456160834575e-1;
t277 = dq1.*dq4.*t12.*4.7280804172875e-1;
t278 = dq2.*dq3.*t12.*9.456160834575e-1;
t279 = dq1.*dq5.*t12.*4.7280804172875e-1;
t280 = dq2.*dq4.*t12.*4.7280804172875e-1;
t281 = dq2.*dq5.*t12.*4.7280804172875e-1;
t282 = dq3.*dq4.*t12.*4.7280804172875e-1;
t283 = dq3.*dq5.*t12.*4.7280804172875e-1;
t294 = t8.*t12.*4.7280804172875e-1;
t295 = t9.*t12.*4.7280804172875e-1;
t296 = t10.*t12.*4.7280804172875e-1;
t25 = cos(t21);
t26 = cos(t22);
t27 = q1+t21;
t28 = q6+t21;
t29 = sin(t21);
t30 = sin(t22);
t36 = t24.*4.1853045195e-2;
t38 = dq1.*t20.*4.1853045195e-2;
t39 = dq2.*t20.*4.1853045195e-2;
t40 = dq3.*t20.*4.1853045195e-2;
t41 = dq1.*t20.*2.09265225975e-2;
t42 = dq2.*t20.*2.09265225975e-2;
t43 = dq3.*t20.*2.09265225975e-2;
t44 = dq4.*t20.*2.09265225975e-2;
t45 = dq5.*t20.*2.09265225975e-2;
t46 = dq6.*t20.*2.09265225975e-2;
t52 = dq1.*dq2.*t24.*2.09265225975e-2;
t53 = dq1.*dq3.*t24.*2.09265225975e-2;
t54 = dq2.*dq3.*t24.*2.09265225975e-2;
t61 = -t47;
t68 = dq1.*dq4.*t24.*1.046326129875e-2;
t69 = dq1.*dq5.*t24.*1.046326129875e-2;
t70 = dq2.*dq4.*t24.*1.046326129875e-2;
t71 = dq1.*dq6.*t24.*1.046326129875e-2;
t72 = dq2.*dq5.*t24.*1.046326129875e-2;
t73 = dq3.*dq4.*t24.*1.046326129875e-2;
t74 = dq2.*dq6.*t24.*1.046326129875e-2;
t75 = dq3.*dq5.*t24.*1.046326129875e-2;
t76 = dq3.*dq6.*t24.*1.046326129875e-2;
t94 = t8.*t24.*1.046326129875e-2;
t95 = t9.*t24.*1.046326129875e-2;
t96 = t10.*t24.*1.046326129875e-2;
t127 = t20.*2.1148451052534e-2;
t139 = dq1.*t24.*1.0574225526267e-2;
t140 = dq1.*t24.*2.1148451052534e-2;
t141 = dq2.*t24.*1.0574225526267e-2;
t142 = dq2.*t24.*2.1148451052534e-2;
t143 = dq3.*t24.*1.0574225526267e-2;
t144 = dq3.*t24.*2.1148451052534e-2;
t145 = dq4.*t24.*1.0574225526267e-2;
t146 = dq5.*t24.*1.0574225526267e-2;
t147 = dq6.*t24.*1.0574225526267e-2;
t149 = dq1.*dq2.*t20.*1.0574225526267e-2;
t150 = dq1.*dq3.*t20.*1.0574225526267e-2;
t151 = dq2.*dq3.*t20.*1.0574225526267e-2;
t168 = dq1.*dq4.*t20.*5.2871127631335e-3;
t170 = dq1.*dq5.*t20.*5.2871127631335e-3;
t171 = dq2.*dq4.*t20.*5.2871127631335e-3;
t172 = dq1.*dq6.*t20.*5.2871127631335e-3;
t173 = dq2.*dq5.*t20.*5.2871127631335e-3;
t174 = dq3.*dq4.*t20.*5.2871127631335e-3;
t175 = dq2.*dq6.*t20.*5.2871127631335e-3;
t176 = dq3.*dq5.*t20.*5.2871127631335e-3;
t177 = dq3.*dq6.*t20.*5.2871127631335e-3;
t190 = -t152;
t191 = -t153;
t192 = -t154;
t193 = -t155;
t194 = -t156;
t195 = -t157;
t196 = -t158;
t197 = -t159;
t198 = -t160;
t199 = -t161;
t200 = -t162;
t201 = -t163;
t202 = -t164;
t203 = -t165;
t204 = t8.*t20.*5.2871127631335e-3;
t205 = t9.*t20.*5.2871127631335e-3;
t206 = t10.*t20.*5.2871127631335e-3;
t225 = -t186;
t226 = -t187;
t227 = -t188;
t228 = -t189;
t269 = t19.*1.36279964968875;
t284 = dq1.*t23.*6.81399824844375e-1;
t285 = dq1.*t23.*1.36279964968875;
t286 = dq2.*t23.*6.81399824844375e-1;
t287 = dq2.*t23.*1.36279964968875;
t288 = dq3.*t23.*6.81399824844375e-1;
t289 = dq4.*t23.*6.81399824844375e-1;
t290 = dq5.*t23.*6.81399824844375e-1;
t291 = dq1.*dq2.*t19.*6.81399824844375e-1;
t297 = -t275;
t298 = -t276;
t299 = -t277;
t300 = -t278;
t301 = -t279;
t302 = -t280;
t303 = -t281;
t304 = -t282;
t305 = -t283;
t307 = dq1.*dq3.*t19.*3.406999124221875e-1;
t308 = dq1.*dq4.*t19.*3.406999124221875e-1;
t309 = dq2.*dq3.*t19.*3.406999124221875e-1;
t310 = dq1.*dq5.*t19.*3.406999124221875e-1;
t311 = dq2.*dq4.*t19.*3.406999124221875e-1;
t312 = dq2.*dq5.*t19.*3.406999124221875e-1;
t313 = -t294;
t314 = -t295;
t315 = -t296;
t316 = t8.*t19.*3.406999124221875e-1;
t317 = t9.*t19.*3.406999124221875e-1;
t31 = sin(t27);
t32 = sin(t28);
t33 = cos(t28);
t37 = -t36;
t85 = t30.*3.015881197875e-2;
t86 = dq1.*t26.*3.015881197875e-2;
t87 = dq2.*t26.*3.015881197875e-2;
t88 = dq1.*t26.*1.5079405989375e-2;
t89 = dq2.*t26.*1.5079405989375e-2;
t90 = dq3.*t26.*1.5079405989375e-2;
t91 = dq4.*t26.*1.5079405989375e-2;
t92 = dq5.*t26.*1.5079405989375e-2;
t93 = dq6.*t26.*1.5079405989375e-2;
t102 = dq1.*dq3.*t30.*7.5397029946875e-3;
t103 = dq1.*dq4.*t30.*7.5397029946875e-3;
t104 = dq2.*dq3.*t30.*7.5397029946875e-3;
t105 = dq1.*dq5.*t30.*7.5397029946875e-3;
t106 = dq2.*dq4.*t30.*7.5397029946875e-3;
t107 = dq1.*dq6.*t30.*7.5397029946875e-3;
t108 = dq2.*dq5.*t30.*7.5397029946875e-3;
t109 = dq2.*dq6.*t30.*7.5397029946875e-3;
t112 = dq1.*dq2.*t30.*1.5079405989375e-2;
t113 = t8.*t30.*7.5397029946875e-3;
t114 = t9.*t30.*7.5397029946875e-3;
t123 = q6+t27+t121;
t148 = t26.*1.52393250231495e-2;
t166 = -t149;
t167 = -t150;
t169 = -t151;
t178 = dq1.*t30.*7.61966251157475e-3;
t179 = dq1.*t30.*1.52393250231495e-2;
t180 = dq2.*t30.*7.61966251157475e-3;
t181 = dq2.*t30.*1.52393250231495e-2;
t182 = dq3.*t30.*7.61966251157475e-3;
t183 = dq4.*t30.*7.61966251157475e-3;
t184 = dq5.*t30.*7.61966251157475e-3;
t185 = dq6.*t30.*7.61966251157475e-3;
t207 = -t168;
t208 = -t170;
t209 = -t171;
t210 = -t172;
t211 = -t173;
t212 = -t174;
t213 = -t175;
t214 = -t176;
t215 = -t177;
t216 = dq1.*dq2.*t26.*7.61966251157475e-3;
t217 = dq1.*dq3.*t26.*3.809831255787375e-3;
t218 = dq1.*dq4.*t26.*3.809831255787375e-3;
t219 = dq2.*dq3.*t26.*3.809831255787375e-3;
t220 = dq1.*dq5.*t26.*3.809831255787375e-3;
t221 = dq2.*dq4.*t26.*3.809831255787375e-3;
t222 = dq1.*dq6.*t26.*3.809831255787375e-3;
t223 = dq2.*dq5.*t26.*3.809831255787375e-3;
t224 = dq2.*dq6.*t26.*3.809831255787375e-3;
t231 = -t204;
t232 = -t205;
t233 = -t206;
t239 = t8.*t26.*3.809831255787375e-3;
t240 = t9.*t26.*3.809831255787375e-3;
t292 = dq1.*t29.*6.81399824844375e-1;
t293 = dq1.*t29.*1.36279964968875;
t306 = -t291;
t318 = -t307;
t319 = -t308;
t320 = -t309;
t321 = -t310;
t322 = -t311;
t323 = -t312;
t324 = dq1.*dq2.*t25.*3.406999124221875e-1;
t325 = dq1.*dq3.*t25.*3.406999124221875e-1;
t326 = dq1.*dq4.*t25.*3.406999124221875e-1;
t327 = dq1.*dq5.*t25.*3.406999124221875e-1;
t328 = -t316;
t329 = -t317;
t330 = t8.*t25.*3.406999124221875e-1;
t101 = -t85;
t110 = dq1.*t33.*3.015881197875e-2;
t111 = dq1.*t33.*1.5079405989375e-2;
t115 = dq1.*dq2.*t32.*7.5397029946875e-3;
t116 = dq1.*dq3.*t32.*7.5397029946875e-3;
t117 = dq1.*dq4.*t32.*7.5397029946875e-3;
t118 = dq1.*dq5.*t32.*7.5397029946875e-3;
t119 = dq1.*dq6.*t32.*7.5397029946875e-3;
t120 = t8.*t32.*7.5397029946875e-3;
t124 = sin(t123);
t128 = t31.*7.4545915933125;
t229 = dq1.*t32.*7.61966251157475e-3;
t230 = dq1.*t32.*1.52393250231495e-2;
t234 = dq1.*dq2.*t33.*3.809831255787375e-3;
t235 = dq1.*dq3.*t33.*3.809831255787375e-3;
t236 = dq1.*dq4.*t33.*3.809831255787375e-3;
t237 = dq1.*dq5.*t33.*3.809831255787375e-3;
t238 = dq1.*dq6.*t33.*3.809831255787375e-3;
t241 = -t216;
t242 = -t217;
t243 = -t218;
t244 = -t219;
t245 = -t220;
t246 = -t221;
t247 = -t222;
t248 = -t223;
t249 = -t224;
t251 = t8.*t33.*3.809831255787375e-3;
t261 = -t239;
t262 = -t240;
t331 = -t324;
t332 = -t325;
t333 = -t326;
t334 = -t327;
t335 = -t330;
t252 = -t234;
t253 = -t235;
t254 = -t236;
t255 = -t237;
t256 = -t238;
t268 = -t251;
t336 = t122.*t124.*4.10601552758294e-20;
dL15_dq1 = [t128+t336+t18.*(t38+t39+t40+t44+t45+t46+t48+t49+t50+t51+t59+t60+t86+t87+t90+t91+t92+t93+t110+t130+t132+t134+t136+t137+t138+t140+t142+t144+t145+t146+t147+t179+t181+t182+t183+t184+t185+t230+t257+t258+t259+t263+t264+t265+t266+t267+t273+t274+t285+t287+t288+t289+t290+t293+dq2.*t29.*6.81399824844375e-1+dq3.*t29.*6.81399824844375e-1+dq4.*t29.*6.81399824844375e-1+dq2.*t32.*7.61966251157475e-3+dq5.*t29.*6.81399824844375e-1+dq2.*t33.*1.5079405989375e-2+dq3.*t32.*7.61966251157475e-3+dq3.*t33.*1.5079405989375e-2+dq4.*t32.*7.61966251157475e-3+dq4.*t33.*1.5079405989375e-2+dq5.*t32.*7.61966251157475e-3+dq5.*t33.*1.5079405989375e-2+dq6.*t32.*7.61966251157475e-3+dq6.*t33.*1.5079405989375e-2+t18.*(t25.*1.36279964968875-t32.*3.015881197875e-2+t33.*1.52393250231495e-2+t35+t37+t61+t101+t125+t126+t127+t148+t250+t260+t269+1.200809168916698));t115+t116+t117+t118+t119+t120+t128+t252+t253+t254+t255+t256+t268+t331+t332+t333+t334+t335+t336+(t18.*(t110+t230+t293))./2.0+t18.*(t38+t39+t40+t44+t45+t46+t48+t49+t50+t51+t59+t60+t86+t87+t90+t91+t92+t93+t111+t130+t132+t134+t136+t137+t138+t140+t142+t144+t145+t146+t147+t179+t181+t182+t183+t184+t185+t229+t257+t258+t259+t263+t264+t265+t266+t267+t273+t274+t285+t287+t288+t289+t290+t292+t18.*(t35+t37+t61+t101+t125+t126+t127+t148+t250+t260+t269+1.200809168916698));t102+t103+t104+t105+t106+t107+t108+t109+t112+t113+t114+t115+t116+t117+t118+t119+t120+t128+t241+t242+t243+t244+t245+t246+t247+t248+t249+t252+t253+t254+t255+t256+t261+t262+t268+t306+t318+t319+t320+t321+t322+t323+t328+t329+t331+t332+t333+t334+t335+t336+(t18.*(t86+t87+t110+t179+t181+t230+t285+t287+t293))./2.0+t18.*(t38+t39+t40+t44+t45+t46+t48+t49+t50+t51+t59+t60+t88+t89+t111+t130+t132+t134+t136+t137+t138+t140+t142+t144+t145+t146+t147+t178+t180+t229+t257+t258+t259+t263+t264+t265+t266+t267+t273+t274+t284+t286+t292+t18.*(t35+t37+t61+t125+t126+t127+t250+t260+1.200809168916698));t52+t53+t54+t68+t69+t70+t71+t72+t73+t74+t75+t76+t94+t95+t96+t102+t103+t104+t105+t106+t107+t108+t109+t112+t113+t114+t115+t116+t117+t118+t119+t120+t128+t166+t167+t169+t207+t208+t209+t210+t211+t212+t213+t214+t215+t231+t232+t233+t241+t242+t243+t244+t245+t246+t247+t248+t249+t252+t253+t254+t255+t256+t261+t262+t268+t297+t298+t299+t300+t301+t302+t303+t304+t305+t306+t313+t314+t315+t318+t319+t320+t321+t322+t323+t328+t329+t331+t332+t333+t334+t335+t336+(t18.*(t38+t39+t40+t86+t87+t110+t140+t142+t144+t179+t181+t230+t257+t258+t259+t285+t287+t293))./2.0+t18.*(t41+t42+t43+t48+t49+t50+t51+t59+t60+t88+t89+t111+t130+t132+t134+t136+t137+t138+t139+t141+t143+t178+t180+t229+t263+t264+t265+t266+t267+t270+t271+t272+t284+t286+t292+t18.*(t35+t61+t125+t126+t260+1.200809168916698));t52+t53+t54+t62+t63+t64+t65+t66+t67+t68+t69+t70+t71+t72+t73+t74+t75+t76+t77+t78+t79+t80+t81+t82+t83+t84+t94+t95+t96+t97+t98+t99+t100+t102+t103+t104+t105+t106+t107+t108+t109+t112+t113+t114+t115+t116+t117+t118+t119+t120+t128+t166+t167+t169+t190+t191+t192+t193+t194+t195+t196+t197+t198+t199+t200+t201+t202+t203+t207+t208+t209+t210+t211+t212+t213+t214+t215+t225+t226+t227+t228+t231+t232+t233+t241+t242+t243+t244+t245+t246+t247+t248+t249+t252+t253+t254+t255+t256+t261+t262+t268+t297+t298+t299+t300+t301+t302+t303+t304+t305+t306+t313+t314+t315+t318+t319+t320+t321+t322+t323+t328+t329+t331+t332+t333+t334+t335+t336+t18.*(t41+t42+t43+t55+t56+t57+t58+t88+t89+t111+t129+t131+t133+t135+t139+t141+t143+t178+t180+t229+t270+t271+t272+t284+t286+t292+t18.*(t35+t125+1.200809168916698)+dq1.*t4.*2.262698200726031e-1+dq2.*t4.*2.262698200726031e-1+dq3.*t4.*2.262698200726031e-1+dq4.*t4.*2.262698200726031e-1)-t2.*t8.*1.131349100363016e-1-t2.*t9.*1.131349100363016e-1-t2.*t10.*1.131349100363016e-1-t2.*t11.*1.131349100363016e-1+(t18.*(t38+t39+t40+t48+t49+t50+t51+t86+t87+t110+t130+t132+t134+t136+t140+t142+t144+t179+t181+t230+t257+t258+t259+t263+t264+t265+t266+t285+t287+t293))./2.0-dq1.*dq2.*t2.*2.262698200726031e-1-dq1.*dq3.*t2.*2.262698200726031e-1-dq1.*dq4.*t2.*2.262698200726031e-1-dq2.*dq3.*t2.*2.262698200726031e-1-dq1.*dq5.*t2.*1.131349100363016e-1-dq2.*dq4.*t2.*2.262698200726031e-1-dq2.*dq5.*t2.*1.131349100363016e-1-dq3.*dq4.*t2.*2.262698200726031e-1-dq3.*dq5.*t2.*1.131349100363016e-1-dq4.*dq5.*t2.*1.131349100363016e-1;t52+t53+t54+t62+t63+t64+t65+t66+t67+t68+t69+t70+t71+t72+t73+t74+t75+t76+t77+t78+t79+t80+t81+t82+t83+t84+t94+t95+t96+t97+t98+t99+t100+t102+t103+t104+t105+t106+t107+t108+t109+t112+t113+t114+t115+t116+t117+t118+t119+t120+t166+t167+t169+t190+t191+t192+t193+t194+t195+t196+t197+t198+t199+t200+t201+t202+t203+t207+t208+t209+t210+t211+t212+t213+t214+t215+t225+t226+t227+t228+t231+t232+t233+t241+t242+t243+t244+t245+t246+t247+t248+t249+t252+t253+t254+t255+t256+t261+t262+t268+t336+(t18.*(t38+t39+t40+t48+t49+t50+t51+t86+t87+t110+t130+t132+t134+t136+t140+t142+t144+t179+t181+t230+dq1.*t3.*6.03176239575e-2+dq2.*t3.*6.03176239575e-2+dq1.*t5.*3.0478650046299e-2+dq3.*t3.*6.03176239575e-2+dq2.*t5.*3.0478650046299e-2+dq4.*t3.*6.03176239575e-2+dq3.*t5.*3.0478650046299e-2+dq5.*t3.*6.03176239575e-2+dq4.*t5.*3.0478650046299e-2+dq6.*t3.*3.015881197875e-2+dq5.*t5.*3.0478650046299e-2+dq6.*t5.*1.52393250231495e-2))./2.0+t18.*(t41+t42+t43+t55+t56+t57+t58+t88+t89+t111+t129+t131+t133+t135+t139+t141+t143+t178+t180+t229+t18.*(t3.*1.52393250231495e-2-t5.*3.015881197875e-2+2.248006586491552e-2))];
