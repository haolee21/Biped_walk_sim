function dL24_dq1 = dL24_dq1(in1,in2,sampT)
%DL24_DQ1
%    DL24_DQ1 = DL24_DQ1(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    22-Apr-2021 00:40:08

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
t43 = t7.*1.115156071575e-1;
t114 = t4.*5.6349122234139e-2;
t180 = t2.*1.562541483987225;
t192 = dq1.*t5.*1.562541483987225;
t193 = dq2.*t5.*1.562541483987225;
t194 = dq3.*t5.*1.562541483987225;
t210 = dq4.*t5.*7.812707419936125e-1;
t217 = t3.*1.568437764540413;
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
t45 = t22.*1.115156071575e-1;
t48 = t22.*5.575780357875e-2;
t49 = dq1.*t16.*1.115156071575e-1;
t50 = dq2.*t16.*1.115156071575e-1;
t51 = dq3.*t16.*1.115156071575e-1;
t52 = dq4.*t16.*1.115156071575e-1;
t56 = dq5.*t16.*5.575780357875e-2;
t57 = dq6.*t16.*5.575780357875e-2;
t115 = t16.*5.6349122234139e-2;
t116 = dq1.*t22.*5.6349122234139e-2;
t117 = dq2.*t22.*5.6349122234139e-2;
t118 = dq3.*t22.*5.6349122234139e-2;
t119 = dq4.*t22.*5.6349122234139e-2;
t120 = t16.*2.81745611170695e-2;
t122 = dq5.*t22.*2.81745611170695e-2;
t123 = dq6.*t22.*2.81745611170695e-2;
t203 = t15.*2.351521727415;
t206 = dq1.*t21.*2.351521727415;
t207 = dq2.*t21.*2.351521727415;
t208 = dq3.*t21.*2.351521727415;
t219 = dq1.*t21.*1.1757608637075;
t220 = dq2.*t21.*1.1757608637075;
t221 = dq3.*t21.*1.1757608637075;
t222 = dq4.*t21.*1.1757608637075;
t223 = dq5.*t21.*1.1757608637075;
t225 = t14.*1.125949010520206;
t226 = dq1.*dq2.*t15.*1.1757608637075;
t227 = dq1.*dq3.*t15.*1.1757608637075;
t228 = dq1.*dq4.*t15.*5.8788043185375e-1;
t229 = dq2.*dq3.*t15.*1.1757608637075;
t230 = dq1.*dq5.*t15.*5.8788043185375e-1;
t231 = dq2.*dq4.*t15.*5.8788043185375e-1;
t232 = dq2.*dq5.*t15.*5.8788043185375e-1;
t233 = dq3.*dq4.*t15.*5.8788043185375e-1;
t234 = dq3.*dq5.*t15.*5.8788043185375e-1;
t242 = dq1.*t20.*5.629745052601031e-1;
t243 = dq1.*t20.*1.125949010520206;
t244 = dq2.*t20.*5.629745052601031e-1;
t245 = dq2.*t20.*1.125949010520206;
t246 = dq3.*t20.*5.629745052601031e-1;
t247 = dq4.*t20.*5.629745052601031e-1;
t251 = t11.*t15.*5.8788043185375e-1;
t252 = t12.*t15.*5.8788043185375e-1;
t253 = t13.*t15.*5.8788043185375e-1;
t270 = dq1.*dq2.*t14.*5.629745052601031e-1;
t285 = dq1.*dq3.*t14.*2.814872526300516e-1;
t286 = dq1.*dq4.*t14.*2.814872526300516e-1;
t287 = dq2.*dq3.*t14.*2.814872526300516e-1;
t288 = dq2.*dq4.*t14.*2.814872526300516e-1;
t295 = t11.*t14.*2.814872526300516e-1;
t296 = t12.*t14.*2.814872526300516e-1;
t33 = cos(t28);
t35 = q5+t27;
t37 = sin(t27);
t38 = sin(t28);
t41 = sin(t36);
t42 = cos(t36);
t46 = -t45;
t47 = t32.*7.7378176395e-2;
t53 = dq1.*t26.*7.7378176395e-2;
t54 = dq2.*t26.*7.7378176395e-2;
t55 = dq3.*t26.*7.7378176395e-2;
t58 = dq1.*t26.*3.86890881975e-2;
t59 = dq2.*t26.*3.86890881975e-2;
t60 = dq3.*t26.*3.86890881975e-2;
t61 = dq4.*t26.*3.86890881975e-2;
t62 = dq5.*t26.*3.86890881975e-2;
t63 = dq6.*t26.*3.86890881975e-2;
t65 = -t48;
t66 = dq1.*dq2.*t32.*3.86890881975e-2;
t67 = dq1.*dq3.*t32.*3.86890881975e-2;
t68 = dq2.*dq3.*t32.*3.86890881975e-2;
t69 = t39.*5.575780357875e-2;
t70 = dq1.*dq4.*t32.*1.934454409875e-2;
t71 = dq1.*dq5.*t32.*1.934454409875e-2;
t72 = dq2.*dq4.*t32.*1.934454409875e-2;
t73 = dq1.*dq6.*t32.*1.934454409875e-2;
t74 = dq2.*dq5.*t32.*1.934454409875e-2;
t75 = dq3.*dq4.*t32.*1.934454409875e-2;
t76 = dq2.*dq6.*t32.*1.934454409875e-2;
t77 = dq3.*dq5.*t32.*1.934454409875e-2;
t78 = dq3.*dq6.*t32.*1.934454409875e-2;
t79 = dq1.*t34.*2.7878901789375e-2;
t80 = dq2.*t34.*2.7878901789375e-2;
t81 = dq3.*t34.*2.7878901789375e-2;
t82 = dq4.*t34.*2.7878901789375e-2;
t83 = dq5.*t34.*2.7878901789375e-2;
t84 = dq6.*t34.*2.7878901789375e-2;
t86 = dq1.*t34.*5.575780357875e-2;
t87 = dq2.*t34.*5.575780357875e-2;
t88 = t11.*t32.*1.934454409875e-2;
t89 = t12.*t32.*1.934454409875e-2;
t90 = t13.*t32.*1.934454409875e-2;
t91 = dq1.*dq3.*t39.*1.39394508946875e-2;
t92 = dq1.*dq4.*t39.*1.39394508946875e-2;
t93 = dq2.*dq3.*t39.*1.39394508946875e-2;
t94 = dq1.*dq5.*t39.*1.39394508946875e-2;
t95 = dq2.*dq4.*t39.*1.39394508946875e-2;
t96 = dq1.*dq6.*t39.*1.39394508946875e-2;
t97 = dq2.*dq5.*t39.*1.39394508946875e-2;
t98 = dq2.*dq6.*t39.*1.39394508946875e-2;
t101 = dq1.*dq2.*t39.*2.7878901789375e-2;
t102 = t11.*t39.*1.39394508946875e-2;
t103 = t12.*t39.*1.39394508946875e-2;
t112 = t10+t27+t110;
t121 = t26.*3.9099390937974e-2;
t124 = dq1.*t32.*1.9549695468987e-2;
t125 = dq1.*t32.*3.9099390937974e-2;
t126 = dq2.*t32.*1.9549695468987e-2;
t127 = dq2.*t32.*3.9099390937974e-2;
t128 = dq3.*t32.*1.9549695468987e-2;
t129 = dq3.*t32.*3.9099390937974e-2;
t130 = dq4.*t32.*1.9549695468987e-2;
t131 = dq5.*t32.*1.9549695468987e-2;
t132 = dq6.*t32.*1.9549695468987e-2;
t133 = t34.*2.81745611170695e-2;
t134 = dq1.*dq2.*t26.*1.9549695468987e-2;
t135 = dq1.*dq3.*t26.*1.9549695468987e-2;
t136 = dq2.*dq3.*t26.*1.9549695468987e-2;
t139 = dq1.*dq4.*t26.*9.7748477344935e-3;
t141 = dq1.*dq5.*t26.*9.7748477344935e-3;
t142 = dq2.*dq4.*t26.*9.7748477344935e-3;
t143 = dq1.*dq6.*t26.*9.7748477344935e-3;
t144 = dq2.*dq5.*t26.*9.7748477344935e-3;
t145 = dq3.*dq4.*t26.*9.7748477344935e-3;
t146 = dq2.*dq6.*t26.*9.7748477344935e-3;
t147 = dq3.*dq5.*t26.*9.7748477344935e-3;
t148 = dq3.*dq6.*t26.*9.7748477344935e-3;
t149 = dq1.*t39.*1.408728055853475e-2;
t150 = dq1.*t39.*2.81745611170695e-2;
t151 = dq2.*t39.*1.408728055853475e-2;
t152 = dq2.*t39.*2.81745611170695e-2;
t153 = dq3.*t39.*1.408728055853475e-2;
t154 = dq4.*t39.*1.408728055853475e-2;
t155 = dq5.*t39.*1.408728055853475e-2;
t156 = dq6.*t39.*1.408728055853475e-2;
t157 = dq1.*dq2.*t34.*1.408728055853475e-2;
t158 = dq1.*dq3.*t34.*7.043640279267375e-3;
t159 = dq1.*dq4.*t34.*7.043640279267375e-3;
t160 = dq2.*dq3.*t34.*7.043640279267375e-3;
t161 = dq1.*dq5.*t34.*7.043640279267375e-3;
t162 = dq2.*dq4.*t34.*7.043640279267375e-3;
t163 = dq1.*dq6.*t34.*7.043640279267375e-3;
t164 = dq2.*dq5.*t34.*7.043640279267375e-3;
t165 = dq2.*dq6.*t34.*7.043640279267375e-3;
t168 = t11.*t26.*9.7748477344935e-3;
t169 = t12.*t26.*9.7748477344935e-3;
t170 = t13.*t26.*9.7748477344935e-3;
t181 = t11.*t34.*7.043640279267375e-3;
t182 = t12.*t34.*7.043640279267375e-3;
t218 = t25.*1.69447889181375;
t235 = dq1.*t31.*8.47239445906875e-1;
t236 = dq1.*t31.*1.69447889181375;
t237 = dq2.*t31.*8.47239445906875e-1;
t238 = dq2.*t31.*1.69447889181375;
t239 = dq3.*t31.*8.47239445906875e-1;
t240 = dq4.*t31.*8.47239445906875e-1;
t241 = dq5.*t31.*8.47239445906875e-1;
t248 = dq1.*dq2.*t25.*8.47239445906875e-1;
t254 = -t226;
t255 = -t227;
t256 = -t228;
t257 = -t229;
t258 = -t230;
t259 = -t231;
t260 = -t232;
t261 = -t233;
t262 = -t234;
t264 = dq1.*dq3.*t25.*4.236197229534375e-1;
t265 = dq1.*dq4.*t25.*4.236197229534375e-1;
t266 = dq2.*dq3.*t25.*4.236197229534375e-1;
t267 = dq1.*dq5.*t25.*4.236197229534375e-1;
t268 = dq2.*dq4.*t25.*4.236197229534375e-1;
t269 = dq2.*dq5.*t25.*4.236197229534375e-1;
t271 = dq1.*t30.*5.629745052601031e-1;
t272 = dq1.*t30.*1.125949010520206;
t273 = -t251;
t274 = -t252;
t275 = -t253;
t276 = t11.*t25.*4.236197229534375e-1;
t277 = t12.*t25.*4.236197229534375e-1;
t284 = -t270;
t297 = -t285;
t298 = -t286;
t299 = -t287;
t300 = -t288;
t306 = dq1.*dq2.*t24.*2.814872526300516e-1;
t307 = dq1.*dq3.*t24.*2.814872526300516e-1;
t308 = dq1.*dq4.*t24.*2.814872526300516e-1;
t309 = -t295;
t310 = -t296;
t312 = t11.*t24.*2.814872526300516e-1;
t40 = sin(t35);
t64 = -t47;
t85 = -t69;
t99 = dq1.*t42.*5.575780357875e-2;
t100 = dq1.*t42.*2.7878901789375e-2;
t104 = dq1.*dq2.*t41.*1.39394508946875e-2;
t105 = dq1.*dq3.*t41.*1.39394508946875e-2;
t106 = dq1.*dq4.*t41.*1.39394508946875e-2;
t107 = dq1.*dq5.*t41.*1.39394508946875e-2;
t108 = dq1.*dq6.*t41.*1.39394508946875e-2;
t109 = t11.*t41.*1.39394508946875e-2;
t113 = sin(t112);
t137 = -t134;
t138 = -t135;
t140 = -t136;
t166 = dq1.*t41.*1.408728055853475e-2;
t167 = dq1.*t41.*2.81745611170695e-2;
t171 = -t139;
t172 = -t141;
t173 = -t142;
t174 = -t143;
t175 = -t144;
t176 = -t145;
t177 = -t146;
t178 = -t147;
t179 = -t148;
t183 = -t157;
t184 = -t158;
t185 = -t159;
t186 = -t160;
t187 = -t161;
t188 = -t162;
t189 = -t163;
t190 = -t164;
t191 = -t165;
t195 = -t168;
t196 = -t169;
t197 = -t170;
t198 = dq1.*dq2.*t42.*7.043640279267375e-3;
t199 = dq1.*dq3.*t42.*7.043640279267375e-3;
t200 = dq1.*dq4.*t42.*7.043640279267375e-3;
t201 = dq1.*dq5.*t42.*7.043640279267375e-3;
t202 = dq1.*dq6.*t42.*7.043640279267375e-3;
t204 = -t181;
t205 = -t182;
t211 = t11.*t42.*7.043640279267375e-3;
t249 = dq1.*t38.*8.47239445906875e-1;
t250 = dq1.*t38.*1.69447889181375;
t263 = -t248;
t278 = -t264;
t279 = -t265;
t280 = -t266;
t281 = -t267;
t282 = -t268;
t283 = -t269;
t289 = dq1.*dq2.*t33.*4.236197229534375e-1;
t290 = dq1.*dq3.*t33.*4.236197229534375e-1;
t291 = dq1.*dq4.*t33.*4.236197229534375e-1;
t292 = dq1.*dq5.*t33.*4.236197229534375e-1;
t293 = -t276;
t294 = -t277;
t301 = t11.*t33.*4.236197229534375e-1;
t313 = -t306;
t314 = -t307;
t315 = -t308;
t316 = -t312;
t317 = t37.*6.159005126130938;
t209 = t40.*9.2688959120625;
t212 = -t198;
t213 = -t199;
t214 = -t200;
t215 = -t201;
t216 = -t202;
t224 = -t211;
t302 = -t289;
t303 = -t290;
t304 = -t291;
t305 = -t292;
t311 = -t301;
t318 = t111.*t113.*7.591227646486231e-20;
dL24_dq1 = [t209+t317+t318+t23.*(t53+t54+t55+t61+t62+t63+t81+t82+t83+t84+t86+t87+t99+t125+t127+t129+t130+t131+t132+t150+t152+t153+t154+t155+t156+t167+t192+t193+t194+t206+t207+t208+t210+t222+t223+t236+t238+t239+t240+t241+t243+t245+t246+t247+t250+t272+dq2.*t30.*5.629745052601031e-1+dq3.*t30.*5.629745052601031e-1+dq4.*t30.*5.629745052601031e-1+dq2.*t38.*8.47239445906875e-1+dq3.*t38.*8.47239445906875e-1+dq4.*t38.*8.47239445906875e-1+dq2.*t41.*1.408728055853475e-2+dq5.*t38.*8.47239445906875e-1+dq2.*t42.*2.7878901789375e-2+dq3.*t41.*1.408728055853475e-2+dq3.*t42.*2.7878901789375e-2+dq4.*t41.*1.408728055853475e-2+dq4.*t42.*2.7878901789375e-2+dq5.*t41.*1.408728055853475e-2+dq5.*t42.*2.7878901789375e-2+dq6.*t41.*1.408728055853475e-2+dq6.*t42.*2.7878901789375e-2-t23.*(t24.*1.125949010520206+t33.*1.69447889181375-t41.*5.575780357875e-2+t42.*2.81745611170695e-2+t44+t46+t64+t85+t114+t115+t121+t133+t180+t203+t217+t218+t225+2.461047736910614));t104+t105+t106+t107+t108+t109+t209+t212+t213+t214+t215+t216+t224+t302+t303+t304+t305+t311+t313+t314+t315+t316+t317+t318-(t23.*(t99+t167+t250+t272))./2.0+t23.*(t53+t54+t55+t61+t62+t63+t81+t82+t83+t84+t86+t87+t100+t125+t127+t129+t130+t131+t132+t150+t152+t153+t154+t155+t156+t166+t192+t193+t194+t206+t207+t208+t210+t222+t223+t236+t238+t239+t240+t241+t243+t245+t246+t247+t249+t271-t23.*(t44+t46+t64+t85+t114+t115+t121+t133+t180+t203+t217+t218+t225+2.461047736910614));t91+t92+t93+t94+t95+t96+t97+t98+t101+t102+t103+t104+t105+t106+t107+t108+t109+t183+t184+t185+t186+t187+t188+t189+t190+t191+t204+t205+t209+t212+t213+t214+t215+t216+t224+t263+t278+t279+t280+t281+t282+t283+t284+t293+t294+t297+t298+t299+t300+t302+t303+t304+t305+t309+t310+t311+t313+t314+t315+t316+t317+t318-(t23.*(t86+t87+t99+t150+t152+t167+t236+t238+t243+t245+t250+t272))./2.0+t23.*(t53+t54+t55+t61+t62+t63+t79+t80+t100+t125+t127+t129+t130+t131+t132+t149+t151+t166+t192+t193+t194+t206+t207+t208+t210+t222+t223+t235+t237+t242+t244+t249+t271-t23.*(t44+t46+t64+t114+t115+t121+t180+t203+t217+2.461047736910614));t66+t67+t68+t70+t71+t72+t73+t74+t75+t76+t77+t78+t88+t89+t90+t91+t92+t93+t94+t95+t96+t97+t98+t101+t102+t103+t104+t105+t106+t107+t108+t109+t137+t138+t140+t171+t172+t173+t174+t175+t176+t177+t178+t179+t183+t184+t185+t186+t187+t188+t189+t190+t191+t195+t196+t197+t204+t205+t209+t212+t213+t214+t215+t216+t224+t254+t255+t256+t257+t258+t259+t260+t261+t262+t263+t273+t274+t275+t278+t279+t280+t281+t282+t283+t284+t293+t294+t297+t298+t299+t300+t302+t303+t304+t305+t309+t310+t311+t313+t314+t315+t316+t317+t318-(t23.*(t53+t54+t55+t86+t87+t99+t125+t127+t129+t150+t152+t167+t192+t193+t194+t206+t207+t208+t236+t238+t243+t245+t250+t272))./2.0-t2.*t11.*3.906353709968063e-1-t2.*t12.*3.906353709968063e-1-t2.*t13.*3.906353709968063e-1+t23.*(t58+t59+t60+t79+t80+t100+t124+t126+t128+t149+t151+t166+t219+t220+t221+t235+t237+t242+t244+t249+t271+dq1.*t5.*7.812707419936125e-1+dq2.*t5.*7.812707419936125e-1+dq3.*t5.*7.812707419936125e-1-t23.*(t44+t46+t114+t115+t217+2.461047736910614))-dq1.*dq2.*t2.*7.812707419936125e-1-dq1.*dq3.*t2.*7.812707419936125e-1-dq1.*dq4.*t2.*3.906353709968063e-1-dq2.*dq3.*t2.*7.812707419936125e-1-dq2.*dq4.*t2.*3.906353709968063e-1-dq3.*dq4.*t2.*3.906353709968063e-1;t66+t67+t68+t70+t71+t72+t73+t74+t75+t76+t77+t78+t88+t89+t90+t91+t92+t93+t94+t95+t96+t97+t98+t101+t102+t103+t104+t105+t106+t107+t108+t109+t137+t138+t140+t171+t172+t173+t174+t175+t176+t177+t178+t179+t183+t184+t185+t186+t187+t188+t189+t190+t191+t195+t196+t197+t204+t205+t209+t212+t213+t214+t215+t216+t224+t254+t255+t256+t257+t258+t259+t260+t261+t262+t263+t273+t274+t275+t278+t279+t280+t281+t282+t283+t293+t294+t302+t303+t304+t305+t311+t318+t23.*(t58+t59+t60+t79+t80+t100+t124+t126+t128+t149+t151+t166+t219+t220+t221+t235+t237+t249-t23.*(t3.*7.842188822702063e-1+t44+t65+t114+t120+1.485806987821211))-(t23.*(t49+t50+t51+t52+t53+t54+t55+t56+t57+t86+t87+t99+t116+t117+t118+t119+t122+t123+t125+t127+t129+t150+t152+t167+t206+t207+t208+t236+t238+t250+dq1.*t6.*1.568437764540413+dq2.*t6.*1.568437764540413+dq3.*t6.*1.568437764540413+dq4.*t6.*1.568437764540413+dq5.*t6.*7.842188822702063e-1))./2.0;t66+t67+t68+t70+t71+t72+t73+t74+t75+t76+t77+t78+t88+t89+t90+t91+t92+t93+t94+t95+t96+t97+t98+t101+t102+t103+t104+t105+t106+t107+t108+t109+t137+t138+t140+t171+t172+t173+t174+t175+t176+t177+t178+t179+t183+t184+t185+t186+t187+t188+t189+t190+t191+t195+t196+t197+t204+t205+t212+t213+t214+t215+t216+t224+t318-(t23.*(t49+t50+t51+t52+t53+t54+t55+t56+t57+t86+t87+t99+t116+t117+t118+t119+t122+t123+t125+t127+t129+t150+t152+t167+dq1.*t4.*1.115156071575e-1+dq2.*t4.*1.115156071575e-1+dq3.*t4.*1.115156071575e-1+dq1.*t7.*5.6349122234139e-2+dq4.*t4.*1.115156071575e-1+dq2.*t7.*5.6349122234139e-2+dq5.*t4.*1.115156071575e-1+dq3.*t7.*5.6349122234139e-2+dq6.*t4.*5.575780357875e-2+dq4.*t7.*5.6349122234139e-2+dq5.*t7.*5.6349122234139e-2+dq6.*t7.*2.81745611170695e-2))./2.0+t23.*(t58+t59+t60+t79+t80+t100+t124+t126+t128+t149+t151+t166-t23.*(t4.*2.81745611170695e-2-t7.*5.575780357875e-2+t65+t120+3.275366401942843e-2))];
