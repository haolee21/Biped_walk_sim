function dMext_heel_dx3 = dMext_heel_dx3(in1)
%DMEXT_HEEL_DX3
%    DMEXT_HEEL_DX3 = DMEXT_HEEL_DX3(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    17-May-2020 05:29:01

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
t80 = t2.*t3.*t7.*t8.*1.4792e+4;
t15 = sin(t13);
t16 = cos(t13);
t17 = t12.^2;
t18 = t14.^2;
t22 = t5.*t12.*7.396e+3;
t27 = t6.*t12.*7.396e+3;
t28 = t5.*t14.*7.396e+3;
t30 = t6.*t14.*7.396e+3;
t31 = t2.*t3.*t12.*7.396e+3;
t32 = t6.*t10.*7.396e+3;
t33 = t5.*t11.*7.396e+3;
t34 = t2.*t3.*t14.*7.396e+3;
t51 = t3.*t7.*t12.*6.88e+3;
t52 = t2.*t8.*t12.*6.88e+3;
t53 = t3.*t7.*t14.*6.88e+3;
t54 = t2.*t8.*t14.*6.88e+3;
t67 = t11.*t14.*1.28e+4;
t72 = t2.*t7.*t12.*1.376e+4;
t79 = t2.*t7.*t14.*1.376e+4;
t83 = t3.*t8.*t12.*1.376e+4;
t86 = t3.*t8.*t14.*1.376e+4;
t91 = t10.*t12.*1.28e+4;
t95 = t11.*t12.*1.28e+4;
t96 = t10.*t14.*1.28e+4;
t104 = t2.*t12.*t14.*6.88e+3;
t107 = t3.*t12.*t14.*6.88e+3;
t116 = -t80;
t130 = t7.*t8.*t12.*1.28e+4;
t131 = t2.*t3.*t7.*t12.*1.4792e+4;
t138 = t7.*t8.*t14.*1.28e+4;
t139 = t2.*t12.*t14.*1.376e+4;
t140 = t2.*t3.*t8.*t12.*1.4792e+4;
t141 = t2.*t3.*t7.*t14.*1.4792e+4;
t144 = t3.*t12.*t14.*1.376e+4;
t145 = t2.*t3.*t8.*t14.*1.4792e+4;
t155 = t6.*t7.*t12.*1.4792e+4;
t156 = t5.*t8.*t12.*1.4792e+4;
t163 = t6.*t7.*t14.*1.4792e+4;
t164 = t5.*t8.*t14.*1.4792e+4;
t217 = t7.*t12.*t14.*1.28e+4;
t218 = t7.*t12.*t14.*2.56e+4;
t219 = t8.*t12.*t14.*1.28e+4;
t220 = t8.*t12.*t14.*2.56e+4;
t223 = t2.*t3.*t12.*t14.*4.4376e+4;
t238 = t5.*t12.*t14.*4.4376e+4;
t240 = t6.*t12.*t14.*4.4376e+4;
t279 = t3.*t7.*t12.*t14.*2.752e+4;
t280 = t2.*t8.*t12.*t14.*2.752e+4;
t284 = t3.*t8.*t12.*t14.*5.504e+4;
t290 = t10.*t12.*t14.*5.12e+4;
t292 = t11.*t12.*t14.*5.12e+4;
t301 = t2.*t7.*t12.*t14.*5.504e+4;
t344 = t7.*t8.*t12.*t14.*5.12e+4;
t19 = t16.^2;
t20 = t15.^2;
t21 = t2.*t17.*6.88e+3;
t23 = t3.*t17.*5.16e+2;
t24 = t2.*t18.*5.16e+2;
t25 = t3.*t17.*6.88e+3;
t26 = t2.*t18.*6.88e+3;
t29 = t3.*t18.*6.88e+3;
t35 = t2.*t3.*t16.*1.849e+3;
t36 = t2.*t3.*t15.*1.849e+3;
t45 = -t31;
t46 = -t34;
t47 = t8.*t17.*3.2e+2;
t48 = t7.*t18.*3.2e+2;
t49 = t2.*t3.*t16.*9.245e+3;
t50 = t2.*t3.*t15.*9.245e+3;
t55 = t5.*t16.*9.245e+3;
t59 = t5.*t15.*9.245e+3;
t60 = t6.*t16.*9.245e+3;
t63 = t6.*t15.*9.245e+3;
t68 = t8.*t18.*1.28e+4;
t69 = t2.*t3.*t18.*4.4376e+4;
t77 = -t51;
t78 = -t52;
t81 = -t53;
t82 = -t54;
t84 = t6.*t17.*2.2188e+4;
t85 = t5.*t18.*2.2188e+4;
t89 = t3.*t7.*t16.*1.72e+3;
t90 = t2.*t8.*t16.*1.72e+3;
t92 = t7.*t17.*1.28e+4;
t93 = t3.*t7.*t15.*1.72e+3;
t94 = t2.*t8.*t15.*1.72e+3;
t97 = t8.*t17.*1.28e+4;
t98 = t7.*t18.*1.28e+4;
t99 = t2.*t3.*t17.*4.4376e+4;
t100 = t3.*t8.*t15.*1.72e+4;
t105 = t10.*t16.*1.6e+4;
t110 = t10.*t15.*1.6e+4;
t111 = t11.*t16.*1.6e+4;
t117 = t11.*t15.*1.6e+4;
t119 = t2.*t7.*t16.*1.72e+4;
t120 = t3.*t7.*t16.*8.6e+3;
t121 = t2.*t8.*t16.*8.6e+3;
t122 = t2.*t7.*t15.*1.72e+4;
t123 = t3.*t7.*t15.*8.6e+3;
t124 = t2.*t8.*t15.*8.6e+3;
t125 = t3.*t8.*t16.*1.72e+4;
t134 = t15.*t17.*6.4e+3;
t135 = t16.*t18.*6.4e+3;
t142 = t11.*t17.*2.56e+4;
t143 = t10.*t18.*2.56e+4;
t150 = t7.*t8.*t16.*3.2e+3;
t151 = t7.*t8.*t15.*3.2e+3;
t152 = t3.*t12.*t16.*1.29e+3;
t153 = t3.*t12.*t16.*1.72e+3;
t154 = t2.*t14.*t16.*1.72e+3;
t157 = t3.*t7.*t17.*2.752e+4;
t158 = t2.*t8.*t17.*2.752e+4;
t159 = t2.*t7.*t18.*2.752e+4;
t160 = t2.*t14.*t15.*1.29e+3;
t161 = t3.*t12.*t15.*1.72e+3;
t162 = t2.*t14.*t15.*1.72e+3;
t165 = t3.*t8.*t17.*2.752e+4;
t166 = t3.*t7.*t18.*2.752e+4;
t167 = t2.*t8.*t18.*2.752e+4;
t172 = t2.*t15.*t16.*2.15e+3;
t173 = -t130;
t174 = t6.*t7.*t16.*1.849e+4;
t175 = t5.*t8.*t16.*1.849e+4;
t179 = t3.*t15.*t16.*2.15e+3;
t182 = -t138;
t183 = t6.*t7.*t15.*1.849e+4;
t184 = t5.*t8.*t15.*1.849e+4;
t188 = -t140;
t189 = -t141;
t190 = -t145;
t192 = t7.*t8.*t16.*1.6e+4;
t193 = t2.*t12.*t16.*1.72e+4;
t194 = t2.*t3.*t7.*t16.*1.849e+4;
t195 = t7.*t8.*t15.*1.6e+4;
t197 = t2.*t12.*t15.*8.6e+3;
t198 = t2.*t14.*t16.*8.6e+3;
t199 = t2.*t12.*t15.*1.72e+4;
t200 = t3.*t12.*t16.*1.72e+4;
t201 = t2.*t14.*t16.*1.72e+4;
t202 = t2.*t3.*t7.*t15.*1.849e+4;
t203 = t2.*t3.*t8.*t16.*1.849e+4;
t206 = -t156;
t208 = t3.*t12.*t15.*8.6e+3;
t209 = t3.*t14.*t16.*8.6e+3;
t210 = t3.*t12.*t15.*1.72e+4;
t211 = t2.*t14.*t15.*1.72e+4;
t212 = t3.*t14.*t16.*1.72e+4;
t213 = t2.*t3.*t8.*t15.*1.849e+4;
t216 = t3.*t14.*t15.*1.72e+4;
t221 = t2.*t15.*t16.*1.075e+4;
t222 = t2.*t15.*t16.*2.15e+4;
t225 = t3.*t15.*t16.*1.075e+4;
t226 = t3.*t15.*t16.*2.15e+4;
t229 = t8.*t12.*t16.*8.0e+2;
t230 = t8.*t12.*t16.*3.2e+3;
t231 = t7.*t14.*t16.*3.2e+3;
t232 = t7.*t8.*t17.*5.12e+4;
t233 = t7.*t14.*t15.*8.0e+2;
t234 = t8.*t12.*t15.*3.2e+3;
t235 = t7.*t14.*t15.*3.2e+3;
t236 = t7.*t8.*t18.*5.12e+4;
t248 = t5.*t12.*t15.*5.547e+4;
t249 = t6.*t12.*t16.*5.547e+4;
t250 = t5.*t14.*t16.*5.547e+4;
t253 = t6.*t12.*t15.*5.547e+4;
t254 = t5.*t14.*t15.*5.547e+4;
t255 = t6.*t14.*t16.*5.547e+4;
t256 = -t223;
t257 = t7.*t12.*t16.*3.2e+4;
t259 = t7.*t12.*t15.*1.6e+4;
t260 = t7.*t14.*t16.*1.6e+4;
t261 = t7.*t12.*t15.*3.2e+4;
t262 = t8.*t12.*t16.*3.2e+4;
t263 = t7.*t14.*t16.*3.2e+4;
t265 = t8.*t12.*t15.*1.6e+4;
t266 = t8.*t14.*t16.*1.6e+4;
t267 = t8.*t12.*t15.*3.2e+4;
t268 = t7.*t14.*t15.*3.2e+4;
t269 = t8.*t14.*t16.*3.2e+4;
t270 = t2.*t3.*t12.*t15.*5.547e+4;
t271 = t2.*t3.*t14.*t16.*5.547e+4;
t275 = -t238;
t276 = t8.*t14.*t15.*3.2e+4;
t277 = t7.*t15.*t16.*2.0e+4;
t278 = t7.*t15.*t16.*4.0e+4;
t282 = t8.*t15.*t16.*2.0e+4;
t283 = t8.*t15.*t16.*4.0e+4;
t289 = t12.*t14.*t16.*6.4e+3;
t291 = t12.*t14.*t15.*6.4e+3;
t294 = t2.*t3.*t12.*t16.*1.1094e+5;
t298 = t2.*t3.*t14.*t15.*1.1094e+5;
t299 = t12.*t15.*t16.*2.5e+2;
t300 = t14.*t15.*t16.*2.5e+2;
t304 = t11.*t12.*t15.*6.4e+4;
t305 = t10.*t14.*t15.*6.4e+4;
t306 = t11.*t14.*t16.*6.4e+4;
t307 = -t279;
t308 = -t280;
t309 = t2.*t3.*t15.*t16.*9.245e+4;
t311 = t3.*t7.*t12.*t15.*3.44e+4;
t312 = t2.*t8.*t12.*t15.*3.44e+4;
t313 = t3.*t7.*t14.*t16.*3.44e+4;
t314 = t2.*t8.*t14.*t16.*3.44e+4;
t315 = -t290;
t316 = t5.*t15.*t16.*9.245e+4;
t317 = t6.*t15.*t16.*9.245e+4;
t319 = t12.*t15.*t16.*8.0e+3;
t322 = t10.*t12.*t15.*6.4e+4;
t323 = t11.*t12.*t16.*6.4e+4;
t324 = t10.*t14.*t16.*6.4e+4;
t325 = t14.*t15.*t16.*8.0e+3;
t326 = -t301;
t329 = t2.*t7.*t12.*t15.*6.88e+4;
t330 = t3.*t7.*t12.*t16.*6.88e+4;
t331 = t2.*t8.*t12.*t16.*6.88e+4;
t332 = t2.*t7.*t14.*t16.*6.88e+4;
t337 = t2.*t7.*t14.*t15.*6.88e+4;
t338 = t3.*t8.*t12.*t16.*6.88e+4;
t339 = t3.*t8.*t12.*t15.*6.88e+4;
t340 = t3.*t7.*t14.*t15.*6.88e+4;
t341 = t2.*t8.*t14.*t15.*6.88e+4;
t342 = t3.*t8.*t14.*t16.*6.88e+4;
t345 = t12.*t15.*t16.*1.0e+4;
t346 = t3.*t7.*t15.*t16.*6.45e+4;
t347 = t2.*t8.*t15.*t16.*6.45e+4;
t350 = t14.*t15.*t16.*1.0e+4;
t351 = t7.*t8.*t12.*t15.*6.4e+4;
t352 = t7.*t8.*t14.*t16.*6.4e+4;
t353 = t10.*t15.*t16.*1.2e+5;
t356 = t11.*t15.*t16.*1.2e+5;
t359 = -t344;
t360 = t2.*t7.*t15.*t16.*1.29e+5;
t365 = t3.*t8.*t15.*t16.*1.29e+5;
t366 = t7.*t8.*t12.*t16.*1.28e+5;
t369 = t7.*t8.*t14.*t15.*1.28e+5;
t377 = t7.*t8.*t15.*t16.*1.2e+5;
t378 = t2.*t12.*t15.*t16.*-2.15e+4;
t379 = t3.*t12.*t15.*t16.*-2.15e+4;
t380 = t2.*t14.*t15.*t16.*-2.15e+4;
t386 = t7.*t12.*t15.*t16.*-4.0e+4;
t387 = t8.*t12.*t15.*t16.*-4.0e+4;
t388 = t7.*t14.*t15.*t16.*-4.0e+4;
t389 = t12.*t14.*t15.*t16.*8.0e+4;
t37 = -t23;
t38 = -t24;
t39 = -t25;
t40 = -t26;
t41 = t3.*t19.*1.075e+3;
t42 = t2.*t20.*1.075e+3;
t43 = t3.*t19.*2.15e+3;
t44 = t2.*t20.*2.15e+3;
t56 = t2.*t19.*1.075e+4;
t61 = t3.*t19.*1.075e+4;
t62 = t2.*t20.*1.075e+4;
t64 = t3.*t20.*1.075e+4;
t65 = -t47;
t66 = -t48;
t70 = -t49;
t71 = -t50;
t73 = t8.*t19.*7.5e+2;
t74 = t7.*t20.*7.5e+2;
t75 = t8.*t19.*4.0e+3;
t76 = t7.*t20.*4.0e+3;
t101 = -t69;
t102 = t14.*t19.*2.5e+2;
t103 = t12.*t20.*2.5e+2;
t106 = t7.*t19.*2.0e+4;
t112 = t8.*t19.*2.0e+4;
t113 = t7.*t20.*2.0e+4;
t114 = t8.*t19.*3.0e+4;
t115 = t7.*t20.*3.0e+4;
t118 = t8.*t20.*2.0e+4;
t126 = -t97;
t127 = -t98;
t128 = t6.*t19.*4.6225e+4;
t129 = t5.*t20.*4.6225e+4;
t136 = t14.*t19.*8.0e+3;
t137 = t12.*t20.*8.0e+3;
t148 = t2.*t3.*t19.*9.245e+4;
t149 = t2.*t3.*t20.*9.245e+4;
t168 = -t120;
t169 = -t121;
t170 = -t123;
t171 = -t124;
t176 = t3.*t7.*t19.*6.45e+4;
t177 = t2.*t8.*t19.*6.45e+4;
t178 = t2.*t7.*t20.*6.45e+4;
t180 = t14.*t19.*1.0e+4;
t181 = t12.*t20.*1.0e+4;
t185 = t3.*t8.*t19.*6.45e+4;
t186 = t3.*t7.*t20.*6.45e+4;
t187 = t2.*t8.*t20.*6.45e+4;
t196 = -t152;
t204 = t11.*t19.*6.0e+4;
t205 = t10.*t20.*6.0e+4;
t207 = -t160;
t214 = -t166;
t215 = -t167;
t224 = -t175;
t237 = -t192;
t239 = -t195;
t241 = -t200;
t242 = -t202;
t243 = -t203;
t244 = -t211;
t245 = -t213;
t246 = t2.*t14.*t19.*2.15e+4;
t247 = t2.*t12.*t20.*2.15e+4;
t251 = t3.*t14.*t19.*2.15e+4;
t252 = t3.*t12.*t20.*2.15e+4;
t258 = -t229;
t264 = -t233;
t272 = t17.*t20.*4.0e+4;
t273 = t18.*t19.*4.0e+4;
t274 = -t236;
t281 = t7.*t8.*t19.*1.2e+5;
t285 = t7.*t8.*t20.*1.2e+5;
t286 = -t248;
t287 = -t250;
t293 = -t262;
t295 = -t268;
t296 = -t270;
t297 = -t271;
t302 = t8.*t14.*t19.*4.0e+4;
t303 = t8.*t12.*t20.*4.0e+4;
t318 = -t298;
t320 = t7.*t14.*t19.*4.0e+4;
t321 = t7.*t12.*t20.*4.0e+4;
t328 = -t309;
t333 = -t311;
t334 = -t312;
t335 = -t313;
t336 = -t314;
t343 = -t316;
t348 = -t322;
t349 = -t324;
t354 = -t329;
t355 = -t332;
t357 = -t340;
t358 = -t341;
t361 = -t345;
t362 = -t346;
t363 = -t347;
t364 = -t350;
t367 = -t351;
t368 = -t352;
t370 = -t353;
t371 = t12.*t222;
t372 = t12.*t226;
t373 = t14.*t222;
t374 = -t360;
t375 = t14.*t226;
t376 = -t369;
t381 = t12.*t278;
t382 = t12.*t283;
t383 = t14.*t278;
t384 = t14.*t283;
t385 = -t377;
t390 = -t389;
t57 = -t41;
t58 = -t42;
t87 = -t61;
t88 = -t62;
t108 = -t73;
t109 = -t74;
t132 = -t102;
t133 = -t103;
t146 = -t112;
t147 = -t113;
t191 = -t149;
t227 = -t186;
t228 = -t187;
t288 = -t252;
t310 = -t285;
t327 = -t303;
t395 = t32+t33+t84+t85+t116+t128+t129+t142+t143+t155+t159+t164+t165+t174+t178+t184+t185+t188+t189+t204+t205+t242+t243+t247+t249+t251+t254+t256+t272+t273+t296+t297+t302+t305+t307+t308+t321+t323+t328+t333+t334+t335+t336+t337+t338+t359+t362+t363+t367+t368+t379+t380+t385+t387+t388+t390;
t391 = t28+t39+t45+t59+t70+t77+t78+t79+t87+t96+t104+t110+t122+t126+t146+t168+t169+t173+t180+t197+t198+t217+t221+t237+t241+t259+t260+t277+t293+t361;
t392 = t27+t40+t46+t60+t71+t81+t82+t83+t88+t95+t107+t111+t125+t127+t147+t170+t171+t181+t182+t208+t209+t219+t225+t239+t244+t265+t266+t282+t295+t364;
t393 = t21+t22+t34+t40+t50+t53+t54+t55+t56+t72+t88+t91+t92+t105+t106+t119+t123+t124+t127+t138+t144+t147+t181+t193+t195+t210+t212+t220+t226+t244+t257+t267+t269+t283+t295+t364;
t394 = t29+t30+t31+t39+t49+t51+t52+t63+t64+t67+t68+t86+t87+t100+t117+t118+t120+t121+t126+t130+t139+t146+t180+t192+t199+t201+t216+t218+t222+t241+t261+t263+t276+t278+t293+t361;
t396 = 1.0./t395;
t398 = t99+t101+t131+t148+t157+t158+t163+t176+t177+t183+t190+t191+t194+t206+t214+t215+t224+t227+t228+t232+t240+t245+t246+t253+t255+t274+t275+t281+t284+t286+t287+t288+t292+t294+t304+t306+t310+t315+t317+t318+t320+t326+t327+t330+t331+t339+t342+t343+t348+t349+t354+t355+t356+t357+t358+t365+t366+t370+t374+t375+t376+t378+t384+t386;
t397 = t396.^2;
t399 = t394.*t396.*(5.0./2.0);
t400 = t393.*t396.*(5.0./2.0);
t401 = -t399;
t402 = -t400;
t403 = t397.*(t25-t28+t31+t49+t51+t52-t59+t61-t79-t96+t97-t104-t110+t112+t120+t121-t122+t130-t180+t192-t197-t198+t200-t217-t221-t259-t260+t262-t277+t345).*(t69-t99-t131+t145-t148+t149+t156-t157-t158-t163+t166+t167+t175-t176-t177-t183+t186+t187-t194+t213-t232+t236+t238-t240-t246+t248+t250+t252-t253-t255-t281-t284+t285+t290-t292-t294+t298+t301+t303-t304-t306+t316-t317-t320+t322+t324+t329-t330-t331+t332-t339+t340+t341-t342+t353-t356+t360-t365-t366+t369+t371+t381-t3.*t14.*t15.*t16.*2.15e+4-t8.*t14.*t15.*t16.*4.0e+4).*(5.0./2.0);
t404 = t397.*(t26-t27+t34+t50+t53+t54-t60+t62-t83-t95+t98-t107-t111+t113+t123+t124-t125+t138-t181+t195-t208-t209+t211-t219-t225-t265-t266+t268-t282+t350).*(t69-t99-t131+t145-t148+t149+t156-t157-t158-t163+t166+t167+t175-t176-t177-t183+t186+t187-t194+t213-t232+t236+t238-t240-t246+t248+t250+t252-t253-t255-t281-t284+t285+t290-t292-t294+t298+t301+t303-t304-t306+t316-t317-t320+t322+t324+t329-t330-t331+t332-t339+t340+t341-t342+t353-t356+t360-t365-t366+t369+t371+t381-t3.*t14.*t15.*t16.*2.15e+4-t8.*t14.*t15.*t16.*4.0e+4).*(5.0./2.0);
t405 = -t403;
t406 = t401+t404;
t407 = t402+t405;
dMext_heel_dx3 = reshape([t396.*(t38+t58+t66+t109+t133+t179+t207+t264+t300+t2.*t17.*5.16e+2+t2.*t19.*1.075e+3+t7.*t17.*3.2e+2+t7.*t19.*7.5e+2+t2.*t7.*t12.*1.72e+2-t2.*t8.*t14.*1.72e+2+t3.*t7.*t14.*3.44e+2+t2.*t7.*t16.*2.15e+2-t2.*t8.*t15.*2.15e+2+t3.*t7.*t15.*4.3e+2+t3.*t12.*t14.*1.032e+3+t2.*t12.*t16.*1.29e+3+t3.*t12.*t15.*1.29e+3+t3.*t14.*t16.*1.29e+3+t8.*t12.*t14.*6.4e+2+t7.*t12.*t16.*8.0e+2+t8.*t12.*t15.*8.0e+2+t8.*t14.*t16.*8.0e+2+t8.*t15.*t16.*1.5e+3).*1.0e+2-t397.*(t37+t57+t65+t108+t132+t196+t258+t299-t3.*t10.*1.72e+2+t2.*t7.*t8.*1.72e+2+t2.*t8.*t12.*1.72e+2-t3.*t7.*t12.*3.44e+2+t2.*t7.*t14.*1.72e+2+t2.*t7.*t15.*2.15e+2+t2.*t8.*t16.*2.15e+2-t3.*t7.*t16.*4.3e+2+t2.*t12.*t14.*5.16e+2+t2.*t12.*t15.*6.45e+2+t2.*t14.*t16.*6.45e+2+t2.*t15.*t16.*1.075e+3+t7.*t12.*t14.*3.2e+2+t7.*t12.*t15.*4.0e+2+t7.*t14.*t16.*4.0e+2+t7.*t15.*t16.*7.5e+2).*(t69-t99-t131+t145-t148+t149+t156-t157-t158-t163+t166+t167+t175-t176-t177-t183+t186+t187-t194+t213-t232+t236+t238-t240-t246+t248+t250+t252-t253-t255-t281-t284+t285+t290-t292-t294+t298+t301+t303-t304-t306+t316-t317-t320+t322+t324+t329-t330-t331+t332-t339+t340+t341-t342+t353-t356+t360-t365-t366+t369+t371+t381-t3.*t14.*t15.*t16.*2.15e+4-t8.*t14.*t15.*t16.*4.0e+4).*1.0e+2,t396.*(t37+t57+t65+t108+t132+t172+t196+t258+t299+t3.*t18.*5.16e+2+t3.*t20.*1.075e+3+t8.*t18.*3.2e+2+t8.*t20.*7.5e+2+t2.*t8.*t12.*3.44e+2-t3.*t7.*t12.*1.72e+2+t3.*t8.*t14.*1.72e+2+t2.*t8.*t16.*4.3e+2-t3.*t7.*t16.*2.15e+2+t3.*t8.*t15.*2.15e+2+t2.*t12.*t14.*1.032e+3+t2.*t12.*t15.*1.29e+3+t2.*t14.*t16.*1.29e+3+t3.*t14.*t15.*1.29e+3+t7.*t12.*t14.*6.4e+2+t7.*t12.*t15.*8.0e+2+t7.*t14.*t16.*8.0e+2+t8.*t14.*t15.*8.0e+2+t7.*t15.*t16.*1.5e+3).*1.0e+2+t397.*(t38+t58+t66+t109+t133+t207+t264+t300-t2.*t11.*1.72e+2+t3.*t7.*t8.*1.72e+2+t3.*t8.*t12.*1.72e+2-t2.*t8.*t14.*3.44e+2+t3.*t7.*t14.*1.72e+2-t2.*t8.*t15.*4.3e+2+t3.*t7.*t15.*2.15e+2+t3.*t8.*t16.*2.15e+2+t3.*t12.*t14.*5.16e+2+t3.*t12.*t15.*6.45e+2+t3.*t14.*t16.*6.45e+2+t3.*t15.*t16.*1.075e+3+t8.*t12.*t14.*3.2e+2+t8.*t12.*t15.*4.0e+2+t8.*t14.*t16.*4.0e+2+t8.*t15.*t16.*7.5e+2).*(t69-t99-t131+t145-t148+t149+t156-t157-t158-t163+t166+t167+t175-t176-t177-t183+t186+t187-t194+t213-t232+t236+t238-t240-t246+t248+t250+t252-t253-t255-t281-t284+t285+t290-t292-t294+t298+t301+t303-t304-t306+t316-t317-t320+t322+t324+t329-t330-t331+t332-t339+t340+t341-t342+t353-t356+t360-t365-t366+t369+t371+t381-t3.*t14.*t15.*t16.*2.15e+4-t8.*t14.*t15.*t16.*4.0e+4).*1.0e+2,t396.*(t21+t22+t34+t40+t50+t55+t56+t82+t88-t92+t98+t115+t144+t171+t181+t193+t210+t212-t220+t226+t244-t257-t267+t268-t269+t364-t7.*t19.*3.0e+4+t2.*t7.*t12.*6.88e+3+t3.*t7.*t14.*1.376e+4+t2.*t7.*t16.*8.6e+3+t3.*t7.*t15.*1.72e+4-t8.*t15.*t16.*6.0e+4).*(-5.0./2.0)+t397.*(t28+t39+t45+t52+t59+t70+t87+t97+t104+t114+t121+t180+t197+t198-t217+t221+t241-t259-t260+t262+t361-t3.*t10.*6.88e+3+t5.*t8.*7.396e+3-t2.*t3.*t7.*7.396e+3+t2.*t7.*t8.*6.88e+3-t3.*t7.*t12.*1.376e+4+t2.*t7.*t14.*6.88e+3+t2.*t7.*t15.*8.6e+3-t3.*t7.*t16.*1.72e+4-t7.*t15.*t16.*3.0e+4).*(t69-t99-t131+t145-t148+t149+t156-t157-t158-t163+t166+t167+t175-t176-t177-t183+t186+t187-t194+t213-t232+t236+t238-t240-t246+t248+t250+t252-t253-t255-t281-t284+t285+t290-t292-t294+t298+t301+t303-t304-t306+t316-t317-t320+t322+t324+t329-t330-t331+t332-t339+t340+t341-t342+t353-t356+t360-t365-t366+t369+t371+t381-t3.*t14.*t15.*t16.*2.15e+4-t8.*t14.*t15.*t16.*4.0e+4).*(5.0./2.0),t396.*(t29+t30+t31+t39+t49+t63+t64-t68+t77+t87+t97+t114+t139+t168+t180+t199+t201+t216-t218+t222+t241-t261+t262-t263-t276+t361-t8.*t20.*3.0e+4+t2.*t8.*t12.*1.376e+4+t3.*t8.*t14.*6.88e+3+t2.*t8.*t16.*1.72e+4+t3.*t8.*t15.*8.6e+3-t7.*t15.*t16.*6.0e+4).*(-5.0./2.0)-t397.*(t27+t40+t46+t53+t60+t71+t88+t98+t107+t115+t123+t181+t208+t209-t219+t225+t244-t265-t266+t268+t364-t2.*t11.*6.88e+3+t6.*t7.*7.396e+3-t2.*t3.*t8.*7.396e+3+t3.*t7.*t8.*6.88e+3+t3.*t8.*t12.*6.88e+3-t2.*t8.*t14.*1.376e+4-t2.*t8.*t15.*1.72e+4+t3.*t8.*t16.*8.6e+3-t8.*t15.*t16.*3.0e+4).*(t69-t99-t131+t145-t148+t149+t156-t157-t158-t163+t166+t167+t175-t176-t177-t183+t186+t187-t194+t213-t232+t236+t238-t240-t246+t248+t250+t252-t253-t255-t281-t284+t285+t290-t292-t294+t298+t301+t303-t304-t306+t316-t317-t320+t322+t324+t329-t330-t331+t332-t339+t340+t341-t342+t353-t356+t360-t365-t366+t369+t371+t381-t3.*t14.*t15.*t16.*2.15e+4-t8.*t14.*t15.*t16.*4.0e+4).*(5.0./2.0),t407,t406,t407,t406,t396.*(t36-t44-t76+t93+t94+t135-t137+t151+t161-t162+t234-t235-t291+t325+t2.*t19.*2.15e+3+t5.*t16.*1.849e+3+t7.*t19.*4.0e+3+t10.*t16.*3.2e+3+t2.*t7.*t16.*3.44e+3+t2.*t12.*t16.*1.72e+3+t3.*t14.*t16.*1.72e+3+t3.*t15.*t16.*4.3e+3+t7.*t12.*t16.*3.2e+3+t8.*t14.*t16.*3.2e+3+t8.*t15.*t16.*8.0e+3).*(-2.5e+1./2.0)-t397.*(t35+t43+t75+t89+t90-t134+t136+t150+t153+t154-t172+t230+t231+t289-t319-t5.*t15.*1.849e+3-t10.*t15.*3.2e+3-t2.*t7.*t15.*3.44e+3-t2.*t12.*t15.*3.44e+3-t7.*t12.*t15.*6.4e+3-t7.*t15.*t16.*4.0e+3).*(t69-t99-t131+t145-t148+t149+t156-t157-t158-t163+t166+t167+t175-t176-t177-t183+t186+t187-t194+t213-t232+t236+t238-t240-t246+t248+t250+t252-t253-t255-t281-t284+t285+t290-t292-t294+t298+t301+t303-t304-t306+t316-t317-t320+t322+t324+t329-t330-t331+t332-t339+t340+t341-t342+t353-t356+t360-t365-t366+t369+t371+t381-t3.*t14.*t15.*t16.*2.15e+4-t8.*t14.*t15.*t16.*4.0e+4).*(2.5e+1./2.0),t396.*(t35-t43-t75+t89+t90+t134-t136+t150-t153+t154-t230+t231-t289+t319+t6.*t15.*1.849e+3+t3.*t20.*2.15e+3+t11.*t15.*3.2e+3+t8.*t20.*4.0e+3+t3.*t8.*t15.*3.44e+3+t2.*t12.*t15.*1.72e+3+t3.*t14.*t15.*1.72e+3+t2.*t15.*t16.*4.3e+3+t7.*t12.*t15.*3.2e+3+t8.*t14.*t15.*3.2e+3+t7.*t15.*t16.*8.0e+3).*(-2.5e+1./2.0)+t397.*(t36+t44+t76+t93+t94-t135+t137+t151+t161+t162-t179+t234+t235+t291-t325-t6.*t16.*1.849e+3-t11.*t16.*3.2e+3-t3.*t8.*t16.*3.44e+3-t3.*t14.*t16.*3.44e+3-t8.*t14.*t16.*6.4e+3-t8.*t15.*t16.*4.0e+3).*(t69-t99-t131+t145-t148+t149+t156-t157-t158-t163+t166+t167+t175-t176-t177-t183+t186+t187-t194+t213-t232+t236+t238-t240-t246+t248+t250+t252-t253-t255-t281-t284+t285+t290-t292-t294+t298+t301+t303-t304-t306+t316-t317-t320+t322+t324+t329-t330-t331+t332-t339+t340+t341-t342+t353-t356+t360-t365-t366+t369+t371+t381-t3.*t14.*t15.*t16.*2.15e+4-t8.*t14.*t15.*t16.*4.0e+4).*(2.5e+1./2.0),0.0,0.0],[2,6]);
