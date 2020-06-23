function dV_dx = dV_dx(q2,q3,q4,q5,q6,qd1,qd2,qd3,qd4,qd5,qd6)
%DV_DX
%    DV_DX = DV_DX(Q2,Q3,Q4,Q5,Q6,QD1,QD2,QD3,QD4,QD5,QD6)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    20-Jun-2020 17:36:33

t2 = cos(q2);
t3 = cos(q3);
t4 = cos(q5);
t5 = cos(q6);
t6 = sin(q2);
t7 = sin(q3);
t8 = sin(q5);
t9 = sin(q6);
t10 = q2+q3;
t11 = q3+q4;
t12 = q5+q6;
t13 = qd1.^2;
t14 = qd2.^2;
t15 = qd3.^2;
t16 = qd4.^2;
t17 = qd5.^2;
t18 = qd6.^2;
t19 = cos(t10);
t20 = cos(t11);
t21 = cos(t12);
t22 = q4+t10;
t23 = q5+t11;
t24 = sin(t10);
t25 = sin(t11);
t26 = sin(t12);
t30 = t11+t12;
t40 = qd3.*t7.*1.514284177462349e+1;
t42 = t3.*t15.*7.571420887311746;
t43 = qd1.*t6.*2.327631569418914e+1;
t44 = qd2.*t6.*2.327631569418914e+1;
t46 = qd1.*t9.*1.09078504542792e-1;
t47 = qd2.*t9.*1.09078504542792e-1;
t48 = qd3.*t9.*1.09078504542792e-1;
t49 = qd4.*t9.*1.09078504542792e-1;
t50 = qd5.*t9.*1.09078504542792e-1;
t51 = qd6.*t9.*1.09078504542792e-1;
t53 = qd1.*qd6.*t5.*1.09078504542792e-1;
t54 = qd2.*qd6.*t5.*1.09078504542792e-1;
t55 = qd3.*qd6.*t5.*1.09078504542792e-1;
t56 = qd4.*qd6.*t5.*1.09078504542792e-1;
t57 = qd5.*qd6.*t5.*1.09078504542792e-1;
t58 = qd1.*t7.*1.514284177462349e+1;
t59 = qd2.*t7.*1.514284177462349e+1;
t60 = qd3.*t7.*1.514284177462349e+1;
t61 = qd1.*t8.*9.647505289768104e-1;
t62 = qd2.*t8.*9.647505289768104e-1;
t63 = qd3.*t8.*9.647505289768104e-1;
t64 = qd4.*t8.*9.647505289768104e-1;
t65 = qd5.*t8.*9.647505289768104e-1;
t89 = qd1.*qd3.*t3.*1.514284177462349e+1;
t90 = qd2.*qd3.*t3.*1.514284177462349e+1;
t91 = qd1.*qd5.*t4.*9.647505289768104e-1;
t92 = qd2.*qd5.*t4.*9.647505289768104e-1;
t93 = qd3.*qd5.*t4.*9.647505289768104e-1;
t94 = qd4.*qd5.*t4.*9.647505289768104e-1;
t95 = t5.*t18.*5.4539252271396e-2;
t103 = t4.*t17.*4.823752644884052e-1;
t27 = cos(t22);
t28 = cos(t23);
t29 = q5+t22;
t31 = sin(t22);
t32 = sin(t23);
t34 = cos(t30);
t35 = t12+t22;
t37 = sin(t30);
t41 = -t40;
t45 = qd1.*t24.*1.564440873732369e+1;
t52 = -t42;
t66 = -t44;
t67 = -t46;
t68 = -t47;
t69 = -t48;
t70 = -t49;
t71 = -t50;
t72 = -t51;
t73 = -t53;
t74 = -t54;
t75 = -t55;
t76 = -t56;
t77 = -t57;
t78 = -t58;
t79 = -t59;
t80 = -t60;
t81 = -t61;
t82 = -t62;
t83 = -t63;
t84 = -t64;
t85 = -t65;
t86 = qd1.*t24.*1.564440873732369e+1;
t87 = qd2.*t24.*1.564440873732369e+1;
t88 = qd3.*t24.*1.564440873732369e+1;
t96 = qd1.*t25.*3.404826678658597;
t97 = qd2.*t25.*3.404826678658597;
t98 = qd3.*t25.*3.404826678658597;
t99 = qd4.*t25.*3.404826678658597;
t104 = -t89;
t105 = -t90;
t106 = -t91;
t107 = -t92;
t108 = -t93;
t109 = -t94;
t110 = t13.*t19.*7.822204368661843;
t111 = t14.*t19.*7.822204368661843;
t112 = t15.*t19.*7.822204368661843;
t113 = qd1.*qd2.*t19.*1.564440873732369e+1;
t114 = qd1.*qd3.*t19.*1.564440873732369e+1;
t115 = qd2.*qd3.*t19.*1.564440873732369e+1;
t116 = qd1.*t25.*3.404826678658596;
t117 = qd2.*t25.*3.404826678658596;
t118 = qd3.*t25.*3.404826678658596;
t119 = qd4.*t25.*3.404826678658596;
t120 = -t95;
t131 = -t103;
t132 = qd1.*qd2.*t20.*3.404826678658597;
t133 = qd1.*qd3.*t20.*3.404826678658597;
t134 = qd1.*qd4.*t20.*3.404826678658597;
t135 = qd2.*qd3.*t20.*3.404826678658597;
t136 = qd2.*qd4.*t20.*3.404826678658597;
t137 = qd3.*qd4.*t20.*3.404826678658597;
t160 = t13.*t20.*1.702413339329298;
t161 = t14.*t20.*1.702413339329298;
t162 = t15.*t20.*1.702413339329298;
t163 = t16.*t20.*1.702413339329298;
t164 = qd1.*t26.*1.055813973565752e-1;
t165 = qd2.*t26.*1.055813973565752e-1;
t166 = qd1.*t26.*1.055813973565752e-1;
t167 = qd3.*t26.*1.055813973565752e-1;
t168 = qd2.*t26.*1.055813973565752e-1;
t169 = qd4.*t26.*1.055813973565752e-1;
t170 = qd3.*t26.*1.055813973565752e-1;
t171 = qd5.*t26.*1.055813973565752e-1;
t172 = qd4.*t26.*1.055813973565752e-1;
t173 = qd6.*t26.*1.055813973565752e-1;
t174 = qd5.*t26.*1.055813973565752e-1;
t175 = qd6.*t26.*1.055813973565752e-1;
t256 = qd1.*qd2.*t21.*1.055813973565752e-1;
t257 = qd1.*qd3.*t21.*1.055813973565752e-1;
t258 = qd1.*qd4.*t21.*1.055813973565752e-1;
t259 = qd2.*qd3.*t21.*1.055813973565752e-1;
t260 = qd1.*qd5.*t21.*1.055813973565752e-1;
t261 = qd2.*qd4.*t21.*1.055813973565752e-1;
t262 = qd1.*qd6.*t21.*1.055813973565752e-1;
t263 = qd2.*qd5.*t21.*1.055813973565752e-1;
t264 = qd3.*qd4.*t21.*1.055813973565752e-1;
t265 = qd2.*qd6.*t21.*1.055813973565752e-1;
t266 = qd3.*qd5.*t21.*1.055813973565752e-1;
t267 = qd3.*qd6.*t21.*1.055813973565752e-1;
t268 = qd4.*qd5.*t21.*1.055813973565752e-1;
t269 = qd4.*qd6.*t21.*1.055813973565752e-1;
t270 = qd5.*qd6.*t21.*1.055813973565752e-1;
t336 = t13.*t21.*5.279069867828761e-2;
t337 = t14.*t21.*5.279069867828761e-2;
t338 = t15.*t21.*5.279069867828761e-2;
t339 = t16.*t21.*5.279069867828761e-2;
t340 = t17.*t21.*5.279069867828761e-2;
t341 = t18.*t21.*5.279069867828761e-2;
t33 = cos(t29);
t36 = sin(t29);
t38 = sin(t35);
t39 = cos(t35);
t100 = -t86;
t101 = -t87;
t102 = -t88;
t121 = qd1.*t31.*3.51760264245406;
t122 = -t96;
t123 = -t97;
t124 = -t98;
t125 = -t99;
t126 = qd1.*t32.*9.647505289768104e-1;
t127 = qd2.*t32.*9.647505289768104e-1;
t128 = qd3.*t32.*9.647505289768104e-1;
t129 = qd4.*t32.*9.647505289768104e-1;
t130 = qd5.*t32.*9.647505289768104e-1;
t138 = qd1.*t31.*3.517602642454061;
t139 = qd2.*t31.*3.517602642454061;
t140 = qd3.*t31.*3.517602642454061;
t141 = qd4.*t31.*3.517602642454061;
t142 = -t111;
t143 = -t112;
t144 = -t113;
t145 = -t114;
t146 = -t115;
t147 = -t118;
t148 = -t119;
t154 = qd1.*qd2.*t27.*3.517602642454061;
t155 = qd1.*qd3.*t27.*3.517602642454061;
t156 = qd1.*qd4.*t27.*3.517602642454061;
t157 = qd2.*qd3.*t27.*3.517602642454061;
t158 = qd2.*qd4.*t27.*3.517602642454061;
t159 = qd3.*qd4.*t27.*3.517602642454061;
t181 = -t133;
t182 = -t134;
t183 = -t135;
t184 = -t136;
t185 = -t137;
t190 = qd1.*qd2.*t28.*9.647505289768104e-1;
t191 = qd1.*qd3.*t28.*9.647505289768104e-1;
t192 = qd1.*qd4.*t28.*9.647505289768104e-1;
t193 = qd2.*qd3.*t28.*9.647505289768104e-1;
t194 = qd1.*qd5.*t28.*9.647505289768104e-1;
t195 = qd2.*qd4.*t28.*9.647505289768104e-1;
t196 = qd2.*qd5.*t28.*9.647505289768104e-1;
t197 = qd3.*qd4.*t28.*9.647505289768104e-1;
t198 = qd3.*qd5.*t28.*9.647505289768104e-1;
t199 = qd4.*qd5.*t28.*9.647505289768104e-1;
t217 = -t162;
t218 = -t163;
t234 = -t164;
t235 = -t165;
t236 = -t167;
t237 = -t169;
t238 = -t171;
t239 = -t173;
t240 = -t174;
t241 = -t175;
t252 = t13.*t27.*1.75880132122703;
t253 = t14.*t27.*1.75880132122703;
t254 = t15.*t27.*1.75880132122703;
t255 = t16.*t27.*1.75880132122703;
t271 = t13.*t28.*4.823752644884052e-1;
t272 = t14.*t28.*4.823752644884052e-1;
t273 = t15.*t28.*4.823752644884052e-1;
t274 = t16.*t28.*4.823752644884052e-1;
t275 = t17.*t28.*4.823752644884052e-1;
t291 = qd1.*t37.*1.055813973565752e-1;
t292 = qd2.*t37.*1.055813973565752e-1;
t293 = qd1.*t37.*1.055813973565752e-1;
t294 = qd3.*t37.*1.055813973565752e-1;
t295 = qd2.*t37.*1.055813973565752e-1;
t296 = qd4.*t37.*1.055813973565752e-1;
t297 = qd3.*t37.*1.055813973565752e-1;
t298 = qd5.*t37.*1.055813973565752e-1;
t299 = qd4.*t37.*1.055813973565752e-1;
t300 = qd6.*t37.*1.055813973565752e-1;
t301 = qd5.*t37.*1.055813973565752e-1;
t302 = qd6.*t37.*1.055813973565752e-1;
t342 = -t260;
t343 = -t262;
t344 = -t263;
t345 = -t265;
t346 = -t266;
t347 = -t267;
t348 = -t268;
t349 = -t269;
t350 = -t270;
t374 = qd1.*qd2.*t34.*1.055813973565752e-1;
t375 = qd1.*qd3.*t34.*1.055813973565752e-1;
t376 = qd1.*qd4.*t34.*1.055813973565752e-1;
t377 = qd2.*qd3.*t34.*1.055813973565752e-1;
t378 = qd1.*qd5.*t34.*1.055813973565752e-1;
t379 = qd2.*qd4.*t34.*1.055813973565752e-1;
t380 = qd1.*qd6.*t34.*1.055813973565752e-1;
t381 = qd2.*qd5.*t34.*1.055813973565752e-1;
t382 = qd3.*qd4.*t34.*1.055813973565752e-1;
t383 = qd2.*qd6.*t34.*1.055813973565752e-1;
t384 = qd3.*qd5.*t34.*1.055813973565752e-1;
t385 = qd3.*qd6.*t34.*1.055813973565752e-1;
t386 = qd4.*qd5.*t34.*1.055813973565752e-1;
t387 = qd4.*qd6.*t34.*1.055813973565752e-1;
t388 = qd5.*qd6.*t34.*1.055813973565752e-1;
t389 = -t340;
t390 = -t341;
t396 = t13.*t34.*5.279069867828761e-2;
t397 = t14.*t34.*5.279069867828761e-2;
t398 = t15.*t34.*5.279069867828761e-2;
t399 = t16.*t34.*5.279069867828761e-2;
t400 = t17.*t34.*5.279069867828761e-2;
t401 = t18.*t34.*5.279069867828761e-2;
t149 = qd1.*t36.*9.96705362804184e-1;
t150 = qd2.*t36.*9.96705362804184e-1;
t151 = qd3.*t36.*9.96705362804184e-1;
t152 = qd4.*t36.*9.96705362804184e-1;
t153 = qd5.*t36.*9.96705362804184e-1;
t176 = -t126;
t177 = -t127;
t178 = -t128;
t179 = -t129;
t180 = -t130;
t186 = -t138;
t187 = -t139;
t188 = -t140;
t189 = -t141;
t200 = qd1.*t38.*1.09078504542792e-1;
t201 = qd2.*t38.*1.09078504542792e-1;
t202 = qd3.*t38.*1.09078504542792e-1;
t203 = qd4.*t38.*1.09078504542792e-1;
t204 = qd5.*t38.*1.09078504542792e-1;
t205 = qd6.*t38.*1.09078504542792e-1;
t211 = -t154;
t212 = -t155;
t213 = -t156;
t214 = -t157;
t215 = -t158;
t216 = -t159;
t219 = qd1.*qd2.*t39.*1.09078504542792e-1;
t220 = qd1.*qd3.*t39.*1.09078504542792e-1;
t221 = qd1.*qd4.*t39.*1.09078504542792e-1;
t222 = qd2.*qd3.*t39.*1.09078504542792e-1;
t223 = qd1.*qd5.*t39.*1.09078504542792e-1;
t224 = qd2.*qd4.*t39.*1.09078504542792e-1;
t225 = qd1.*qd6.*t39.*1.09078504542792e-1;
t226 = qd2.*qd5.*t39.*1.09078504542792e-1;
t227 = qd3.*qd4.*t39.*1.09078504542792e-1;
t228 = qd2.*qd6.*t39.*1.09078504542792e-1;
t229 = qd3.*qd5.*t39.*1.09078504542792e-1;
t230 = qd3.*qd6.*t39.*1.09078504542792e-1;
t231 = qd4.*qd5.*t39.*1.09078504542792e-1;
t232 = qd4.*qd6.*t39.*1.09078504542792e-1;
t233 = qd5.*qd6.*t39.*1.09078504542792e-1;
t242 = qd1.*qd2.*t33.*9.96705362804184e-1;
t243 = qd1.*qd3.*t33.*9.96705362804184e-1;
t244 = qd1.*qd4.*t33.*9.96705362804184e-1;
t245 = qd2.*qd3.*t33.*9.96705362804184e-1;
t246 = qd1.*qd5.*t33.*9.96705362804184e-1;
t247 = qd2.*qd4.*t33.*9.96705362804184e-1;
t248 = qd2.*qd5.*t33.*9.96705362804184e-1;
t249 = qd3.*qd4.*t33.*9.96705362804184e-1;
t250 = qd3.*qd5.*t33.*9.96705362804184e-1;
t251 = qd4.*qd5.*t33.*9.96705362804184e-1;
t276 = -t191;
t277 = -t192;
t278 = -t193;
t279 = -t194;
t280 = -t195;
t281 = -t196;
t282 = -t197;
t283 = -t198;
t284 = -t199;
t318 = t13.*t33.*4.98352681402092e-1;
t319 = t14.*t33.*4.98352681402092e-1;
t320 = t15.*t33.*4.98352681402092e-1;
t321 = t16.*t33.*4.98352681402092e-1;
t322 = t17.*t33.*4.98352681402092e-1;
t333 = -t253;
t334 = -t254;
t335 = -t255;
t351 = -t273;
t352 = -t274;
t353 = -t275;
t354 = t13.*t39.*5.4539252271396e-2;
t355 = t14.*t39.*5.4539252271396e-2;
t356 = t15.*t39.*5.4539252271396e-2;
t357 = t16.*t39.*5.4539252271396e-2;
t358 = t17.*t39.*5.4539252271396e-2;
t359 = t18.*t39.*5.4539252271396e-2;
t360 = -t291;
t361 = -t292;
t362 = -t294;
t363 = -t296;
t364 = -t297;
t365 = -t298;
t366 = -t299;
t367 = -t300;
t368 = -t301;
t369 = -t302;
t402 = -t375;
t403 = -t376;
t404 = -t377;
t405 = -t378;
t406 = -t379;
t407 = -t380;
t408 = -t381;
t409 = -t382;
t410 = -t383;
t411 = -t384;
t412 = -t385;
t413 = -t386;
t414 = -t387;
t415 = -t388;
t416 = -t398;
t417 = -t399;
t418 = -t400;
t419 = -t401;
t420 = t72+t85+t238+t239;
t423 = t67+t68+t69+t70+t71+t72+t234+t235+t236+t237+t238+t241;
t424 = t72+t81+t82+t83+t84+t85+t234+t235+t236+t237+t239+t240;
t206 = -t149;
t207 = -t150;
t208 = -t151;
t209 = -t152;
t210 = -t153;
t285 = -t200;
t286 = -t201;
t287 = -t202;
t288 = -t203;
t289 = -t204;
t290 = -t205;
t303 = -t219;
t304 = -t220;
t305 = -t221;
t306 = -t222;
t307 = -t223;
t308 = -t224;
t309 = -t225;
t310 = -t226;
t311 = -t227;
t312 = -t228;
t313 = -t229;
t314 = -t230;
t315 = -t231;
t316 = -t232;
t317 = -t233;
t323 = -t242;
t324 = -t243;
t325 = -t244;
t326 = -t245;
t327 = -t246;
t328 = -t247;
t329 = -t248;
t330 = -t249;
t331 = -t250;
t332 = -t251;
t370 = -t319;
t371 = -t320;
t372 = -t321;
t373 = -t322;
t391 = -t355;
t392 = -t356;
t393 = -t357;
t394 = -t358;
t395 = -t359;
t421 = t354+t374+t396+t397;
t422 = t190+t271+t272+t318+t421;
t426 = t73+t74+t75+t76+t77+t120+t342+t343+t344+t345+t346+t347+t348+t349+t350+t389+t390+t421;
t425 = t132+t160+t161+t252+t422;
t427 = t106+t107+t108+t109+t131+t342+t343+t344+t345+t346+t347+t348+t349+t350+t389+t390+t422;
dV_dx = reshape([0.0,t142+t143+t144+t145+t146+t211+t212+t213+t214+t215+t216+t303+t304+t305+t306+t307+t308+t309+t310+t311+t312+t313+t314+t315+t316+t317+t323+t324+t325+t326+t327+t328+t329+t330+t331+t332+t333+t334+t335+t370+t371+t372+t373+t391+t392+t393+t394+t395-t2.*t14.*1.163815784709457e+1-qd1.*qd2.*t2.*2.327631569418914e+1,t52+t104+t105+t142+t143+t144+t145+t146+t181+t182+t183+t184+t185+t211+t212+t213+t214+t215+t216+t217+t218+t276+t277+t278+t279+t280+t281+t282+t283+t284+t303+t304+t305+t306+t307+t308+t309+t310+t311+t312+t313+t314+t315+t316+t317+t323+t324+t325+t326+t327+t328+t329+t330+t331+t332+t333+t334+t335+t351+t352+t353+t370+t371+t372+t373+t391+t392+t393+t394+t395+t402+t403+t404+t405+t406+t407+t408+t409+t410+t411+t412+t413+t414+t415+t416+t417+t418+t419,t181+t182+t183+t184+t185+t211+t212+t213+t214+t215+t216+t217+t218+t276+t277+t278+t279+t280+t281+t282+t283+t284+t303+t304+t305+t306+t307+t308+t309+t310+t311+t312+t313+t314+t315+t316+t317+t323+t324+t325+t326+t327+t328+t329+t330+t331+t332+t333+t334+t335+t351+t352+t353+t370+t371+t372+t373+t391+t392+t393+t394+t395+t402+t403+t404+t405+t406+t407+t408+t409+t410+t411+t412+t413+t414+t415+t416+t417+t418+t419,t106+t107+t108+t109+t131+t276+t277+t278+t279+t280+t281+t282+t283+t284+t303+t304+t305+t306+t307+t308+t309+t310+t311+t312+t313+t314+t315+t316+t317+t323+t324+t325+t326+t327+t328+t329+t330+t331+t332+t342+t343+t344+t345+t346+t347+t348+t349+t350+t351+t352+t353+t370+t371+t372+t373+t389+t390+t391+t392+t393+t394+t395+t402+t403+t404+t405+t406+t407+t408+t409+t410+t411+t412+t413+t414+t415+t416+t417+t418+t419,t73+t74+t75+t76+t77+t120+t303+t304+t305+t306+t307+t308+t309+t310+t311+t312+t313+t314+t315+t316+t317+t342+t343+t344+t345+t346+t347+t348+t349+t350+t389+t390+t391+t392+t393+t394+t395+t402+t403+t404+t405+t406+t407+t408+t409+t410+t411+t412+t413+t414+t415+t416+t417+t418+t419,t66+t80+t101+t102+t124+t125+t178+t179+t180+t187+t188+t189+t207+t208+t209+t210+t286+t287+t288+t289+t290+t362+t363+t365+t367+t420,-t43+t66+t80+t100+t102+t124+t125+t178+t179+t180+t186+t188+t189+t206+t207+t208+t209+t210+t285+t286+t287+t288+t289+t290+t362+t363+t365+t367+t420-qd2.*t24.*1.564440873732369e+1-qd2.*t31.*3.51760264245406,t41+t78+t79+t100+t101+t122+t123+t125+t147+t176+t177+t178+t179+t180+t186+t187+t189+t206+t207+t208+t209+t210+t285+t286+t287+t288+t289+t290+t360+t361+t363+t364+t365+t367+t420-qd3.*t24.*1.564440873732369e+1-qd3.*t31.*3.51760264245406,t122+t123+t124+t148+t176+t177+t178+t179+t180+t186+t187+t188+t206+t207+t208+t209+t210+t285+t286+t287+t288+t289+t290+t360+t361+t362+t365+t366+t367+t420-qd4.*t31.*3.51760264245406,t176+t177+t178+t179+t180+t206+t207+t208+t209+t210+t285+t286+t287+t288+t289+t290+t360+t361+t362+t363+t367+t368+t424,t285+t286+t287+t288+t289+t290+t360+t361+t362+t363+t365+t369+t423,0.0,t110+t252+t318+t354+t2.*t13.*1.163815784709457e+1,t52+t104+t105+t110+t181+t182+t183+t184+t185+t217+t218+t252+t276+t277+t278+t279+t280+t281+t282+t283+t284+t318+t351+t352+t353+t354+t402+t403+t404+t405+t406+t407+t408+t409+t410+t411+t412+t413+t414+t415+t416+t417+t418+t419,t181+t182+t183+t184+t185+t217+t218+t252+t276+t277+t278+t279+t280+t281+t282+t283+t284+t318+t351+t352+t353+t354+t402+t403+t404+t405+t406+t407+t408+t409+t410+t411+t412+t413+t414+t415+t416+t417+t418+t419,t106+t107+t108+t109+t131+t276+t277+t278+t279+t280+t281+t282+t283+t284+t318+t342+t343+t344+t345+t346+t347+t348+t349+t350+t351+t352+t353+t354+t389+t390+t402+t403+t404+t405+t406+t407+t408+t409+t410+t411+t412+t413+t414+t415+t416+t417+t418+t419,t73+t74+t75+t76+t77+t120+t342+t343+t344+t345+t346+t347+t348+t349+t350+t354+t389+t390+t402+t403+t404+t405+t406+t407+t408+t409+t410+t411+t412+t413+t414+t415+t416+t417+t418+t419,t43+t45+t80+t121+t124+t125+t149+t178+t179+t180+t200+t362+t363+t365+t367+t420,t80+t124+t125+t178+t179+t180+t362+t363+t365+t367+t420,t41+t78+t79+t122+t123+t125+t147+t176+t177+t178+t179+t180+t360+t361+t363+t364+t365+t367+t420,t122+t123+t124+t148+t176+t177+t178+t179+t180+t360+t361+t362+t365+t366+t367+t420,t176+t177+t178+t179+t180+t360+t361+t362+t363+t367+t368+t424,t360+t361+t362+t363+t365+t369+t423,0.0,t110+t252+t318+t354,t110+t425+t3.*t13.*7.571420887311746+t3.*t14.*7.571420887311746+qd1.*qd2.*t3.*1.514284177462349e+1,t425,t427,t426,t45+t59+t97+t116+t121+t126+t127+t149+t200+t292+t293+t420+qd1.*t7.*1.514284177462349e+1,t58+t96+t117+t126+t127+t291+t295+t420+qd2.*t7.*1.514284177462349e+1,t420,t420,t424,t423,0.0,t252+t318+t354,t425,t425,t427,t426,t97+t116+t121+t126+t127+t149+t200+t292+t293+t420,t96+t117+t126+t127+t291+t295+t420,t420,t420,t424,t423,0.0,t318+t354,t422,t422,t256+t257+t258+t259+t261+t264+t336+t337+t338+t339+t422+t4.*t13.*4.823752644884052e-1+t4.*t14.*4.823752644884052e-1+t4.*t15.*4.823752644884052e-1+t4.*t16.*4.823752644884052e-1+qd1.*qd2.*t4.*9.647505289768104e-1+qd1.*qd3.*t4.*9.647505289768104e-1+qd1.*qd4.*t4.*9.647505289768104e-1+qd2.*qd3.*t4.*9.647505289768104e-1+qd2.*qd4.*t4.*9.647505289768104e-1+qd3.*qd4.*t4.*9.647505289768104e-1,t73+t74+t75+t76+t77+t120+t256+t257+t258+t259+t261+t264+t336+t337+t338+t339+t421,t61+t62+t63+t64+t72+t126+t127+t149+t165+t166+t167+t169+t200+t292+t293,t61+t62+t63+t64+t72+t126+t127+t164+t167+t168+t169+t291+t295,t61+t62+t63+t64+t72+t164+t165+t169+t170,t61+t62+t63+t64+t72+t164+t165+t167+t172,t72,t67+t68+t69+t70+t71+t72,0.0,t354,t421,t421,t256+t257+t258+t259+t261+t264+t336+t337+t338+t339+t421,t256+t257+t258+t259+t261+t264+t336+t337+t338+t339+t421+t5.*t13.*5.4539252271396e-2+t5.*t14.*5.4539252271396e-2+t5.*t15.*5.4539252271396e-2+t5.*t16.*5.4539252271396e-2+t5.*t17.*5.4539252271396e-2+qd1.*qd2.*t5.*1.09078504542792e-1+qd1.*qd3.*t5.*1.09078504542792e-1+qd1.*qd4.*t5.*1.09078504542792e-1+qd2.*qd3.*t5.*1.09078504542792e-1+qd1.*qd5.*t5.*1.09078504542792e-1+qd2.*qd4.*t5.*1.09078504542792e-1+qd2.*qd5.*t5.*1.09078504542792e-1+qd3.*qd4.*t5.*1.09078504542792e-1+qd3.*qd5.*t5.*1.09078504542792e-1+qd4.*qd5.*t5.*1.09078504542792e-1,t46+t47+t48+t49+t50+t165+t166+t167+t169+t200+t292+t293,t46+t47+t48+t49+t50+t164+t167+t168+t169+t291+t295,t46+t47+t48+t49+t50+t164+t165+t169+t170,t46+t47+t48+t49+t50+t164+t165+t167+t172,t46+t47+t48+t49+t50,0.0],[12,6]);
