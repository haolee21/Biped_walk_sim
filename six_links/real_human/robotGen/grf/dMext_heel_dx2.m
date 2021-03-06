function dMext_heel_dx2 = dMext_heel_dx2(in1)
%DMEXT_HEEL_DX2
%    DMEXT_HEEL_DX2 = DMEXT_HEEL_DX2(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    17-May-2020 05:30:09

q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
t2 = cos(q1);
t3 = sin(q1);
t4 = q1+q2;
t5 = t2.^2;
t6 = t3.^2;
t7 = cos(t4);
t8 = sin(t4);
t9 = q3+q4+t4;
t10 = t7.^2;
t11 = t8.^2;
t12 = cos(t9);
t13 = q5+t9;
t14 = sin(t9);
t27 = t2.*t3.*t7.*7.396e+3;
t28 = t2.*t3.*t8.*7.396e+3;
t103 = t2.*t3.*t7.*t8.*1.4792e+4;
t115 = t5.*t7.*t8.*1.4792e+4;
t123 = t6.*t7.*t8.*1.4792e+4;
t15 = sin(t13);
t16 = cos(t13);
t17 = t12.^2;
t18 = t14.^2;
t21 = t3.*t10.*1.72e+2;
t22 = t2.*t11.*1.72e+2;
t25 = t3.*t10.*6.88e+3;
t26 = t2.*t11.*6.88e+3;
t32 = t5.*t12.*7.396e+3;
t37 = t6.*t12.*7.396e+3;
t38 = t5.*t14.*7.396e+3;
t40 = t6.*t14.*7.396e+3;
t41 = t2.*t3.*t12.*7.396e+3;
t42 = t6.*t10.*7.396e+3;
t43 = t5.*t11.*7.396e+3;
t44 = t2.*t3.*t14.*7.396e+3;
t46 = t2.*t3.*t10.*1.4792e+4;
t52 = t2.*t3.*t11.*1.4792e+4;
t53 = t3.*t7.*t12.*3.44e+2;
t54 = t2.*t8.*t14.*3.44e+2;
t66 = t2.*t7.*t12.*6.88e+3;
t68 = t3.*t7.*t12.*6.88e+3;
t69 = t2.*t8.*t12.*6.88e+3;
t70 = t2.*t7.*t14.*6.88e+3;
t72 = t3.*t8.*t12.*6.88e+3;
t73 = t3.*t7.*t14.*6.88e+3;
t74 = t2.*t8.*t14.*6.88e+3;
t77 = t3.*t8.*t14.*6.88e+3;
t101 = t3.*t7.*t12.*1.376e+4;
t102 = t2.*t7.*t14.*1.376e+4;
t106 = t3.*t8.*t12.*1.376e+4;
t107 = t2.*t8.*t14.*1.376e+4;
t119 = t11.*t12.*1.28e+4;
t120 = t10.*t14.*1.28e+4;
t128 = t2.*t12.*t14.*6.88e+3;
t129 = t3.*t12.*t14.*6.88e+3;
t139 = -t103;
t156 = -t123;
t158 = t7.*t12.*t14.*3.2e+2;
t159 = t8.*t12.*t14.*3.2e+2;
t160 = t7.*t8.*t12.*1.28e+4;
t161 = t2.*t3.*t7.*t12.*2.9584e+4;
t168 = t7.*t8.*t14.*1.28e+4;
t169 = t2.*t12.*t14.*1.376e+4;
t170 = t2.*t3.*t8.*t12.*1.4792e+4;
t171 = t2.*t3.*t7.*t14.*1.4792e+4;
t174 = t3.*t12.*t14.*1.376e+4;
t175 = t2.*t3.*t8.*t14.*2.9584e+4;
t185 = t6.*t7.*t12.*1.4792e+4;
t186 = t5.*t8.*t12.*1.4792e+4;
t187 = t5.*t7.*t14.*1.4792e+4;
t193 = t6.*t8.*t12.*1.4792e+4;
t194 = t6.*t7.*t14.*1.4792e+4;
t195 = t5.*t8.*t14.*1.4792e+4;
t253 = t7.*t12.*t14.*1.28e+4;
t254 = t8.*t12.*t14.*1.28e+4;
t257 = t2.*t3.*t12.*t14.*4.4376e+4;
t272 = t5.*t12.*t14.*4.4376e+4;
t275 = t6.*t12.*t14.*4.4376e+4;
t312 = t3.*t7.*t12.*t14.*2.752e+4;
t313 = t2.*t8.*t12.*t14.*2.752e+4;
t316 = t3.*t8.*t12.*t14.*2.752e+4;
t334 = t2.*t7.*t12.*t14.*2.752e+4;
t370 = t7.*t8.*t12.*t14.*5.12e+4;
t19 = t16.^2;
t20 = t15.^2;
t23 = -t21;
t24 = -t22;
t29 = -t25;
t30 = -t26;
t31 = t2.*t17.*6.88e+3;
t33 = t3.*t17.*5.16e+2;
t34 = t2.*t18.*5.16e+2;
t35 = t3.*t17.*6.88e+3;
t36 = t2.*t18.*6.88e+3;
t39 = t3.*t18.*6.88e+3;
t45 = t2.*t3.*t16.*1.849e+3;
t47 = t2.*t3.*t15.*1.849e+3;
t59 = -t41;
t60 = -t44;
t61 = t8.*t17.*3.2e+2;
t62 = t7.*t18.*3.2e+2;
t63 = t2.*t3.*t16.*9.245e+3;
t64 = -t46;
t65 = t2.*t3.*t15.*9.245e+3;
t67 = -t53;
t71 = -t54;
t75 = t5.*t16.*9.245e+3;
t80 = t5.*t15.*9.245e+3;
t81 = t6.*t16.*9.245e+3;
t84 = t6.*t15.*9.245e+3;
t86 = t3.*t7.*t16.*4.3e+2;
t87 = t2.*t8.*t15.*4.3e+2;
t90 = t2.*t3.*t18.*4.4376e+4;
t95 = t10.*t15.*3.2e+3;
t96 = t11.*t16.*3.2e+3;
t99 = -t68;
t100 = -t69;
t104 = -t73;
t105 = -t74;
t108 = t6.*t17.*2.2188e+4;
t109 = t5.*t18.*2.2188e+4;
t113 = t3.*t7.*t16.*1.72e+3;
t114 = t2.*t8.*t16.*1.72e+3;
t117 = t3.*t7.*t15.*1.72e+3;
t118 = t2.*t8.*t15.*1.72e+3;
t121 = t8.*t17.*1.28e+4;
t122 = t7.*t18.*1.28e+4;
t124 = t2.*t3.*t17.*4.4376e+4;
t125 = t3.*t8.*t15.*8.6e+3;
t132 = t10.*t15.*1.6e+4;
t133 = t11.*t16.*1.6e+4;
t138 = -t101;
t140 = -t107;
t141 = t2.*t7.*t16.*8.6e+3;
t142 = t2.*t7.*t15.*8.6e+3;
t143 = t3.*t7.*t16.*8.6e+3;
t144 = t2.*t8.*t16.*8.6e+3;
t145 = t2.*t7.*t15.*1.72e+4;
t146 = t3.*t7.*t16.*1.72e+4;
t147 = t3.*t7.*t15.*8.6e+3;
t148 = t2.*t8.*t15.*8.6e+3;
t149 = t3.*t8.*t16.*8.6e+3;
t150 = t2.*t8.*t15.*1.72e+4;
t151 = t3.*t8.*t16.*1.72e+4;
t164 = t15.*t17.*6.4e+3;
t165 = t16.*t18.*6.4e+3;
t172 = t11.*t17.*2.56e+4;
t173 = t10.*t18.*2.56e+4;
t180 = t7.*t8.*t16.*3.2e+3;
t181 = t7.*t8.*t15.*3.2e+3;
t182 = t3.*t12.*t16.*1.29e+3;
t183 = t3.*t12.*t16.*1.72e+3;
t184 = t2.*t14.*t16.*1.72e+3;
t188 = t2.*t8.*t17.*2.752e+4;
t189 = t2.*t7.*t18.*2.752e+4;
t190 = t2.*t14.*t15.*1.29e+3;
t191 = t3.*t12.*t15.*1.72e+3;
t192 = t2.*t14.*t15.*1.72e+3;
t196 = t3.*t8.*t17.*2.752e+4;
t197 = t3.*t7.*t18.*2.752e+4;
t204 = t2.*t15.*t16.*2.15e+3;
t205 = -t160;
t206 = t5.*t7.*t15.*1.849e+4;
t207 = t6.*t7.*t16.*1.849e+4;
t208 = t5.*t8.*t16.*1.849e+4;
t211 = t3.*t15.*t16.*2.15e+3;
t212 = -t161;
t215 = -t168;
t216 = t6.*t7.*t15.*1.849e+4;
t217 = t5.*t8.*t15.*1.849e+4;
t218 = t6.*t8.*t16.*1.849e+4;
t221 = -t170;
t222 = -t171;
t224 = t7.*t12.*t15.*4.0e+2;
t225 = t7.*t14.*t16.*4.0e+2;
t226 = t8.*t12.*t15.*4.0e+2;
t227 = t8.*t14.*t16.*4.0e+2;
t228 = t7.*t8.*t16.*1.6e+4;
t229 = t2.*t12.*t16.*1.72e+4;
t230 = t2.*t3.*t7.*t16.*3.698e+4;
t231 = t7.*t8.*t15.*1.6e+4;
t233 = t2.*t12.*t15.*8.6e+3;
t234 = t2.*t14.*t16.*8.6e+3;
t235 = t2.*t12.*t15.*1.72e+4;
t236 = t3.*t12.*t16.*1.72e+4;
t237 = t2.*t14.*t16.*1.72e+4;
t238 = t2.*t3.*t7.*t15.*1.849e+4;
t239 = t2.*t3.*t8.*t16.*1.849e+4;
t244 = t3.*t12.*t15.*8.6e+3;
t245 = t3.*t14.*t16.*8.6e+3;
t246 = t3.*t12.*t15.*1.72e+4;
t247 = t2.*t14.*t15.*1.72e+4;
t248 = t3.*t14.*t16.*1.72e+4;
t249 = t2.*t3.*t8.*t15.*3.698e+4;
t250 = -t193;
t251 = -t194;
t252 = t3.*t14.*t15.*1.72e+4;
t255 = t2.*t15.*t16.*1.075e+4;
t256 = t2.*t15.*t16.*2.15e+4;
t259 = t3.*t15.*t16.*1.075e+4;
t260 = t3.*t15.*t16.*2.15e+4;
t263 = t8.*t12.*t16.*8.0e+2;
t264 = t8.*t12.*t16.*3.2e+3;
t265 = t7.*t14.*t16.*3.2e+3;
t266 = t7.*t12.*t15.*6.4e+3;
t267 = t7.*t14.*t15.*8.0e+2;
t268 = t8.*t12.*t15.*3.2e+3;
t269 = t7.*t14.*t15.*3.2e+3;
t270 = t8.*t14.*t16.*6.4e+3;
t280 = t7.*t15.*t16.*7.5e+2;
t281 = t7.*t15.*t16.*4.0e+3;
t282 = t8.*t15.*t16.*7.5e+2;
t283 = t8.*t15.*t16.*4.0e+3;
t284 = -t253;
t287 = t5.*t12.*t15.*5.547e+4;
t288 = t6.*t12.*t16.*5.547e+4;
t289 = t5.*t14.*t16.*5.547e+4;
t290 = -t254;
t293 = t6.*t12.*t15.*5.547e+4;
t294 = t5.*t14.*t15.*5.547e+4;
t295 = t6.*t14.*t16.*5.547e+4;
t296 = -t257;
t298 = t7.*t12.*t15.*1.6e+4;
t299 = t7.*t14.*t16.*1.6e+4;
t300 = t8.*t12.*t16.*3.2e+4;
t302 = t8.*t12.*t15.*1.6e+4;
t303 = t8.*t14.*t16.*1.6e+4;
t304 = t7.*t14.*t15.*3.2e+4;
t305 = t2.*t3.*t12.*t15.*5.547e+4;
t306 = t2.*t3.*t14.*t16.*5.547e+4;
t309 = -t275;
t310 = t7.*t15.*t16.*2.0e+4;
t311 = t7.*t15.*t16.*3.0e+4;
t314 = t8.*t15.*t16.*2.0e+4;
t315 = t8.*t15.*t16.*3.0e+4;
t320 = t12.*t14.*t16.*6.4e+3;
t321 = t12.*t14.*t15.*6.4e+3;
t325 = t2.*t3.*t12.*t16.*1.1094e+5;
t331 = t2.*t3.*t14.*t15.*1.1094e+5;
t332 = t12.*t15.*t16.*2.5e+2;
t333 = t14.*t15.*t16.*2.5e+2;
t336 = t10.*t14.*t15.*6.4e+4;
t338 = -t312;
t339 = -t313;
t341 = -t316;
t342 = t2.*t3.*t15.*t16.*9.245e+4;
t343 = t2.*t7.*t12.*t15.*3.44e+4;
t344 = t2.*t7.*t14.*t16.*3.44e+4;
t345 = t3.*t7.*t12.*t15.*3.44e+4;
t346 = t2.*t8.*t12.*t15.*3.44e+4;
t347 = t3.*t7.*t14.*t16.*3.44e+4;
t348 = t2.*t8.*t14.*t16.*3.44e+4;
t349 = t3.*t8.*t12.*t15.*3.44e+4;
t350 = t3.*t8.*t14.*t16.*3.44e+4;
t351 = t5.*t15.*t16.*9.245e+4;
t353 = t6.*t15.*t16.*9.245e+4;
t354 = t12.*t15.*t16.*8.0e+3;
t356 = t11.*t12.*t16.*6.4e+4;
t357 = t14.*t15.*t16.*8.0e+3;
t359 = t2.*t8.*t12.*t16.*6.88e+4;
t364 = t2.*t7.*t14.*t15.*6.88e+4;
t365 = t3.*t8.*t12.*t16.*6.88e+4;
t368 = t3.*t7.*t14.*t15.*6.88e+4;
t371 = t2.*t7.*t15.*t16.*6.45e+4;
t372 = t12.*t15.*t16.*1.0e+4;
t373 = t3.*t7.*t15.*t16.*6.45e+4;
t374 = t2.*t8.*t15.*t16.*6.45e+4;
t375 = t14.*t15.*t16.*1.0e+4;
t376 = t3.*t8.*t15.*t16.*6.45e+4;
t377 = t7.*t8.*t12.*t15.*6.4e+4;
t378 = t7.*t8.*t14.*t16.*6.4e+4;
t380 = -t370;
t392 = t7.*t8.*t15.*t16.*1.2e+5;
t393 = t3.*t12.*t15.*t16.*-2.15e+4;
t394 = t2.*t14.*t15.*t16.*-2.15e+4;
t395 = t3.*t14.*t15.*t16.*-2.15e+4;
t396 = t8.*t12.*t15.*t16.*4.0e+4;
t397 = t7.*t14.*t15.*t16.*4.0e+4;
t401 = t12.*t14.*t15.*t16.*8.0e+4;
t48 = -t33;
t49 = -t34;
t50 = -t35;
t51 = -t36;
t55 = t3.*t19.*1.075e+3;
t56 = t2.*t20.*1.075e+3;
t57 = t3.*t19.*2.15e+3;
t58 = t2.*t20.*2.15e+3;
t76 = t2.*t19.*1.075e+4;
t82 = t3.*t19.*1.075e+4;
t83 = t2.*t20.*1.075e+4;
t85 = t3.*t20.*1.075e+4;
t88 = -t61;
t89 = -t62;
t91 = -t63;
t92 = -t65;
t93 = t8.*t19.*7.5e+2;
t94 = t7.*t20.*7.5e+2;
t97 = t8.*t19.*4.0e+3;
t98 = t7.*t20.*4.0e+3;
t112 = -t86;
t116 = -t87;
t126 = t14.*t19.*2.5e+2;
t127 = t12.*t20.*2.5e+2;
t134 = t8.*t19.*2.0e+4;
t135 = t7.*t20.*2.0e+4;
t136 = t8.*t19.*3.0e+4;
t137 = t7.*t20.*3.0e+4;
t152 = -t121;
t153 = -t122;
t154 = t6.*t19.*4.6225e+4;
t155 = t5.*t20.*4.6225e+4;
t157 = -t124;
t166 = t14.*t19.*8.0e+3;
t167 = t12.*t20.*8.0e+3;
t178 = t2.*t3.*t19.*9.245e+4;
t179 = t2.*t3.*t20.*9.245e+4;
t198 = -t143;
t199 = -t144;
t200 = -t146;
t201 = -t147;
t202 = -t148;
t203 = -t150;
t209 = t2.*t8.*t19.*6.45e+4;
t210 = t2.*t7.*t20.*6.45e+4;
t213 = t14.*t19.*1.0e+4;
t214 = t12.*t20.*1.0e+4;
t219 = t3.*t8.*t19.*6.45e+4;
t220 = t3.*t7.*t20.*6.45e+4;
t232 = -t182;
t240 = t11.*t19.*6.0e+4;
t241 = t10.*t20.*6.0e+4;
t242 = -t188;
t243 = -t190;
t261 = -t216;
t262 = -t218;
t271 = -t228;
t273 = -t230;
t274 = -t231;
t276 = -t236;
t277 = -t238;
t278 = -t239;
t279 = -t247;
t285 = t2.*t14.*t19.*2.15e+4;
t286 = t2.*t12.*t20.*2.15e+4;
t291 = t3.*t14.*t19.*2.15e+4;
t292 = t3.*t12.*t20.*2.15e+4;
t297 = -t263;
t301 = -t267;
t307 = t17.*t20.*4.0e+4;
t308 = t18.*t19.*4.0e+4;
t318 = -t293;
t319 = -t295;
t322 = -t298;
t323 = -t299;
t324 = -t300;
t326 = -t302;
t327 = -t303;
t328 = -t304;
t329 = -t305;
t330 = -t306;
t335 = t8.*t14.*t19.*4.0e+4;
t337 = -t311;
t340 = -t315;
t352 = -t325;
t355 = t7.*t12.*t20.*4.0e+4;
t358 = -t342;
t360 = -t345;
t361 = -t346;
t362 = -t347;
t363 = -t348;
t366 = -t349;
t367 = -t350;
t369 = -t353;
t379 = -t359;
t381 = -t372;
t382 = -t373;
t383 = -t374;
t384 = -t375;
t385 = -t376;
t386 = -t377;
t387 = -t378;
t388 = t12.*t256;
t389 = t12.*t260;
t390 = t14.*t256;
t391 = t14.*t260;
t398 = -t392;
t399 = -t396;
t400 = -t397;
t402 = -t401;
t78 = -t55;
t79 = -t56;
t110 = -t82;
t111 = -t83;
t130 = -t93;
t131 = -t94;
t162 = -t126;
t163 = -t127;
t176 = -t134;
t177 = -t135;
t223 = -t178;
t258 = -t209;
t317 = -t285;
t408 = t42+t43+t108+t109+t139+t154+t155+t172+t173+t185+t189+t195+t196+t207+t210+t217+t219+t221+t222+t240+t241+t277+t278+t286+t288+t291+t294+t296+t307+t308+t329+t330+t335+t336+t338+t339+t355+t356+t358+t360+t361+t362+t363+t364+t365+t380+t382+t383+t386+t387+t393+t394+t398+t399+t400+t402;
t403 = t38+t50+t59+t80+t91+t99+t100+t102+t110+t120+t128+t132+t145+t152+t176+t198+t199+t205+t213+t233+t234+t253+t255+t271+t276+t298+t299+t310+t324+t381;
t404 = t37+t51+t60+t81+t92+t104+t105+t106+t111+t119+t129+t133+t151+t153+t177+t201+t202+t214+t215+t244+t245+t254+t259+t274+t279+t302+t303+t314+t328+t384;
t405 = t39+t40+t41+t50+t63+t69+t70+t77+t84+t85+t99+t110+t120+t125+t132+t142+t144+t152+t169+t176+t198+t205+t213+t235+t237+t252+t253+t256+t271+t276+t298+t299+t310+t324+t381;
t406 = t31+t32+t44+t51+t65+t66+t72+t73+t75+t76+t105+t111+t119+t133+t141+t147+t149+t153+t174+t177+t202+t214+t215+t229+t246+t248+t254+t260+t274+t279+t302+t303+t314+t328+t384;
t407 = t52+t64+t90+t115+t156+t157+t175+t179+t186+t187+t197+t206+t208+t212+t220+t223+t242+t249+t250+t251+t258+t261+t262+t272+t273+t287+t289+t292+t309+t317+t318+t319+t331+t334+t341+t343+t344+t351+t352+t366+t367+t368+t369+t371+t379+t385+t388+t395;
t409 = 1.0./t408;
t410 = t409.^2;
t411 = t405.*t409.*(5.0./2.0);
t412 = t406.*t409.*(5.0./2.0);
t413 = -t411;
t414 = -t412;
t415 = t410.*(t35-t38+t41+t63+t68+t69-t80+t82-t102-t120+t121-t128-t132+t134+t143+t144-t145+t160-t213+t228-t233-t234+t236-t255+t284+t300-t310+t322+t323+t372).*(t46-t52-t90-t115+t123+t124+t161-t175+t178-t179-t186-t187+t188+t193+t194-t197-t206-t208+t209+t216+t218-t220+t230-t249-t272+t275+t285-t287-t289-t292+t293+t295+t316+t325-t331-t334-t343-t344+t349+t350-t351+t353+t359-t368-t371+t376+t391-t2.*t12.*t15.*t16.*2.15e+4).*(5.0./2.0);
t416 = t410.*(t36-t37+t44+t65+t73+t74-t81+t83-t106-t119+t122-t129-t133+t135+t147+t148-t151+t168-t214+t231-t244-t245+t247-t259+t290+t304-t314+t326+t327+t375).*(t46-t52-t90-t115+t123+t124+t161-t175+t178-t179-t186-t187+t188+t193+t194-t197-t206-t208+t209+t216+t218-t220+t230-t249-t272+t275+t285-t287-t289-t292+t293+t295+t316+t325-t331-t334-t343-t344+t349+t350-t351+t353+t359-t368-t371+t376+t391-t2.*t12.*t15.*t16.*2.15e+4).*(5.0./2.0);
t417 = -t416;
t418 = t414+t415;
t419 = t413+t417;
dMext_heel_dx2 = reshape([t409.*(t24+t49+t71+t79+t89+t116+t131+t159+t163+t211+t226+t227+t243+t282+t301+t333+t2.*t10.*1.72e+2+t2.*t17.*5.16e+2+t2.*t19.*1.075e+3+t3.*t7.*t8.*3.44e+2+t2.*t7.*t12.*3.44e+2+t3.*t8.*t12.*3.44e+2+t3.*t7.*t14.*3.44e+2+t2.*t7.*t16.*4.3e+2+t3.*t7.*t15.*4.3e+2+t3.*t8.*t16.*4.3e+2+t3.*t12.*t14.*1.032e+3+t2.*t12.*t16.*1.29e+3+t3.*t12.*t15.*1.29e+3+t3.*t14.*t16.*1.29e+3).*1.0e+2+t410.*(t23+t48+t67+t78+t88+t112+t130+t158+t162+t224+t225+t232+t280+t297+t332+t2.*t7.*t8.*1.72e+2+t2.*t8.*t12.*1.72e+2+t2.*t7.*t14.*1.72e+2+t2.*t7.*t15.*2.15e+2+t2.*t8.*t16.*2.15e+2+t2.*t12.*t14.*5.16e+2+t2.*t12.*t15.*6.45e+2+t2.*t14.*t16.*6.45e+2+t2.*t15.*t16.*1.075e+3).*(t46-t52-t90-t115+t123+t124+t161-t175+t178-t179-t186-t187+t188+t193+t194-t197-t206-t208+t209+t216+t218-t220+t230-t249-t272+t275+t285-t287-t289-t292+t293+t295+t316+t325-t331-t334-t343-t344+t349+t350-t351+t353+t359-t368-t371+t376+t391-t2.*t12.*t15.*t16.*2.15e+4).*1.0e+2,t409.*(t23+t48+t67+t78+t88+t112+t130+t158+t162+t204+t224+t225+t232+t280+t297+t332+t3.*t11.*1.72e+2+t3.*t18.*5.16e+2+t3.*t20.*1.075e+3+t2.*t7.*t8.*3.44e+2+t2.*t8.*t12.*3.44e+2+t2.*t7.*t14.*3.44e+2+t2.*t7.*t15.*4.3e+2+t3.*t8.*t14.*3.44e+2+t2.*t8.*t16.*4.3e+2+t3.*t8.*t15.*4.3e+2+t2.*t12.*t14.*1.032e+3+t2.*t12.*t15.*1.29e+3+t2.*t14.*t16.*1.29e+3+t3.*t14.*t15.*1.29e+3).*1.0e+2-t410.*(t24+t49+t71+t79+t89+t116+t131+t159+t163+t226+t227+t243+t282+t301+t333+t3.*t7.*t8.*1.72e+2+t3.*t8.*t12.*1.72e+2+t3.*t7.*t14.*1.72e+2+t3.*t7.*t15.*2.15e+2+t3.*t8.*t16.*2.15e+2+t3.*t12.*t14.*5.16e+2+t3.*t12.*t15.*6.45e+2+t3.*t14.*t16.*6.45e+2+t3.*t15.*t16.*1.075e+3).*(t46-t52-t90-t115+t123+t124+t161-t175+t178-t179-t186-t187+t188+t193+t194-t197-t206-t208+t209+t216+t218-t220+t230-t249-t272+t275+t285-t287-t289-t292+t293+t295+t316+t325-t331-t334-t343-t344+t349+t350-t351+t353+t359-t368-t371+t376+t391-t2.*t12.*t15.*t16.*2.15e+4).*1.0e+2,t409.*(t28+t30+t31+t32+t44+t51+t65+t75+t76+t106+t111+t122+t137+t140+t151+t174+t203+t214+t229+t246+t248+t260+t279+t290+t304+t326+t327+t340+t384+t2.*t10.*6.88e+3+t5.*t7.*7.396e+3+t3.*t7.*t8.*1.376e+4+t2.*t7.*t12.*1.376e+4+t3.*t7.*t14.*1.376e+4+t2.*t7.*t16.*1.72e+4+t3.*t7.*t15.*1.72e+4).*(-5.0./2.0)-t410.*(-t27+t29+t38+t50+t59+t69+t70+t80+t91+t110+t121+t128+t136+t138+t142+t144+t200+t213+t233+t234+t255+t276+t284+t300+t322+t323+t337+t381+t5.*t8.*7.396e+3+t2.*t7.*t8.*6.88e+3).*(t46-t52-t90-t115+t123+t124+t161-t175+t178-t179-t186-t187+t188+t193+t194-t197-t206-t208+t209+t216+t218-t220+t230-t249-t272+t275+t285-t287-t289-t292+t293+t295+t316+t325-t331-t334-t343-t344+t349+t350-t351+t353+t359-t368-t371+t376+t391-t2.*t12.*t15.*t16.*2.15e+4).*(5.0./2.0),t409.*(t27+t29+t39+t40+t41+t50+t63+t84+t85+t102+t110+t121+t136+t138+t145+t169+t200+t213+t235+t237+t252+t256+t276+t284+t300+t322+t323+t337+t381+t3.*t11.*6.88e+3+t6.*t8.*7.396e+3+t2.*t7.*t8.*1.376e+4+t2.*t8.*t12.*1.376e+4+t3.*t8.*t14.*1.376e+4+t2.*t8.*t16.*1.72e+4+t3.*t8.*t15.*1.72e+4).*(-5.0./2.0)+t410.*(-t28+t30+t37+t51+t60+t72+t73+t81+t92+t111+t122+t129+t137+t140+t147+t149+t203+t214+t244+t245+t259+t279+t290+t304+t326+t327+t340+t384+t6.*t7.*7.396e+3+t3.*t7.*t8.*6.88e+3).*(t46-t52-t90-t115+t123+t124+t161-t175+t178-t179-t186-t187+t188+t193+t194-t197-t206-t208+t209+t216+t218-t220+t230-t249-t272+t275+t285-t287-t289-t292+t293+t295+t316+t325-t331-t334-t343-t344+t349+t350-t351+t353+t359-t368-t371+t376+t391-t2.*t12.*t15.*t16.*2.15e+4).*(5.0./2.0),t418,t419,t418,t419,t409.*(t47-t58+t96-t98+t117-t118+t165-t167-t181+t191-t192-t268-t269+t270+t283-t321+t357+t2.*t19.*2.15e+3+t5.*t16.*1.849e+3+t2.*t7.*t16.*1.72e+3+t3.*t8.*t16.*1.72e+3+t2.*t12.*t16.*1.72e+3+t3.*t14.*t16.*1.72e+3+t3.*t15.*t16.*4.3e+3).*(-2.5e+1./2.0)+t410.*(t45+t57-t95+t97+t113+t114-t164+t166+t180+t183+t184-t204+t264+t265-t266-t281+t320-t354-t5.*t15.*1.849e+3-t2.*t7.*t15.*3.44e+3-t2.*t12.*t15.*3.44e+3).*(t46-t52-t90-t115+t123+t124+t161-t175+t178-t179-t186-t187+t188+t193+t194-t197-t206-t208+t209+t216+t218-t220+t230-t249-t272+t275+t285-t287-t289-t292+t293+t295+t316+t325-t331-t334-t343-t344+t349+t350-t351+t353+t359-t368-t371+t376+t391-t2.*t12.*t15.*t16.*2.15e+4).*(2.5e+1./2.0),t409.*(t45-t57+t95-t97-t113+t114+t164-t166-t180-t183+t184-t264-t265+t266+t281-t320+t354+t6.*t15.*1.849e+3+t3.*t20.*2.15e+3+t2.*t7.*t15.*1.72e+3+t3.*t8.*t15.*1.72e+3+t2.*t12.*t15.*1.72e+3+t3.*t14.*t15.*1.72e+3+t2.*t15.*t16.*4.3e+3).*(-2.5e+1./2.0)-t410.*(t47+t58-t96+t98+t117+t118-t165+t167+t181+t191+t192-t211+t268+t269-t270-t283+t321-t357-t6.*t16.*1.849e+3-t3.*t8.*t16.*3.44e+3-t3.*t14.*t16.*3.44e+3).*(t46-t52-t90-t115+t123+t124+t161-t175+t178-t179-t186-t187+t188+t193+t194-t197-t206-t208+t209+t216+t218-t220+t230-t249-t272+t275+t285-t287-t289-t292+t293+t295+t316+t325-t331-t334-t343-t344+t349+t350-t351+t353+t359-t368-t371+t376+t391-t2.*t12.*t15.*t16.*2.15e+4).*(2.5e+1./2.0),0.0,0.0],[2,6]);
