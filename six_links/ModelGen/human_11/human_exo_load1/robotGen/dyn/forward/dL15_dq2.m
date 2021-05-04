function dL15_dq2 = dL15_dq2(in1,in2,sampT)
%DL15_DQ2
%    DL15_DQ2 = DL15_DQ2(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    19-Apr-2021 18:37:14

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
t34 = t5.*1.115156071575e-1;
t125 = t3.*5.6349122234139e-2;
t257 = t2.*7.842188822702063e-1;
t259 = dq1.*t4.*7.842188822702063e-1;
t260 = dq2.*t4.*7.842188822702063e-1;
t261 = dq3.*t4.*7.842188822702063e-1;
t262 = dq4.*t4.*7.842188822702063e-1;
t263 = dq5.*t4.*3.921094411351031e-1;
t19 = cos(t14);
t20 = cos(t15);
t21 = q2+t14;
t22 = q6+t14;
t23 = sin(t14);
t24 = sin(t15);
t35 = -t34;
t37 = t17.*5.575780357875e-2;
t41 = dq1.*t13.*5.575780357875e-2;
t42 = dq2.*t13.*5.575780357875e-2;
t43 = dq3.*t13.*5.575780357875e-2;
t44 = dq4.*t13.*5.575780357875e-2;
t45 = dq1.*t13.*2.7878901789375e-2;
t46 = dq2.*t13.*2.7878901789375e-2;
t47 = dq3.*t13.*2.7878901789375e-2;
t48 = dq4.*t13.*2.7878901789375e-2;
t49 = dq5.*t13.*2.7878901789375e-2;
t50 = dq6.*t13.*2.7878901789375e-2;
t62 = dq1.*dq5.*t17.*1.39394508946875e-2;
t63 = dq1.*dq6.*t17.*1.39394508946875e-2;
t64 = dq2.*dq5.*t17.*1.39394508946875e-2;
t65 = dq2.*dq6.*t17.*1.39394508946875e-2;
t66 = dq3.*dq5.*t17.*1.39394508946875e-2;
t67 = dq3.*dq6.*t17.*1.39394508946875e-2;
t68 = dq4.*dq5.*t17.*1.39394508946875e-2;
t69 = dq4.*dq6.*t17.*1.39394508946875e-2;
t71 = dq1.*dq2.*t17.*2.7878901789375e-2;
t72 = dq1.*dq3.*t17.*2.7878901789375e-2;
t73 = dq1.*dq4.*t17.*2.7878901789375e-2;
t74 = dq2.*dq3.*t17.*2.7878901789375e-2;
t75 = dq2.*dq4.*t17.*2.7878901789375e-2;
t76 = dq3.*dq4.*t17.*2.7878901789375e-2;
t92 = t8.*t17.*1.39394508946875e-2;
t93 = t9.*t17.*1.39394508946875e-2;
t94 = t10.*t17.*1.39394508946875e-2;
t95 = t11.*t17.*1.39394508946875e-2;
t126 = t13.*2.81745611170695e-2;
t128 = dq1.*t17.*1.408728055853475e-2;
t129 = dq1.*t17.*2.81745611170695e-2;
t130 = dq2.*t17.*1.408728055853475e-2;
t131 = dq2.*t17.*2.81745611170695e-2;
t132 = dq3.*t17.*1.408728055853475e-2;
t133 = dq3.*t17.*2.81745611170695e-2;
t134 = dq4.*t17.*1.408728055853475e-2;
t135 = dq4.*t17.*2.81745611170695e-2;
t136 = dq5.*t17.*1.408728055853475e-2;
t137 = dq6.*t17.*1.408728055853475e-2;
t147 = dq1.*dq2.*t13.*1.408728055853475e-2;
t148 = dq1.*dq3.*t13.*1.408728055853475e-2;
t149 = dq1.*dq4.*t13.*1.408728055853475e-2;
t150 = dq2.*dq3.*t13.*1.408728055853475e-2;
t151 = dq1.*dq5.*t13.*7.043640279267375e-3;
t152 = dq2.*dq4.*t13.*1.408728055853475e-2;
t153 = dq1.*dq6.*t13.*7.043640279267375e-3;
t154 = dq2.*dq5.*t13.*7.043640279267375e-3;
t155 = dq3.*dq4.*t13.*1.408728055853475e-2;
t156 = dq2.*dq6.*t13.*7.043640279267375e-3;
t157 = dq3.*dq5.*t13.*7.043640279267375e-3;
t158 = dq3.*dq6.*t13.*7.043640279267375e-3;
t159 = dq4.*dq5.*t13.*7.043640279267375e-3;
t160 = dq4.*dq6.*t13.*7.043640279267375e-3;
t165 = t8.*t13.*7.043640279267375e-3;
t166 = t9.*t13.*7.043640279267375e-3;
t167 = t10.*t13.*7.043640279267375e-3;
t168 = t11.*t13.*7.043640279267375e-3;
t258 = t12.*1.088303754987225;
t264 = dq1.*t16.*1.088303754987225;
t265 = dq2.*t16.*1.088303754987225;
t266 = dq3.*t16.*1.088303754987225;
t268 = dq1.*t16.*5.441518774936125e-1;
t269 = dq2.*t16.*5.441518774936125e-1;
t270 = dq3.*t16.*5.441518774936125e-1;
t271 = dq4.*t16.*5.441518774936125e-1;
t272 = dq5.*t16.*5.441518774936125e-1;
t274 = dq1.*dq2.*t12.*5.441518774936125e-1;
t275 = dq1.*dq3.*t12.*5.441518774936125e-1;
t276 = dq1.*dq4.*t12.*2.720759387468063e-1;
t277 = dq2.*dq3.*t12.*5.441518774936125e-1;
t278 = dq1.*dq5.*t12.*2.720759387468063e-1;
t279 = dq2.*dq4.*t12.*2.720759387468063e-1;
t280 = dq2.*dq5.*t12.*2.720759387468063e-1;
t281 = dq3.*dq4.*t12.*2.720759387468063e-1;
t282 = dq3.*dq5.*t12.*2.720759387468063e-1;
t290 = t8.*t12.*2.720759387468063e-1;
t291 = t9.*t12.*2.720759387468063e-1;
t292 = t10.*t12.*2.720759387468063e-1;
t25 = cos(t21);
t26 = cos(t22);
t27 = q1+t21;
t28 = q6+t21;
t29 = sin(t21);
t30 = sin(t22);
t36 = t24.*7.7378176395e-2;
t38 = dq1.*t20.*7.7378176395e-2;
t39 = dq2.*t20.*7.7378176395e-2;
t40 = dq3.*t20.*7.7378176395e-2;
t51 = dq1.*t20.*3.86890881975e-2;
t52 = dq2.*t20.*3.86890881975e-2;
t53 = dq3.*t20.*3.86890881975e-2;
t54 = dq4.*t20.*3.86890881975e-2;
t55 = dq5.*t20.*3.86890881975e-2;
t56 = dq6.*t20.*3.86890881975e-2;
t58 = -t37;
t59 = dq1.*dq2.*t24.*3.86890881975e-2;
t60 = dq1.*dq3.*t24.*3.86890881975e-2;
t61 = dq2.*dq3.*t24.*3.86890881975e-2;
t77 = dq1.*dq4.*t24.*1.934454409875e-2;
t78 = dq1.*dq5.*t24.*1.934454409875e-2;
t79 = dq2.*dq4.*t24.*1.934454409875e-2;
t80 = dq1.*dq6.*t24.*1.934454409875e-2;
t81 = dq2.*dq5.*t24.*1.934454409875e-2;
t82 = dq3.*dq4.*t24.*1.934454409875e-2;
t83 = dq2.*dq6.*t24.*1.934454409875e-2;
t84 = dq3.*dq5.*t24.*1.934454409875e-2;
t85 = dq3.*dq6.*t24.*1.934454409875e-2;
t99 = t8.*t24.*1.934454409875e-2;
t100 = t9.*t24.*1.934454409875e-2;
t101 = t10.*t24.*1.934454409875e-2;
t127 = t20.*3.9099390937974e-2;
t138 = dq1.*t24.*1.9549695468987e-2;
t139 = dq1.*t24.*3.9099390937974e-2;
t140 = dq2.*t24.*1.9549695468987e-2;
t141 = dq2.*t24.*3.9099390937974e-2;
t142 = dq3.*t24.*1.9549695468987e-2;
t143 = dq3.*t24.*3.9099390937974e-2;
t144 = dq4.*t24.*1.9549695468987e-2;
t145 = dq5.*t24.*1.9549695468987e-2;
t146 = dq6.*t24.*1.9549695468987e-2;
t162 = dq1.*dq2.*t20.*1.9549695468987e-2;
t163 = dq1.*dq3.*t20.*1.9549695468987e-2;
t164 = dq2.*dq3.*t20.*1.9549695468987e-2;
t169 = -t147;
t170 = -t148;
t171 = -t149;
t172 = -t150;
t173 = -t151;
t174 = -t152;
t175 = -t153;
t176 = -t154;
t177 = -t155;
t178 = -t156;
t179 = -t157;
t180 = -t158;
t181 = -t159;
t182 = -t160;
t185 = dq1.*dq4.*t20.*9.7748477344935e-3;
t187 = dq1.*dq5.*t20.*9.7748477344935e-3;
t188 = dq2.*dq4.*t20.*9.7748477344935e-3;
t189 = dq1.*dq6.*t20.*9.7748477344935e-3;
t190 = dq2.*dq5.*t20.*9.7748477344935e-3;
t191 = dq3.*dq4.*t20.*9.7748477344935e-3;
t192 = dq2.*dq6.*t20.*9.7748477344935e-3;
t193 = dq3.*dq5.*t20.*9.7748477344935e-3;
t194 = dq3.*dq6.*t20.*9.7748477344935e-3;
t212 = -t165;
t213 = -t166;
t214 = -t167;
t215 = -t168;
t218 = t8.*t20.*9.7748477344935e-3;
t219 = t9.*t20.*9.7748477344935e-3;
t220 = t10.*t20.*9.7748477344935e-3;
t273 = t19.*7.842188822702063e-1;
t283 = dq1.*t23.*3.921094411351031e-1;
t284 = dq1.*t23.*7.842188822702063e-1;
t285 = dq2.*t23.*3.921094411351031e-1;
t286 = dq2.*t23.*7.842188822702063e-1;
t287 = dq3.*t23.*3.921094411351031e-1;
t288 = dq4.*t23.*3.921094411351031e-1;
t289 = dq5.*t23.*3.921094411351031e-1;
t293 = -t274;
t294 = -t275;
t295 = -t276;
t296 = -t277;
t297 = -t278;
t298 = -t279;
t299 = -t280;
t300 = -t281;
t301 = -t282;
t302 = -t290;
t303 = -t291;
t304 = -t292;
t305 = dq1.*dq2.*t19.*3.921094411351031e-1;
t309 = dq1.*dq3.*t19.*1.960547205675516e-1;
t310 = dq1.*dq4.*t19.*1.960547205675516e-1;
t311 = dq2.*dq3.*t19.*1.960547205675516e-1;
t312 = dq1.*dq5.*t19.*1.960547205675516e-1;
t313 = dq2.*dq4.*t19.*1.960547205675516e-1;
t314 = dq2.*dq5.*t19.*1.960547205675516e-1;
t319 = t8.*t19.*1.960547205675516e-1;
t320 = t9.*t19.*1.960547205675516e-1;
t31 = sin(t27);
t32 = sin(t28);
t33 = cos(t28);
t57 = -t36;
t70 = t30.*5.575780357875e-2;
t86 = dq1.*t26.*2.7878901789375e-2;
t87 = dq2.*t26.*2.7878901789375e-2;
t88 = dq3.*t26.*2.7878901789375e-2;
t89 = dq4.*t26.*2.7878901789375e-2;
t90 = dq5.*t26.*2.7878901789375e-2;
t91 = dq6.*t26.*2.7878901789375e-2;
t97 = dq1.*t26.*5.575780357875e-2;
t98 = dq2.*t26.*5.575780357875e-2;
t102 = dq1.*dq3.*t30.*1.39394508946875e-2;
t103 = dq1.*dq4.*t30.*1.39394508946875e-2;
t104 = dq2.*dq3.*t30.*1.39394508946875e-2;
t105 = dq1.*dq5.*t30.*1.39394508946875e-2;
t106 = dq2.*dq4.*t30.*1.39394508946875e-2;
t107 = dq1.*dq6.*t30.*1.39394508946875e-2;
t108 = dq2.*dq5.*t30.*1.39394508946875e-2;
t109 = dq2.*dq6.*t30.*1.39394508946875e-2;
t112 = dq1.*dq2.*t30.*2.7878901789375e-2;
t113 = t8.*t30.*1.39394508946875e-2;
t114 = t9.*t30.*1.39394508946875e-2;
t123 = q6+t27+t121;
t161 = t26.*2.81745611170695e-2;
t183 = -t162;
t184 = -t163;
t186 = -t164;
t195 = dq1.*t30.*1.408728055853475e-2;
t196 = dq1.*t30.*2.81745611170695e-2;
t197 = dq2.*t30.*1.408728055853475e-2;
t198 = dq2.*t30.*2.81745611170695e-2;
t199 = dq3.*t30.*1.408728055853475e-2;
t200 = dq4.*t30.*1.408728055853475e-2;
t201 = dq5.*t30.*1.408728055853475e-2;
t202 = dq6.*t30.*1.408728055853475e-2;
t203 = dq1.*dq2.*t26.*1.408728055853475e-2;
t204 = dq1.*dq3.*t26.*7.043640279267375e-3;
t205 = dq1.*dq4.*t26.*7.043640279267375e-3;
t206 = dq2.*dq3.*t26.*7.043640279267375e-3;
t207 = dq1.*dq5.*t26.*7.043640279267375e-3;
t208 = dq2.*dq4.*t26.*7.043640279267375e-3;
t209 = dq1.*dq6.*t26.*7.043640279267375e-3;
t210 = dq2.*dq5.*t26.*7.043640279267375e-3;
t211 = dq2.*dq6.*t26.*7.043640279267375e-3;
t221 = -t185;
t222 = -t187;
t223 = -t188;
t224 = -t189;
t225 = -t190;
t226 = -t191;
t227 = -t192;
t228 = -t193;
t229 = -t194;
t230 = t8.*t26.*7.043640279267375e-3;
t231 = t9.*t26.*7.043640279267375e-3;
t241 = -t218;
t242 = -t219;
t243 = -t220;
t306 = dq1.*t29.*3.921094411351031e-1;
t307 = dq1.*t29.*7.842188822702063e-1;
t308 = -t305;
t315 = dq1.*dq2.*t25.*1.960547205675516e-1;
t316 = dq1.*dq3.*t25.*1.960547205675516e-1;
t317 = dq1.*dq4.*t25.*1.960547205675516e-1;
t318 = dq1.*dq5.*t25.*1.960547205675516e-1;
t321 = -t309;
t322 = -t310;
t323 = -t311;
t324 = -t312;
t325 = -t313;
t326 = -t314;
t327 = t8.*t25.*1.960547205675516e-1;
t332 = -t319;
t333 = -t320;
t96 = -t70;
t110 = dq1.*t33.*5.575780357875e-2;
t111 = dq1.*t33.*2.7878901789375e-2;
t115 = dq1.*dq2.*t32.*1.39394508946875e-2;
t116 = dq1.*dq3.*t32.*1.39394508946875e-2;
t117 = dq1.*dq4.*t32.*1.39394508946875e-2;
t118 = dq1.*dq5.*t32.*1.39394508946875e-2;
t119 = dq1.*dq6.*t32.*1.39394508946875e-2;
t120 = t8.*t32.*1.39394508946875e-2;
t124 = sin(t123);
t216 = dq1.*t32.*1.408728055853475e-2;
t217 = dq1.*t32.*2.81745611170695e-2;
t232 = -t203;
t233 = -t204;
t234 = -t205;
t235 = -t206;
t236 = -t207;
t237 = -t208;
t238 = -t209;
t239 = -t210;
t240 = -t211;
t244 = dq1.*dq2.*t33.*7.043640279267375e-3;
t245 = dq1.*dq3.*t33.*7.043640279267375e-3;
t246 = dq1.*dq4.*t33.*7.043640279267375e-3;
t247 = dq1.*dq5.*t33.*7.043640279267375e-3;
t248 = dq1.*dq6.*t33.*7.043640279267375e-3;
t249 = -t230;
t250 = -t231;
t251 = t8.*t33.*7.043640279267375e-3;
t328 = -t315;
t329 = -t316;
t330 = -t317;
t331 = -t318;
t334 = -t327;
t335 = t31.*4.289721888630938;
t252 = -t244;
t253 = -t245;
t254 = -t246;
t255 = -t247;
t256 = -t248;
t267 = -t251;
t336 = t122.*t124.*7.591227646486231e-20;
dL15_dq2 = [t335+t336-t18.*(t38+t39+t40+t41+t42+t43+t44+t49+t50+t54+t55+t56+t88+t89+t90+t91+t97+t98+t110+t129+t131+t133+t135+t136+t137+t139+t141+t143+t144+t145+t146+t196+t198+t199+t200+t201+t202+t217+t259+t260+t261+t262+t263+t264+t265+t266+t271+t272+t284+t286+t287+t288+t289+t307+dq2.*t29.*3.921094411351031e-1+dq3.*t29.*3.921094411351031e-1+dq4.*t29.*3.921094411351031e-1+dq2.*t32.*1.408728055853475e-2+dq5.*t29.*3.921094411351031e-1+dq2.*t33.*2.7878901789375e-2+dq3.*t32.*1.408728055853475e-2+dq3.*t33.*2.7878901789375e-2+dq4.*t32.*1.408728055853475e-2+dq4.*t33.*2.7878901789375e-2+dq5.*t32.*1.408728055853475e-2+dq5.*t33.*2.7878901789375e-2+dq6.*t32.*1.408728055853475e-2+dq6.*t33.*2.7878901789375e-2+t18.*(t25.*7.842188822702063e-1-t32.*5.575780357875e-2+t33.*2.81745611170695e-2+t35+t57+t58+t96+t125+t126+t127+t161+t257+t258+t273+6.662642848588315e-1));t115+t116+t117+t118+t119+t120+t252+t253+t254+t255+t256+t267+t328+t329+t330+t331+t334+t335+t336-t18.*(t38+t39+t40+t41+t42+t43+t44+t49+t50+t54+t55+t56+t88+t89+t90+t91+t97+t98+t111+t129+t131+t133+t135+t136+t137+t139+t141+t143+t144+t145+t146+t196+t198+t199+t200+t201+t202+t216+t259+t260+t261+t262+t263+t264+t265+t266+t271+t272+t284+t286+t287+t288+t289+t306+t18.*(t35+t57+t58+t96+t125+t126+t127+t161+t257+t258+t273+6.662642848588315e-1))+(t18.*(t110+t217+t307))./2.0;t102+t103+t104+t105+t106+t107+t108+t109+t112+t113+t114+t115+t116+t117+t118+t119+t120+t232+t233+t234+t235+t236+t237+t238+t239+t240+t249+t250+t252+t253+t254+t255+t256+t267+t308+t321+t322+t323+t324+t325+t326+t328+t329+t330+t331+t332+t333+t334+t335+t336-t18.*(t38+t39+t40+t41+t42+t43+t44+t49+t50+t54+t55+t56+t86+t87+t111+t129+t131+t133+t135+t136+t137+t139+t141+t143+t144+t145+t146+t195+t197+t216+t259+t260+t261+t262+t263+t264+t265+t266+t271+t272+t283+t285+t306+t18.*(t35+t57+t58+t125+t126+t127+t257+t258+6.662642848588315e-1))+(t18.*(t97+t98+t110+t196+t198+t217+t284+t286+t307))./2.0;t59+t60+t61+t77+t78+t79+t80+t81+t82+t83+t84+t85+t99+t100+t101+t102+t103+t104+t105+t106+t107+t108+t109+t112+t113+t114+t115+t116+t117+t118+t119+t120+t183+t184+t186+t221+t222+t223+t224+t225+t226+t227+t228+t229+t232+t233+t234+t235+t236+t237+t238+t239+t240+t241+t242+t243+t249+t250+t252+t253+t254+t255+t256+t267+t293+t294+t295+t296+t297+t298+t299+t300+t301+t302+t303+t304+t308+t321+t322+t323+t324+t325+t326+t328+t329+t330+t331+t332+t333+t334+t335+t336-t18.*(t41+t42+t43+t44+t49+t50+t51+t52+t53+t86+t87+t111+t129+t131+t133+t135+t136+t137+t138+t140+t142+t195+t197+t216+t259+t260+t261+t262+t263+t268+t269+t270+t283+t285+t306+t18.*(t35+t58+t125+t126+t257+6.662642848588315e-1))+(t18.*(t38+t39+t40+t97+t98+t110+t139+t141+t143+t196+t198+t217+t264+t265+t266+t284+t286+t307))./2.0;t59+t60+t61+t62+t63+t64+t65+t66+t67+t68+t69+t71+t72+t73+t74+t75+t76+t77+t78+t79+t80+t81+t82+t83+t84+t85+t92+t93+t94+t95+t99+t100+t101+t102+t103+t104+t105+t106+t107+t108+t109+t112+t113+t114+t115+t116+t117+t118+t119+t120+t169+t170+t171+t172+t173+t174+t175+t176+t177+t178+t179+t180+t181+t182+t183+t184+t186+t212+t213+t214+t215+t221+t222+t223+t224+t225+t226+t227+t228+t229+t232+t233+t234+t235+t236+t237+t238+t239+t240+t241+t242+t243+t249+t250+t252+t253+t254+t255+t256+t267+t293+t294+t295+t296+t297+t298+t299+t300+t301+t302+t303+t304+t308+t321+t322+t323+t324+t325+t326+t328+t329+t330+t331+t332+t333+t334+t335+t336-t2.*t8.*1.960547205675516e-1-t2.*t9.*1.960547205675516e-1-t2.*t10.*1.960547205675516e-1-t2.*t11.*1.960547205675516e-1-t18.*(t45+t46+t47+t48+t51+t52+t53+t86+t87+t111+t128+t130+t132+t134+t138+t140+t142+t195+t197+t216+t268+t269+t270+t283+t285+t306+dq1.*t4.*3.921094411351031e-1+dq2.*t4.*3.921094411351031e-1+dq3.*t4.*3.921094411351031e-1+dq4.*t4.*3.921094411351031e-1+t18.*(t35+t125+6.662642848588315e-1))+(t18.*(t38+t39+t40+t41+t42+t43+t44+t97+t98+t110+t129+t131+t133+t135+t139+t141+t143+t196+t198+t217+t259+t260+t261+t262+t264+t265+t266+t284+t286+t307))./2.0-dq1.*dq2.*t2.*3.921094411351031e-1-dq1.*dq3.*t2.*3.921094411351031e-1-dq1.*dq4.*t2.*3.921094411351031e-1-dq2.*dq3.*t2.*3.921094411351031e-1-dq1.*dq5.*t2.*1.960547205675516e-1-dq2.*dq4.*t2.*3.921094411351031e-1-dq2.*dq5.*t2.*1.960547205675516e-1-dq3.*dq4.*t2.*3.921094411351031e-1-dq3.*dq5.*t2.*1.960547205675516e-1-dq4.*dq5.*t2.*1.960547205675516e-1;t59+t60+t61+t62+t63+t64+t65+t66+t67+t68+t69+t71+t72+t73+t74+t75+t76+t77+t78+t79+t80+t81+t82+t83+t84+t85+t92+t93+t94+t95+t99+t100+t101+t102+t103+t104+t105+t106+t107+t108+t109+t112+t113+t114+t115+t116+t117+t118+t119+t120+t169+t170+t171+t172+t173+t174+t175+t176+t177+t178+t179+t180+t181+t182+t183+t184+t186+t212+t213+t214+t215+t221+t222+t223+t224+t225+t226+t227+t228+t229+t232+t233+t234+t235+t236+t237+t238+t239+t240+t241+t242+t243+t249+t250+t252+t253+t254+t255+t256+t267+t336+(t18.*(t38+t39+t40+t41+t42+t43+t44+t97+t98+t110+t129+t131+t133+t135+t139+t141+t143+t196+t198+t217+dq1.*t3.*1.115156071575e-1+dq2.*t3.*1.115156071575e-1+dq1.*t5.*5.6349122234139e-2+dq3.*t3.*1.115156071575e-1+dq2.*t5.*5.6349122234139e-2+dq4.*t3.*1.115156071575e-1+dq3.*t5.*5.6349122234139e-2+dq5.*t3.*1.115156071575e-1+dq4.*t5.*5.6349122234139e-2+dq6.*t3.*5.575780357875e-2+dq5.*t5.*5.6349122234139e-2+dq6.*t5.*2.81745611170695e-2))./2.0-t18.*(t45+t46+t47+t48+t51+t52+t53+t86+t87+t111+t128+t130+t132+t134+t138+t140+t142+t195+t197+t216+t18.*(t3.*2.81745611170695e-2-t5.*5.575780357875e-2+3.275366401942843e-2))];
