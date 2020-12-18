function dL12_dq1 = dL12_dq1(in1,in2,sampT)
%DL12_DQ1
%    DL12_DQ1 = DL12_DQ1(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    04-Dec-2020 16:31:57

q_t1 = in1(:,1);
q_t2 = in1(:,2);
q_t3 = in1(:,3);
q_t4 = in1(:,4);
q_t5 = in1(:,5);
q_t6 = in1(:,6);
qd_t1 = in2(:,1);
qd_t2 = in2(:,2);
qd_t3 = in2(:,3);
qd_t4 = in2(:,4);
qd_t5 = in2(:,5);
qd_t6 = in2(:,6);
t2 = cos(q_t1);
t3 = cos(q_t2);
t4 = cos(q_t3);
t5 = cos(q_t4);
t6 = cos(q_t5);
t7 = cos(q_t6);
t8 = sin(q_t1);
t9 = sin(q_t2);
t10 = sin(q_t3);
t11 = sin(q_t4);
t12 = sin(q_t5);
t13 = sin(q_t6);
t14 = q_t1+q_t2;
t18 = 1.0./sampT;
t15 = cos(t14);
t16 = q_t3+t14;
t17 = sin(t14);
t19 = t2.*t3;
t21 = t2.*t9;
t22 = t3.*t8;
t25 = t8.*t9;
t42 = t2.*8.287740207069301e+15;
t43 = t8.*8.287740207069301e+15;
t44 = t8.*1.65754804141386e+16;
t45 = t2.*6.630192165655441e+16;
t46 = t8.*6.630192165655441e+16;
t49 = t2.*1.65754804141386e+16;
t172 = qd_t1.*t9.*1.431115624511851;
t20 = cos(t16);
t23 = q_t4+t16;
t24 = sin(t16);
t31 = -t25;
t35 = t21+t22;
t47 = qd_t1.*t42;
t48 = qd_t1.*t43;
t50 = qd_t1.*t49;
t51 = qd_t1.*t44;
t52 = qd_t1.*t45;
t53 = t15.*8.022031431934143e+15;
t54 = qd_t1.*t46;
t55 = t17.*8.022031431934143e+15;
t56 = t17.*6.417625145547314e+16;
t63 = t15.*1.604406286386829e+16;
t64 = t17.*1.604406286386829e+16;
t65 = t15.*6.417625145547314e+16;
t182 = t21.*7.785829781134001e+1;
t183 = t22.*7.785829781134001e+1;
t26 = cos(t23);
t27 = q_t5+t23;
t28 = sin(t23);
t36 = t19+t31;
t37 = t4.*t35;
t38 = t10.*t35;
t57 = qd_t1.*t53;
t58 = qd_t2.*t53;
t59 = t20.*7.197500932690077e+15;
t60 = qd_t1.*t55;
t61 = qd_t2.*t55;
t62 = t24.*7.197500932690077e+15;
t66 = qd_t1.*t64;
t67 = qd_t2.*t64;
t69 = qd_t1.*t65;
t70 = qd_t2.*t65;
t72 = qd_t1.*t56;
t73 = qd_t2.*t56;
t80 = qd_t1.*t63;
t81 = qd_t2.*t63;
t29 = q_t6+t27;
t30 = sin(t27);
t32 = cos(t27);
t39 = t4.*t36;
t40 = t10.*t36;
t41 = -t38;
t68 = t26.*3.473539610027484e+15;
t71 = t28.*3.473539610027484e+15;
t74 = qd_t1.*t59;
t75 = qd_t2.*t59;
t76 = qd_t3.*t59;
t77 = qd_t1.*t62;
t78 = qd_t2.*t62;
t79 = qd_t3.*t62;
t82 = t26.*1.604406286386829e+16;
t83 = t28.*1.604406286386829e+16;
t90 = t26.*6.417625145547314e+16;
t95 = t28.*6.417625145547314e+16;
t155 = t53+t59;
t156 = t55+t62;
t181 = t37.*4.430017961364703e+1;
t33 = cos(t29);
t34 = sin(t29);
t84 = t32.*7.177183019322015e+15;
t85 = t30.*7.177183019322015e+15;
t86 = qd_t1.*t68;
t87 = qd_t2.*t68;
t88 = qd_t3.*t68;
t89 = qd_t4.*t68;
t91 = qd_t1.*t71;
t92 = qd_t2.*t71;
t93 = qd_t3.*t71;
t94 = qd_t4.*t71;
t96 = qd_t1.*t90;
t97 = qd_t2.*t90;
t98 = qd_t3.*t90;
t99 = qd_t4.*t90;
t100 = qd_t1.*t95;
t101 = qd_t2.*t95;
t102 = qd_t3.*t95;
t103 = qd_t4.*t95;
t104 = t32.*6.630192165655441e+16;
t105 = t30.*6.630192165655441e+16;
t107 = qd_t1.*t82;
t108 = qd_t2.*t82;
t109 = qd_t3.*t82;
t110 = qd_t4.*t82;
t112 = qd_t1.*t83;
t113 = qd_t2.*t83;
t114 = qd_t3.*t83;
t115 = qd_t4.*t83;
t148 = t37+t40;
t149 = t39+t41;
t152 = -t5.*(t38-t39);
t153 = -t11.*(t38-t39);
t157 = t53+t68;
t158 = t55+t71;
t163 = t42+t155;
t164 = t43+t156;
t167 = t74+t75+t76;
t168 = t77+t78+t79;
t184 = t40.*4.430017961364703e+1;
t194 = t11.*(t38-t39).*(-1.322519160835998e+1);
t106 = t33.*3.781624316870491e+15;
t111 = t34.*3.781624316870491e+15;
t116 = qd_t1.*t84;
t117 = qd_t2.*t84;
t118 = qd_t3.*t84;
t119 = qd_t4.*t84;
t120 = qd_t5.*t84;
t121 = qd_t1.*t85;
t122 = qd_t2.*t85;
t123 = qd_t3.*t85;
t124 = qd_t4.*t85;
t125 = qd_t5.*t85;
t138 = qd_t1.*t104;
t139 = qd_t2.*t104;
t140 = qd_t3.*t104;
t141 = qd_t4.*t104;
t142 = qd_t5.*t104;
t143 = qd_t1.*t105;
t144 = qd_t2.*t105;
t145 = qd_t3.*t105;
t146 = qd_t4.*t105;
t147 = qd_t5.*t105;
t150 = t5.*t148;
t151 = t11.*t148;
t159 = t82+t84;
t160 = t83+t85;
t165 = t42+t157;
t166 = t43+t158;
t188 = t86+t87+t88+t89;
t190 = t91+t92+t93+t94;
t191 = t28.*t158.*1.318692183023273e-16;
t192 = t26.*t157.*1.318692183023273e-16;
t195 = t60+t61+t168;
t196 = t57+t58+t167;
t126 = qd_t1.*t106;
t127 = qd_t2.*t106;
t128 = qd_t3.*t106;
t129 = qd_t4.*t106;
t130 = qd_t5.*t106;
t131 = qd_t6.*t106;
t132 = qd_t1.*t111;
t133 = qd_t2.*t111;
t134 = qd_t3.*t111;
t135 = qd_t4.*t111;
t136 = qd_t5.*t111;
t137 = qd_t6.*t111;
t154 = -t151;
t161 = t104+t106;
t162 = t105+t111;
t169 = t63+t159;
t170 = t150+t153;
t171 = t64+t160;
t178 = -t6.*(t151+t5.*(t38-t39));
t179 = -t12.*(t151+t5.*(t38-t39));
t193 = t150.*1.322519160835998e+1;
t199 = t116+t117+t118+t119+t120;
t200 = t121+t122+t123+t124+t125;
t201 = t47+t196;
t202 = t48+t195;
t204 = t57+t58+t188;
t205 = t60+t61+t190;
t206 = t12.*(t151+t5.*(t38-t39)).*(-4.479096828122213);
t215 = t158.*t188.*3.796393106376119e-32;
t216 = t157.*t190.*3.796393106376119e-32;
t173 = t152+t154;
t174 = t6.*t170;
t175 = t12.*t170;
t176 = t90+t161;
t177 = t95+t162;
t185 = t49+t169;
t186 = t44+t171;
t209 = t132+t133+t134+t135+t136+t137;
t210 = t126+t127+t128+t129+t130+t131;
t211 = t47+t204;
t212 = t48+t205;
t213 = t159.*t169.*3.81141535994234e-33;
t214 = t160.*t171.*3.81141535994234e-33;
t217 = -t215;
t218 = t28.*t204.*6.593460915116367e-17;
t219 = t26.*t205.*6.593460915116367e-17;
t223 = t156.*t201.*6.965703422859755e-32;
t225 = t155.*t202.*6.965703422859755e-32;
t234 = t107+t108+t109+t110+t199;
t235 = t112+t113+t114+t115+t200;
t241 = t188.*t204.*9.490982765940298e-33;
t242 = t190.*t205.*9.490982765940298e-33;
t180 = -t175;
t187 = t65+t176;
t189 = t56+t177;
t203 = t174.*4.479096828122213;
t207 = t174+t179;
t220 = -t218;
t224 = t26.*t212.*1.318692183023273e-16;
t226 = t28.*t211.*1.318692183023273e-16;
t228 = t26.*t212.*6.593460915116367e-17;
t229 = -t225;
t231 = t28.*t211.*6.593460915116367e-17;
t233 = t13.*(t175+t6.*(t151+t5.*(t38-t39))).*(-1.176075034015464e-1);
t236 = t158.*t211.*1.89819655318806e-32;
t237 = t157.*t212.*1.89819655318806e-32;
t239 = t80+t81+t234;
t240 = t66+t67+t235;
t243 = t143+t144+t145+t146+t147+t209;
t244 = t138+t139+t140+t141+t142+t210;
t247 = t190.*t212.*9.490982765940298e-33;
t248 = t188.*t211.*9.490982765940298e-33;
t251 = t169.*t235.*3.81141535994234e-33;
t252 = t171.*t234.*3.81141535994234e-33;
t197 = t46+t189;
t198 = t45+t187;
t208 = t178+t180;
t221 = t176.*t187.*8.799092433419184e-35;
t222 = t177.*t189.*8.799092433419184e-35;
t227 = -t224;
t230 = t7.*t207.*1.176075034015464e-1;
t232 = -t228;
t238 = -t237;
t245 = t51+t240;
t246 = t50+t239;
t249 = -t247;
t250 = -t248;
t253 = -t252;
t254 = t160.*t239.*1.90570767997117e-33;
t255 = t159.*t240.*1.90570767997117e-33;
t263 = t100+t101+t102+t103+t243;
t264 = t96+t97+t98+t99+t244;
t275 = t235.*t240.*9.528538399855849e-34;
t276 = t234.*t239.*9.528538399855849e-34;
t256 = -t254;
t257 = t159.*t245.*3.81141535994234e-33;
t258 = t160.*t246.*3.81141535994234e-33;
t260 = t159.*t245.*1.90570767997117e-33;
t261 = t160.*t246.*1.90570767997117e-33;
t265 = t169.*t245.*1.90570767997117e-33;
t266 = t171.*t246.*1.90570767997117e-33;
t268 = t69+t70+t264;
t269 = t72+t73+t263;
t272 = t187.*t263.*8.799092433419184e-35;
t273 = t189.*t264.*8.799092433419184e-35;
t280 = t234.*t246.*9.528538399855849e-34;
t281 = t235.*t245.*9.528538399855849e-34;
t259 = -t257;
t262 = -t260;
t267 = -t265;
t270 = t52+t268;
t271 = t54+t269;
t274 = -t273;
t277 = t176.*t269.*4.399546216709592e-35;
t278 = t177.*t268.*4.399546216709592e-35;
t282 = -t280;
t283 = -t281;
t293 = t263.*t269.*2.199773108354796e-35;
t294 = t264.*t268.*2.199773108354796e-35;
t279 = -t278;
t284 = t177.*t270.*4.399546216709592e-35;
t285 = t177.*t270.*8.799092433419184e-35;
t286 = t176.*t271.*4.399546216709592e-35;
t287 = t176.*t271.*8.799092433419184e-35;
t290 = t189.*t270.*4.399546216709592e-35;
t291 = t187.*t271.*4.399546216709592e-35;
t295 = t264.*t270.*2.199773108354796e-35;
t296 = t263.*t271.*2.199773108354796e-35;
t288 = -t287;
t289 = -t286;
t292 = -t291;
t297 = -t295;
t298 = -t296;
dL12_dq1 = [t181+t182+t183+t184+t193+t194+t203+t206+t230+t233+t18.*(t172+t223+t229+t236+t238+t266+t267+t290+t292+qd_t2.*t9.*7.155578122559254e-1+t163.*t195.*6.965703422859755e-32-t164.*t196.*6.965703422859755e-32+t165.*t205.*1.89819655318806e-32-t166.*t204.*1.89819655318806e-32+t185.*t240.*1.90570767997117e-33-t186.*t239.*1.90570767997117e-33-t197.*t268.*4.399546216709592e-35+t198.*t269.*4.399546216709592e-35+t18.*(t3.*1.431115624511851+t155.*t163.*1.393140684571951e-31+t156.*t164.*1.393140684571951e-31+t157.*t165.*3.796393106376119e-32+t158.*t166.*3.796393106376119e-32+t169.*t185.*3.81141535994234e-33+t171.*t186.*3.81141535994234e-33+t187.*t198.*8.799092433419184e-35+t189.*t197.*8.799092433419184e-35+8.033367227753912));t181+t182+t183+t184+t193+t194+t203+t206+t230+t233+(t18.*(t172+t155.*t195.*1.393140684571951e-31-t156.*t196.*1.393140684571951e-31-t155.*t202.*1.393140684571951e-31+t156.*t201.*1.393140684571951e-31+t157.*t205.*3.796393106376119e-32-t158.*t204.*3.796393106376119e-32-t157.*t212.*3.796393106376119e-32+t158.*t211.*3.796393106376119e-32+t169.*t240.*3.81141535994234e-33-t171.*t239.*3.81141535994234e-33-t169.*t245.*3.81141535994234e-33+t171.*t246.*3.81141535994234e-33+t187.*t269.*8.799092433419184e-35-t189.*t268.*8.799092433419184e-35-t187.*t271.*8.799092433419184e-35+t189.*t270.*8.799092433419184e-35))./2.0-t195.*t202.*3.482851711429877e-32-t196.*t201.*3.482851711429877e-32-t204.*t211.*9.490982765940298e-33-t205.*t212.*9.490982765940298e-33-t239.*t246.*9.528538399855849e-34-t240.*t245.*9.528538399855849e-34-t268.*t270.*2.199773108354796e-35-t269.*t271.*2.199773108354796e-35+t18.*(t223+t229+t236+t238+t266+t267+t290+t292+t18.*(t155.^2.*1.393140684571951e-31+t156.^2.*1.393140684571951e-31+t157.^2.*3.796393106376119e-32+t158.^2.*3.796393106376119e-32+t169.^2.*3.81141535994234e-33+t171.^2.*3.81141535994234e-33+t187.^2.*8.799092433419184e-35+t189.^2.*8.799092433419184e-35+8.033367227753912)+qd_t1.*t9.*7.155578122559254e-1+t155.*t195.*6.965703422859755e-32-t156.*t196.*6.965703422859755e-32+t157.*t205.*1.89819655318806e-32-t158.*t204.*1.89819655318806e-32+t169.*t240.*1.90570767997117e-33-t171.*t239.*1.90570767997117e-33+t187.*t269.*4.399546216709592e-35-t189.*t268.*4.399546216709592e-35)-qd_t1.^2.*t3.*3.577789061279627e-1+t195.^2.*3.482851711429877e-32+t196.^2.*3.482851711429877e-32+t204.^2.*9.490982765940298e-33+t205.^2.*9.490982765940298e-33+t239.^2.*9.528538399855849e-34+t240.^2.*9.528538399855849e-34+t268.^2.*2.199773108354796e-35+t269.^2.*2.199773108354796e-35-qd_t1.*qd_t2.*t3.*3.577789061279627e-1;t181+t184+t193+t194+t203+t206+t230+t233+t241+t242+t249+t250+t275+t276+t282+t283+t293+t294+t297+t298-(t18.*(t215-t216+t224-t226-t251+t252+t257-t258-t272+t273-t285+t287+t20.*t202.*1.002713137657511e-15-t24.*t201.*1.002713137657511e-15-t155.*t168.*1.393140684571951e-31+t156.*t167.*1.393140684571951e-31))./2.0+t167.*t196.*3.482851711429877e-32+t168.*t195.*3.482851711429877e-32-t167.*t201.*3.482851711429877e-32-t168.*t202.*3.482851711429877e-32+t18.*(t219+t220+t231+t232+t255+t256+t261+t262+t277+t279+t284+t289+t20.*t195.*5.013565688287555e-16-t24.*t196.*5.013565688287555e-16-t20.*t202.*5.013565688287555e-16+t24.*t201.*5.013565688287555e-16+t18.*(t191+t192+t213+t214+t221+t222+t20.*t155.*1.002713137657511e-15+t24.*t156.*1.002713137657511e-15+6.993054503326561));t193+t194+t203+t206+t230+t233+t241+t242+t249+t250+t275+t276+t282+t283+t293+t294+t297+t298+t18.*(t219+t220+t231+t232+t255+t256+t261+t262+t277+t279+t284+t289+t18.*(t191+t192+t213+t214+t221+t222+3.503917749462947e-1))-(t18.*(t215-t216+t224-t226-t251+t252+t257-t258-t272+t273-t285+t287))./2.0;t203+t206+t230+t233+t18.*(t18.*(t30.*t171.*2.735522560096127e-17+t32.*t169.*2.735522560096127e-17+t161.*t187.*8.799092433419184e-35+t162.*t189.*8.799092433419184e-35+9.550638675983661e-2)-t30.*t239.*1.367761280048063e-17+t32.*t240.*1.367761280048063e-17+t30.*t246.*1.367761280048063e-17-t32.*t245.*1.367761280048063e-17+t161.*t269.*4.399546216709592e-35-t162.*t268.*4.399546216709592e-35-t161.*t271.*4.399546216709592e-35+t162.*t270.*4.399546216709592e-35)+t199.*t239.*9.528538399855849e-34+t200.*t240.*9.528538399855849e-34-t199.*t246.*9.528538399855849e-34-t200.*t245.*9.528538399855849e-34+t243.*t269.*2.199773108354796e-35+t244.*t268.*2.199773108354796e-35-t243.*t271.*2.199773108354796e-35-t244.*t270.*2.199773108354796e-35+(t18.*(t30.*t246.*2.735522560096127e-17-t32.*t245.*2.735522560096127e-17+t169.*t200.*3.81141535994234e-33-t171.*t199.*3.81141535994234e-33+t187.*t243.*8.799092433419184e-35-t161.*t271.*8.799092433419184e-35+t162.*t270.*8.799092433419184e-35-t189.*t244.*8.799092433419184e-35))./2.0;t230+t233-(t18.*(t33.*t271.*3.327486191260913e-19-t34.*t270.*3.327486191260913e-19-t187.*t209.*8.799092433419184e-35+t189.*t210.*8.799092433419184e-35))./2.0+t18.*(t33.*t269.*1.663743095630456e-19-t34.*t268.*1.663743095630456e-19-t33.*t271.*1.663743095630456e-19+t34.*t270.*1.663743095630456e-19+t18.*(t33.*t187.*3.327486191260913e-19+t34.*t189.*3.327486191260913e-19))+t209.*t269.*2.199773108354796e-35+t210.*t268.*2.199773108354796e-35-t209.*t271.*2.199773108354796e-35-t210.*t270.*2.199773108354796e-35];
