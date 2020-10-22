function dL24_dq1 = dL24_dq1(in1,in2,sampT)
%DL24_DQ1
%    DL24_DQ1 = DL24_DQ1(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    17-Oct-2020 02:23:10

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
t17 = 1.0./sampT;
t15 = cos(t14);
t16 = sin(t14);
t18 = t2.*t3;
t19 = t2.*t9;
t20 = t3.*t8;
t21 = q_t3+q_t4+t14;
t22 = t8.*t9;
t41 = t2.*8.287740207069301e+15;
t42 = t8.*8.287740207069301e+15;
t43 = t8.*1.65754804141386e+16;
t44 = t2.*6.630192165655441e+16;
t45 = t8.*6.630192165655441e+16;
t48 = t2.*1.65754804141386e+16;
t23 = cos(t21);
t24 = q_t5+t21;
t25 = sin(t21);
t28 = -t22;
t34 = t19+t20;
t46 = qd_t1.*t41;
t47 = qd_t1.*t42;
t49 = qd_t1.*t48;
t50 = qd_t1.*t43;
t51 = qd_t1.*t44;
t52 = t15.*8.022031431934143e+15;
t53 = qd_t1.*t45;
t54 = t16.*8.022031431934143e+15;
t55 = t16.*6.417625145547314e+16;
t60 = t15.*1.604406286386829e+16;
t61 = t16.*1.604406286386829e+16;
t62 = t15.*6.417625145547314e+16;
t26 = q_t6+t24;
t27 = sin(t24);
t29 = cos(t24);
t32 = t23.^2;
t33 = t25.^2;
t35 = t18+t28;
t36 = t4.*t34;
t37 = t10.*t34;
t56 = qd_t1.*t52;
t57 = qd_t2.*t52;
t58 = qd_t1.*t54;
t59 = qd_t2.*t54;
t63 = qd_t1.*t61;
t64 = qd_t2.*t61;
t65 = t23.*3.473539610027484e+15;
t66 = qd_t1.*t62;
t67 = qd_t2.*t62;
t68 = t25.*3.473539610027484e+15;
t69 = qd_t1.*t55;
t70 = qd_t2.*t55;
t71 = qd_t1.*t60;
t72 = qd_t2.*t60;
t73 = t23.*1.604406286386829e+16;
t74 = t25.*1.604406286386829e+16;
t81 = t23.*6.417625145547314e+16;
t86 = t25.*6.417625145547314e+16;
t30 = cos(t26);
t31 = sin(t26);
t38 = t4.*t35;
t39 = t10.*t35;
t40 = -t37;
t75 = t29.*7.177183019322015e+15;
t76 = t27.*7.177183019322015e+15;
t77 = qd_t1.*t65;
t78 = qd_t2.*t65;
t79 = qd_t3.*t65;
t80 = qd_t4.*t65;
t82 = qd_t1.*t68;
t83 = qd_t2.*t68;
t84 = qd_t3.*t68;
t85 = qd_t4.*t68;
t87 = qd_t1.*t81;
t88 = qd_t2.*t81;
t89 = qd_t3.*t81;
t90 = qd_t4.*t81;
t91 = qd_t1.*t86;
t92 = qd_t2.*t86;
t93 = qd_t3.*t86;
t94 = qd_t4.*t86;
t95 = t29.*6.630192165655441e+16;
t96 = t27.*6.630192165655441e+16;
t98 = qd_t1.*t73;
t99 = qd_t2.*t73;
t100 = qd_t3.*t73;
t101 = qd_t4.*t73;
t103 = qd_t1.*t74;
t104 = qd_t2.*t74;
t105 = qd_t3.*t74;
t106 = qd_t4.*t74;
t146 = t52+t65;
t147 = t54+t68;
t167 = t32.*3.948475943260698e-1;
t169 = t33.*3.948475943260698e-1;
t97 = t30.*3.781624316870491e+15;
t102 = t31.*3.781624316870491e+15;
t107 = qd_t1.*t75;
t108 = qd_t2.*t75;
t109 = qd_t3.*t75;
t110 = qd_t4.*t75;
t111 = qd_t5.*t75;
t112 = qd_t1.*t76;
t113 = qd_t2.*t76;
t114 = qd_t3.*t76;
t115 = qd_t4.*t76;
t116 = qd_t5.*t76;
t129 = qd_t1.*t95;
t130 = qd_t2.*t95;
t131 = qd_t3.*t95;
t132 = qd_t4.*t95;
t133 = qd_t5.*t95;
t134 = qd_t1.*t96;
t135 = qd_t2.*t96;
t136 = qd_t3.*t96;
t137 = qd_t4.*t96;
t138 = qd_t5.*t96;
t139 = t36+t39;
t140 = t38+t40;
t143 = -t5.*(t37-t38);
t144 = -t11.*(t37-t38);
t148 = t73+t75;
t149 = t74+t76;
t154 = t41+t146;
t155 = t42+t147;
t176 = t77+t78+t79+t80;
t178 = t82+t83+t84+t85;
t182 = t11.*(t37-t38).*(-9.690955635804931);
t117 = qd_t1.*t97;
t118 = qd_t2.*t97;
t119 = qd_t3.*t97;
t120 = qd_t4.*t97;
t121 = qd_t5.*t97;
t122 = qd_t6.*t97;
t123 = qd_t1.*t102;
t124 = qd_t2.*t102;
t125 = qd_t3.*t102;
t126 = qd_t4.*t102;
t127 = qd_t5.*t102;
t128 = qd_t6.*t102;
t141 = t5.*t139;
t142 = t11.*t139;
t150 = t148.^2;
t151 = t95+t97;
t152 = t149.^2;
t153 = t96+t102;
t156 = t60+t148;
t158 = t61+t149;
t179 = t178.^2;
t180 = t176.^2;
t187 = t107+t108+t109+t110+t111;
t188 = t112+t113+t114+t115+t116;
t192 = t56+t57+t176;
t193 = t58+t59+t178;
t198 = t25.*t176.*1.136729787638568e-16;
t199 = t23.*t178.*1.136729787638568e-16;
t202 = t25.*t176.*5.683648938192842e-17;
t203 = t23.*t178.*5.683648938192842e-17;
t145 = -t142;
t157 = t141+t144;
t162 = t81+t151;
t163 = t86+t153;
t164 = -t6.*(t142+t5.*(t37-t38));
t165 = -t12.*(t142+t5.*(t37-t38));
t171 = t48+t156;
t172 = t43+t158;
t173 = t152.*2.501782997759019e-33;
t174 = t150.*2.501782997759019e-33;
t181 = t141.*9.690955635804931;
t190 = t180.*8.181350403756978e-33;
t191 = t179.*8.181350403756978e-33;
t194 = t12.*(t142+t5.*(t37-t38)).*(-2.745912041436713);
t197 = t123+t124+t125+t126+t127+t128;
t200 = t117+t118+t119+t120+t121+t122;
t201 = -t198;
t204 = -t203;
t205 = t46+t192;
t206 = t47+t193;
t215 = t98+t99+t100+t101+t187;
t216 = t103+t104+t105+t106+t188;
t159 = t143+t145;
t160 = t6.*t157;
t161 = t12.*t157;
t168 = t163.^2;
t170 = t162.^2;
t175 = t62+t162;
t177 = t55+t163;
t208 = t25.*t205.*1.136729787638568e-16;
t209 = t23.*t206.*1.136729787638568e-16;
t211 = t25.*t205.*5.683648938192842e-17;
t213 = t23.*t206.*5.683648938192842e-17;
t217 = t216.^2;
t218 = t215.^2;
t221 = t71+t72+t215;
t222 = t63+t64+t216;
t223 = t134+t135+t136+t137+t138+t197;
t224 = t129+t130+t131+t132+t133+t200;
t227 = t178.*t206.*8.181350403756978e-33;
t228 = t176.*t205.*8.181350403756978e-33;
t231 = t149.*t215.*2.501782997759019e-33;
t232 = t148.*t216.*2.501782997759019e-33;
t234 = t149.*t215.*1.25089149887951e-33;
t235 = t148.*t216.*1.25089149887951e-33;
t166 = -t161;
t183 = t45+t177;
t184 = t44+t175;
t185 = t170.*4.947232544644712e-35;
t186 = t168.*4.947232544644712e-35;
t189 = t160.*2.745912041436713;
t195 = t160+t165;
t210 = t13.*(t161+t6.*(t142+t5.*(t37-t38))).*(-6.612405458007602e-2);
t212 = -t209;
t214 = -t211;
t219 = t218.*6.254457494397548e-34;
t220 = t217.*6.254457494397548e-34;
t225 = t50+t222;
t226 = t49+t221;
t229 = -t227;
t230 = -t228;
t233 = -t231;
t236 = -t235;
t243 = t91+t92+t93+t94+t223;
t244 = t87+t88+t89+t90+t224;
t196 = t164+t166;
t207 = t7.*t195.*6.612405458007602e-2;
t237 = t148.*t225.*2.501782997759019e-33;
t238 = t149.*t226.*2.501782997759019e-33;
t240 = t148.*t225.*1.25089149887951e-33;
t241 = t149.*t226.*1.25089149887951e-33;
t245 = t243.^2;
t246 = t244.^2;
t249 = t66+t67+t244;
t250 = t69+t70+t243;
t253 = t162.*t243.*2.473616272322356e-35;
t254 = t162.*t243.*4.947232544644712e-35;
t255 = t163.*t244.*2.473616272322356e-35;
t256 = t163.*t244.*4.947232544644712e-35;
t259 = t215.*t226.*6.254457494397548e-34;
t260 = t216.*t225.*6.254457494397548e-34;
t269 = t167+t169+t173+t174+t185+t186+2.824041542309381e-1;
t239 = -t237;
t242 = -t241;
t247 = t245.*1.236808136161178e-35;
t248 = t246.*1.236808136161178e-35;
t251 = t51+t249;
t252 = t53+t250;
t257 = -t253;
t258 = -t256;
t261 = -t259;
t262 = -t260;
t270 = t17.*t269;
t263 = t163.*t251.*2.473616272322356e-35;
t264 = t163.*t251.*4.947232544644712e-35;
t265 = t162.*t252.*2.473616272322356e-35;
t266 = t162.*t252.*4.947232544644712e-35;
t271 = t244.*t251.*1.236808136161178e-35;
t272 = t243.*t252.*1.236808136161178e-35;
t267 = -t263;
t268 = -t266;
t273 = -t271;
t274 = -t272;
t276 = t17.*(t198-t199-t208+t209+t231-t232+t237-t238-t254+t256-t264+t266).*(-1.0./2.0);
t277 = (t17.*(t198-t199-t208+t209+t231-t232+t237-t238-t254+t256-t264+t266))./2.0;
t275 = t199+t201+t208+t212+t232+t233+t238+t239+t254+t258+t264+t268;
t278 = t202+t204+t213+t214+t234+t236+t240+t242+t255+t257+t265+t267+t270;
t279 = t17.*t278;
t280 = -t279;
t281 = t181+t182+t189+t190+t191+t194+t207+t210+t219+t220+t229+t230+t247+t248+t261+t262+t273+t274+t277+t280;
dL24_dq1 = [t181+t182+t189+t194+t207+t210-t17.*(t213+t214+t240+t242+t265+t267+t155.*t176.*1.636270080751396e-32-t154.*t178.*1.636270080751396e-32-t171.*t216.*1.25089149887951e-33+t172.*t215.*1.25089149887951e-33+t183.*t244.*2.473616272322356e-35-t184.*t243.*2.473616272322356e-35+t17.*(t23.*t154.*1.136729787638568e-16+t25.*t155.*1.136729787638568e-16+t148.*t171.*2.501782997759019e-33+t149.*t172.*2.501782997759019e-33+t162.*t184.*4.947232544644712e-35+t163.*t183.*4.947232544644712e-35+2.824041542309381e-1));t181+t182+t189+t194+t207+t210+t229+t230+t261+t262+t273+t274-t17.*(t213+t214+t240+t242+t265+t267+t147.*t176.*1.636270080751396e-32-t146.*t178.*1.636270080751396e-32-t156.*t216.*1.25089149887951e-33+t158.*t215.*1.25089149887951e-33-t175.*t243.*2.473616272322356e-35+t177.*t244.*2.473616272322356e-35+t17.*(t23.*t146.*1.136729787638568e-16+t25.*t147.*1.136729787638568e-16+t148.*t156.*2.501782997759019e-33+t149.*t158.*2.501782997759019e-33+t162.*t175.*4.947232544644712e-35+t163.*t177.*4.947232544644712e-35+2.824041542309381e-1))+t176.*t192.*8.181350403756978e-33+t178.*t193.*8.181350403756978e-33+t215.*t221.*6.254457494397548e-34+t216.*t222.*6.254457494397548e-34+t243.*t250.*1.236808136161178e-35+t244.*t249.*1.236808136161178e-35-(t17.*(t208+t212+t238+t239+t264+t268+t23.*t193.*1.136729787638568e-16-t25.*t192.*1.136729787638568e-16+t148.*t222.*2.501782997759019e-33-t149.*t221.*2.501782997759019e-33+t162.*t250.*4.947232544644712e-35-t163.*t249.*4.947232544644712e-35))./2.0;t281;t281;t189+t194+t207+t210-(t17.*(t27.*t226.*1.795575444954456e-17-t29.*t225.*1.795575444954456e-17+t148.*t188.*2.501782997759019e-33-t149.*t187.*2.501782997759019e-33+t162.*t223.*4.947232544644712e-35-t163.*t224.*4.947232544644712e-35-t151.*t252.*4.947232544644712e-35+t153.*t251.*4.947232544644712e-35))./2.0+t187.*t215.*6.254457494397548e-34+t188.*t216.*6.254457494397548e-34-t187.*t226.*6.254457494397548e-34-t188.*t225.*6.254457494397548e-34+t223.*t243.*1.236808136161178e-35+t224.*t244.*1.236808136161178e-35-t223.*t252.*1.236808136161178e-35-t224.*t251.*1.236808136161178e-35-t17.*(t27.*t215.*8.97787722477228e-18-t29.*t216.*8.97787722477228e-18-t27.*t226.*8.97787722477228e-18+t29.*t225.*8.97787722477228e-18-t151.*t243.*2.473616272322356e-35+t153.*t244.*2.473616272322356e-35+t151.*t252.*2.473616272322356e-35-t153.*t251.*2.473616272322356e-35+t17.*(t27.*t149.*1.795575444954456e-17+t29.*t148.*1.795575444954456e-17+t151.*t162.*4.947232544644712e-35+t153.*t163.*4.947232544644712e-35+6.26896394143647e-2));t207+t210+t197.*t243.*1.236808136161178e-35+t200.*t244.*1.236808136161178e-35-t197.*t252.*1.236808136161178e-35-t200.*t251.*1.236808136161178e-35-t17.*(t30.*t243.*(-9.35428744602076e-20)+t31.*t244.*9.35428744602076e-20+t30.*t252.*9.35428744602076e-20-t31.*t251.*9.35428744602076e-20+t17.*(t30.*t162.*1.870857489204152e-19+t31.*t163.*1.870857489204152e-19))+(t17.*(t30.*t252.*1.870857489204152e-19-t31.*t251.*1.870857489204152e-19-t162.*t197.*4.947232544644712e-35+t163.*t200.*4.947232544644712e-35))./2.0];
