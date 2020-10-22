function dL12_dq2 = dL12_dq2(in1,in2,sampT)
%DL12_DQ2
%    DL12_DQ2 = DL12_DQ2(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    17-Oct-2020 02:26:08

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
t177 = qd_t1.*t9.*1.233640254246417;
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
t61 = t15.*1.604406286386829e+16;
t62 = t17.*1.604406286386829e+16;
t63 = t15.*6.417625145547314e+16;
t170 = t21.*7.221865715169507e+1;
t171 = t22.*7.221865715169507e+1;
t26 = cos(t23);
t27 = q_t5+t23;
t28 = sin(t23);
t36 = t19+t31;
t37 = t4.*t35;
t38 = t10.*t35;
t57 = qd_t1.*t53;
t58 = qd_t2.*t53;
t59 = qd_t1.*t55;
t60 = qd_t2.*t55;
t64 = qd_t1.*t62;
t65 = qd_t2.*t62;
t67 = qd_t1.*t63;
t68 = qd_t2.*t63;
t70 = qd_t1.*t56;
t71 = qd_t2.*t56;
t72 = t20.*9.599524061417202e+15;
t73 = t24.*9.599524061417202e+15;
t74 = qd_t1.*t61;
t75 = qd_t2.*t61;
t29 = q_t6+t27;
t30 = sin(t27);
t32 = cos(t27);
t39 = t4.*t36;
t40 = t10.*t36;
t41 = -t38;
t66 = t26.*3.473539610027484e+15;
t69 = t28.*3.473539610027484e+15;
t76 = qd_t1.*t72;
t77 = qd_t2.*t72;
t78 = qd_t3.*t72;
t79 = qd_t1.*t73;
t80 = qd_t2.*t73;
t81 = qd_t3.*t73;
t82 = t26.*1.604406286386829e+16;
t83 = t28.*1.604406286386829e+16;
t90 = t26.*6.417625145547314e+16;
t95 = t28.*6.417625145547314e+16;
t155 = t55+t73;
t158 = t53+t72;
t183 = t37.*5.9084485587884e+1;
t33 = cos(t29);
t34 = sin(t29);
t84 = t32.*7.177183019322015e+15;
t85 = t30.*7.177183019322015e+15;
t86 = qd_t1.*t66;
t87 = qd_t2.*t66;
t88 = qd_t3.*t66;
t89 = qd_t4.*t66;
t91 = qd_t1.*t69;
t92 = qd_t2.*t69;
t93 = qd_t3.*t69;
t94 = qd_t4.*t69;
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
t156 = t53+t66;
t157 = t55+t69;
t163 = t42+t158;
t164 = t43+t155;
t172 = t76+t77+t78;
t173 = t79+t80+t81;
t184 = t40.*5.9084485587884e+1;
t192 = t11.*(t38-t39).*(-9.690955635804931);
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
t165 = t42+t156;
t166 = t43+t157;
t188 = t86+t87+t88+t89;
t190 = t91+t92+t93+t94;
t193 = t26.*t156.*1.136729787638568e-16;
t194 = t28.*t157.*1.136729787638568e-16;
t196 = t57+t58+t172;
t198 = t59+t60+t173;
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
t167 = t61+t159;
t168 = t150+t153;
t169 = t62+t160;
t180 = -t6.*(t151+t5.*(t38-t39));
t181 = -t12.*(t151+t5.*(t38-t39));
t191 = t150.*9.690955635804931;
t199 = t116+t117+t118+t119+t120;
t200 = t121+t122+t123+t124+t125;
t201 = t47+t196;
t202 = t48+t198;
t204 = t57+t58+t188;
t205 = t59+t60+t190;
t206 = t12.*(t151+t5.*(t38-t39)).*(-2.745912041436713);
t215 = t157.*t188.*3.272540161502791e-32;
t216 = t156.*t190.*3.272540161502791e-32;
t174 = t152+t154;
t175 = t6.*t168;
t176 = t12.*t168;
t178 = t90+t161;
t179 = t95+t162;
t185 = t49+t167;
t186 = t44+t169;
t209 = t132+t133+t134+t135+t136+t137;
t210 = t126+t127+t128+t129+t130+t131;
t211 = t47+t204;
t212 = t48+t205;
t213 = t159.*t167.*2.501782997759019e-33;
t214 = t160.*t169.*2.501782997759019e-33;
t217 = -t215;
t218 = t26.*t205.*5.683648938192842e-17;
t219 = t28.*t204.*5.683648938192842e-17;
t230 = t155.*t201.*6.965703422859755e-32;
t231 = t158.*t202.*6.965703422859755e-32;
t234 = t107+t108+t109+t110+t199;
t235 = t112+t113+t114+t115+t200;
t241 = t188.*t204.*8.181350403756978e-33;
t242 = t190.*t205.*8.181350403756978e-33;
t182 = -t176;
t187 = t63+t178;
t189 = t56+t179;
t203 = t175.*2.745912041436713;
t207 = t175+t181;
t220 = -t219;
t224 = t28.*t211.*1.136729787638568e-16;
t225 = t26.*t212.*1.136729787638568e-16;
t226 = t13.*(t176+t6.*(t151+t5.*(t38-t39))).*(-6.612405458007602e-2);
t227 = t28.*t211.*5.683648938192842e-17;
t229 = t26.*t212.*5.683648938192842e-17;
t233 = -t231;
t236 = t157.*t211.*1.636270080751396e-32;
t237 = t156.*t212.*1.636270080751396e-32;
t239 = t74+t75+t234;
t240 = t64+t65+t235;
t243 = t143+t144+t145+t146+t147+t209;
t244 = t138+t139+t140+t141+t142+t210;
t247 = t190.*t212.*8.181350403756978e-33;
t248 = t188.*t211.*8.181350403756978e-33;
t251 = t167.*t235.*2.501782997759019e-33;
t252 = t169.*t234.*2.501782997759019e-33;
t195 = t46+t189;
t197 = t45+t187;
t208 = t180+t182;
t221 = t178.*t187.*4.947232544644712e-35;
t222 = t179.*t189.*4.947232544644712e-35;
t223 = t7.*t207.*6.612405458007602e-2;
t228 = -t225;
t232 = -t229;
t238 = -t237;
t245 = t51+t240;
t246 = t50+t239;
t249 = -t247;
t250 = -t248;
t253 = -t252;
t254 = t160.*t239.*1.25089149887951e-33;
t255 = t159.*t240.*1.25089149887951e-33;
t263 = t100+t101+t102+t103+t243;
t264 = t96+t97+t98+t99+t244;
t275 = t235.*t240.*6.254457494397548e-34;
t276 = t234.*t239.*6.254457494397548e-34;
t256 = -t254;
t257 = t159.*t245.*2.501782997759019e-33;
t258 = t160.*t246.*2.501782997759019e-33;
t260 = t159.*t245.*1.25089149887951e-33;
t261 = t160.*t246.*1.25089149887951e-33;
t265 = t167.*t245.*1.25089149887951e-33;
t266 = t169.*t246.*1.25089149887951e-33;
t268 = t67+t68+t264;
t269 = t70+t71+t263;
t272 = t187.*t263.*4.947232544644712e-35;
t273 = t189.*t264.*4.947232544644712e-35;
t280 = t234.*t246.*6.254457494397548e-34;
t281 = t235.*t245.*6.254457494397548e-34;
t259 = -t257;
t262 = -t260;
t267 = -t265;
t270 = t52+t268;
t271 = t54+t269;
t274 = -t273;
t277 = t178.*t269.*2.473616272322356e-35;
t278 = t179.*t268.*2.473616272322356e-35;
t282 = -t280;
t283 = -t281;
t293 = t263.*t269.*1.236808136161178e-35;
t294 = t264.*t268.*1.236808136161178e-35;
t279 = -t278;
t284 = t179.*t270.*2.473616272322356e-35;
t285 = t179.*t270.*4.947232544644712e-35;
t286 = t178.*t271.*2.473616272322356e-35;
t287 = t178.*t271.*4.947232544644712e-35;
t290 = t189.*t270.*2.473616272322356e-35;
t291 = t187.*t271.*2.473616272322356e-35;
t295 = t264.*t270.*1.236808136161178e-35;
t296 = t263.*t271.*1.236808136161178e-35;
t288 = -t287;
t289 = -t286;
t292 = -t291;
t297 = -t295;
t298 = -t296;
dL12_dq2 = [t170+t171+t183+t184+t191+t192+t203+t206+t223+t226-t18.*(t177+t230+t233+t236+t238+t266+t267+t290+t292+qd_t2.*t9.*6.168201271232084e-1-t164.*t196.*6.965703422859755e-32+t163.*t198.*6.965703422859755e-32+t165.*t205.*1.636270080751396e-32-t166.*t204.*1.636270080751396e-32+t185.*t240.*1.25089149887951e-33-t186.*t239.*1.25089149887951e-33-t195.*t268.*2.473616272322356e-35+t197.*t269.*2.473616272322356e-35+t18.*(t3.*1.233640254246417+t155.*t164.*1.393140684571951e-31+t156.*t165.*3.272540161502791e-32+t158.*t163.*1.393140684571951e-31+t157.*t166.*3.272540161502791e-32+t167.*t185.*2.501782997759019e-33+t169.*t186.*2.501782997759019e-33+t187.*t197.*4.947232544644712e-35+t189.*t195.*4.947232544644712e-35+7.821829961622444));t170+t171+t183+t184+t191+t192+t203+t206+t223+t226+(t18.*(t177-t155.*t196.*1.393140684571951e-31+t155.*t201.*1.393140684571951e-31+t158.*t198.*1.393140684571951e-31-t158.*t202.*1.393140684571951e-31+t156.*t205.*3.272540161502791e-32-t157.*t204.*3.272540161502791e-32-t156.*t212.*3.272540161502791e-32+t157.*t211.*3.272540161502791e-32+t167.*t240.*2.501782997759019e-33-t169.*t239.*2.501782997759019e-33-t167.*t245.*2.501782997759019e-33+t169.*t246.*2.501782997759019e-33+t187.*t269.*4.947232544644712e-35-t189.*t268.*4.947232544644712e-35-t187.*t271.*4.947232544644712e-35+t189.*t270.*4.947232544644712e-35))./2.0-t196.*t201.*3.482851711429877e-32-t198.*t202.*3.482851711429877e-32-t204.*t211.*8.181350403756978e-33-t205.*t212.*8.181350403756978e-33-t239.*t246.*6.254457494397548e-34-t240.*t245.*6.254457494397548e-34-t268.*t270.*1.236808136161178e-35-t269.*t271.*1.236808136161178e-35-t18.*(t230+t233+t236+t238+t266+t267+t290+t292+qd_t1.*t9.*6.168201271232084e-1-t155.*t196.*6.965703422859755e-32+t158.*t198.*6.965703422859755e-32+t156.*t205.*1.636270080751396e-32-t157.*t204.*1.636270080751396e-32+t167.*t240.*1.25089149887951e-33-t169.*t239.*1.25089149887951e-33+t187.*t269.*2.473616272322356e-35-t189.*t268.*2.473616272322356e-35+t18.*(t155.^2.*1.393140684571951e-31+t156.^2.*3.272540161502791e-32+t157.^2.*3.272540161502791e-32+t158.^2.*1.393140684571951e-31+t167.^2.*2.501782997759019e-33+t169.^2.*2.501782997759019e-33+t187.^2.*4.947232544644712e-35+t189.^2.*4.947232544644712e-35+7.821829961622444))-qd_t1.^2.*t3.*3.084100635616042e-1+t196.^2.*3.482851711429877e-32+t198.^2.*3.482851711429877e-32+t204.^2.*8.181350403756978e-33+t205.^2.*8.181350403756978e-33+t239.^2.*6.254457494397548e-34+t240.^2.*6.254457494397548e-34+t268.^2.*1.236808136161178e-35+t269.^2.*1.236808136161178e-35-qd_t1.*qd_t2.*t3.*3.084100635616042e-1;t183+t184+t191+t192+t203+t206+t223+t226+t241+t242+t249+t250+t275+t276+t282+t283+t293+t294+t297+t298+t172.*t196.*3.482851711429877e-32+t173.*t198.*3.482851711429877e-32-t172.*t201.*3.482851711429877e-32-t173.*t202.*3.482851711429877e-32-t18.*(t218+t220+t227+t232+t255+t256+t261+t262+t277+t279+t284+t289+t20.*t198.*6.686743761243838e-16-t24.*t196.*6.686743761243838e-16-t20.*t202.*6.686743761243838e-16+t24.*t201.*6.686743761243838e-16+t18.*(t193+t194+t213+t214+t221+t222+t20.*t158.*1.337348752248768e-15+t24.*t155.*1.337348752248768e-15+6.925066882611204))-(t18.*(t215-t216-t224+t225-t251+t252+t257-t258-t272+t273-t285+t287+t20.*t202.*1.337348752248768e-15-t24.*t201.*1.337348752248768e-15+t155.*t172.*1.393140684571951e-31-t158.*t173.*1.393140684571951e-31))./2.0;t191+t192+t203+t206+t223+t226+t241+t242+t249+t250+t275+t276+t282+t283+t293+t294+t297+t298-t18.*(t218+t220+t227+t232+t255+t256+t261+t262+t277+t279+t284+t289+t18.*(t193+t194+t213+t214+t221+t222+2.824041542309381e-1))-(t18.*(t215-t216-t224+t225-t251+t252+t257-t258-t272+t273-t285+t287))./2.0;t203+t206+t223+t226+(t18.*(t30.*t246.*1.795575444954456e-17-t32.*t245.*1.795575444954456e-17+t167.*t200.*2.501782997759019e-33-t169.*t199.*2.501782997759019e-33+t187.*t243.*4.947232544644712e-35-t161.*t271.*4.947232544644712e-35+t162.*t270.*4.947232544644712e-35-t189.*t244.*4.947232544644712e-35))./2.0+t199.*t239.*6.254457494397548e-34+t200.*t240.*6.254457494397548e-34-t199.*t246.*6.254457494397548e-34-t200.*t245.*6.254457494397548e-34+t243.*t269.*1.236808136161178e-35+t244.*t268.*1.236808136161178e-35-t243.*t271.*1.236808136161178e-35-t244.*t270.*1.236808136161178e-35-t18.*(t30.*t239.*(-8.97787722477228e-18)+t32.*t240.*8.97787722477228e-18+t30.*t246.*8.97787722477228e-18-t32.*t245.*8.97787722477228e-18+t161.*t269.*2.473616272322356e-35-t162.*t268.*2.473616272322356e-35-t161.*t271.*2.473616272322356e-35+t162.*t270.*2.473616272322356e-35+t18.*(t30.*t169.*1.795575444954456e-17+t32.*t167.*1.795575444954456e-17+t161.*t187.*4.947232544644712e-35+t162.*t189.*4.947232544644712e-35+6.26896394143647e-2));t223+t226+t209.*t269.*1.236808136161178e-35+t210.*t268.*1.236808136161178e-35-t209.*t271.*1.236808136161178e-35-t210.*t270.*1.236808136161178e-35-t18.*(t33.*t269.*9.35428744602076e-20-t34.*t268.*9.35428744602076e-20-t33.*t271.*9.35428744602076e-20+t34.*t270.*9.35428744602076e-20+t18.*(t33.*t187.*1.870857489204152e-19+t34.*t189.*1.870857489204152e-19))-(t18.*(t33.*t271.*1.870857489204152e-19-t34.*t270.*1.870857489204152e-19-t187.*t209.*4.947232544644712e-35+t189.*t210.*4.947232544644712e-35))./2.0];
