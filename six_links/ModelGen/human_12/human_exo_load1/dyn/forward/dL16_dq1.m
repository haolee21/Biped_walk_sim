function dL16_dq1 = dL16_dq1(in1,in2,sampT)
%DL16_DQ1
%    DL16_DQ1 = DL16_DQ1(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    01-Aug-2021 16:43:36

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
t2 = cos(q6);
t3 = sin(q6);
t4 = q5+q6;
t5 = dq1.^2;
t6 = dq2.^2;
t7 = dq3.^2;
t8 = dq4.^2;
t9 = dq5.^2;
t13 = 1.0./sampT;
t115 = atan(1.979012320620293);
t116 = 4.501575681747185e+18;
t10 = cos(t4);
t11 = q4+t4;
t12 = sin(t4);
t22 = t3.*5.575780357875e-2;
t23 = dq1.*t2.*5.575780357875e-2;
t24 = dq2.*t2.*5.575780357875e-2;
t25 = dq3.*t2.*5.575780357875e-2;
t26 = dq4.*t2.*5.575780357875e-2;
t27 = dq5.*t2.*5.575780357875e-2;
t28 = dq6.*t2.*2.7878901789375e-2;
t119 = t2.*2.81745611170695e-2;
t120 = dq1.*t3.*2.81745611170695e-2;
t121 = dq2.*t3.*2.81745611170695e-2;
t122 = dq3.*t3.*2.81745611170695e-2;
t123 = dq4.*t3.*2.81745611170695e-2;
t124 = dq5.*t3.*2.81745611170695e-2;
t125 = dq6.*t3.*1.408728055853475e-2;
t14 = cos(t11);
t15 = q3+t11;
t16 = sin(t11);
t29 = -t22;
t31 = t12.*5.575780357875e-2;
t35 = dq1.*t10.*5.575780357875e-2;
t36 = dq2.*t10.*5.575780357875e-2;
t37 = dq3.*t10.*5.575780357875e-2;
t38 = dq4.*t10.*5.575780357875e-2;
t39 = dq1.*t10.*2.7878901789375e-2;
t40 = dq2.*t10.*2.7878901789375e-2;
t41 = dq3.*t10.*2.7878901789375e-2;
t42 = dq4.*t10.*2.7878901789375e-2;
t43 = dq5.*t10.*2.7878901789375e-2;
t44 = dq6.*t10.*2.7878901789375e-2;
t56 = dq1.*dq5.*t12.*1.39394508946875e-2;
t57 = dq1.*dq6.*t12.*1.39394508946875e-2;
t58 = dq2.*dq5.*t12.*1.39394508946875e-2;
t59 = dq2.*dq6.*t12.*1.39394508946875e-2;
t60 = dq3.*dq5.*t12.*1.39394508946875e-2;
t61 = dq3.*dq6.*t12.*1.39394508946875e-2;
t62 = dq4.*dq5.*t12.*1.39394508946875e-2;
t63 = dq4.*dq6.*t12.*1.39394508946875e-2;
t65 = dq1.*dq2.*t12.*2.7878901789375e-2;
t66 = dq1.*dq3.*t12.*2.7878901789375e-2;
t67 = dq1.*dq4.*t12.*2.7878901789375e-2;
t68 = dq2.*dq3.*t12.*2.7878901789375e-2;
t69 = dq2.*dq4.*t12.*2.7878901789375e-2;
t70 = dq3.*dq4.*t12.*2.7878901789375e-2;
t86 = t5.*t12.*1.39394508946875e-2;
t87 = t6.*t12.*1.39394508946875e-2;
t88 = t7.*t12.*1.39394508946875e-2;
t89 = t8.*t12.*1.39394508946875e-2;
t126 = t10.*2.81745611170695e-2;
t128 = dq1.*t12.*1.408728055853475e-2;
t129 = dq1.*t12.*2.81745611170695e-2;
t130 = dq2.*t12.*1.408728055853475e-2;
t131 = dq2.*t12.*2.81745611170695e-2;
t132 = dq3.*t12.*1.408728055853475e-2;
t133 = dq3.*t12.*2.81745611170695e-2;
t134 = dq4.*t12.*1.408728055853475e-2;
t135 = dq4.*t12.*2.81745611170695e-2;
t136 = dq5.*t12.*1.408728055853475e-2;
t137 = dq6.*t12.*1.408728055853475e-2;
t147 = dq1.*dq2.*t10.*1.408728055853475e-2;
t148 = dq1.*dq3.*t10.*1.408728055853475e-2;
t149 = dq1.*dq4.*t10.*1.408728055853475e-2;
t150 = dq2.*dq3.*t10.*1.408728055853475e-2;
t151 = dq1.*dq5.*t10.*7.043640279267375e-3;
t152 = dq2.*dq4.*t10.*1.408728055853475e-2;
t153 = dq1.*dq6.*t10.*7.043640279267375e-3;
t154 = dq2.*dq5.*t10.*7.043640279267375e-3;
t155 = dq3.*dq4.*t10.*1.408728055853475e-2;
t156 = dq2.*dq6.*t10.*7.043640279267375e-3;
t157 = dq3.*dq5.*t10.*7.043640279267375e-3;
t158 = dq3.*dq6.*t10.*7.043640279267375e-3;
t159 = dq4.*dq5.*t10.*7.043640279267375e-3;
t160 = dq4.*dq6.*t10.*7.043640279267375e-3;
t165 = t5.*t10.*7.043640279267375e-3;
t166 = t6.*t10.*7.043640279267375e-3;
t167 = t7.*t10.*7.043640279267375e-3;
t168 = t8.*t10.*7.043640279267375e-3;
t17 = cos(t15);
t18 = q2+t15;
t19 = sin(t15);
t30 = t16.*7.7378176395e-2;
t32 = dq1.*t14.*7.7378176395e-2;
t33 = dq2.*t14.*7.7378176395e-2;
t34 = dq3.*t14.*7.7378176395e-2;
t45 = dq1.*t14.*3.86890881975e-2;
t46 = dq2.*t14.*3.86890881975e-2;
t47 = dq3.*t14.*3.86890881975e-2;
t48 = dq4.*t14.*3.86890881975e-2;
t49 = dq5.*t14.*3.86890881975e-2;
t50 = dq6.*t14.*3.86890881975e-2;
t52 = -t31;
t53 = dq1.*dq2.*t16.*3.86890881975e-2;
t54 = dq1.*dq3.*t16.*3.86890881975e-2;
t55 = dq2.*dq3.*t16.*3.86890881975e-2;
t71 = dq1.*dq4.*t16.*1.934454409875e-2;
t72 = dq1.*dq5.*t16.*1.934454409875e-2;
t73 = dq2.*dq4.*t16.*1.934454409875e-2;
t74 = dq1.*dq6.*t16.*1.934454409875e-2;
t75 = dq2.*dq5.*t16.*1.934454409875e-2;
t76 = dq3.*dq4.*t16.*1.934454409875e-2;
t77 = dq2.*dq6.*t16.*1.934454409875e-2;
t78 = dq3.*dq5.*t16.*1.934454409875e-2;
t79 = dq3.*dq6.*t16.*1.934454409875e-2;
t93 = t5.*t16.*1.934454409875e-2;
t94 = t6.*t16.*1.934454409875e-2;
t95 = t7.*t16.*1.934454409875e-2;
t127 = t14.*3.9099390937974e-2;
t138 = dq1.*t16.*1.9549695468987e-2;
t139 = dq1.*t16.*3.9099390937974e-2;
t140 = dq2.*t16.*1.9549695468987e-2;
t141 = dq2.*t16.*3.9099390937974e-2;
t142 = dq3.*t16.*1.9549695468987e-2;
t143 = dq3.*t16.*3.9099390937974e-2;
t144 = dq4.*t16.*1.9549695468987e-2;
t145 = dq5.*t16.*1.9549695468987e-2;
t146 = dq6.*t16.*1.9549695468987e-2;
t162 = dq1.*dq2.*t14.*1.9549695468987e-2;
t163 = dq1.*dq3.*t14.*1.9549695468987e-2;
t164 = dq2.*dq3.*t14.*1.9549695468987e-2;
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
t185 = dq1.*dq4.*t14.*9.7748477344935e-3;
t187 = dq1.*dq5.*t14.*9.7748477344935e-3;
t188 = dq2.*dq4.*t14.*9.7748477344935e-3;
t189 = dq1.*dq6.*t14.*9.7748477344935e-3;
t190 = dq2.*dq5.*t14.*9.7748477344935e-3;
t191 = dq3.*dq4.*t14.*9.7748477344935e-3;
t192 = dq2.*dq6.*t14.*9.7748477344935e-3;
t193 = dq3.*dq5.*t14.*9.7748477344935e-3;
t194 = dq3.*dq6.*t14.*9.7748477344935e-3;
t212 = -t165;
t213 = -t166;
t214 = -t167;
t215 = -t168;
t218 = t5.*t14.*9.7748477344935e-3;
t219 = t6.*t14.*9.7748477344935e-3;
t220 = t7.*t14.*9.7748477344935e-3;
t20 = sin(t18);
t21 = cos(t18);
t51 = -t30;
t64 = t19.*5.575780357875e-2;
t80 = dq1.*t17.*2.7878901789375e-2;
t81 = dq2.*t17.*2.7878901789375e-2;
t82 = dq3.*t17.*2.7878901789375e-2;
t83 = dq4.*t17.*2.7878901789375e-2;
t84 = dq5.*t17.*2.7878901789375e-2;
t85 = dq6.*t17.*2.7878901789375e-2;
t91 = dq1.*t17.*5.575780357875e-2;
t92 = dq2.*t17.*5.575780357875e-2;
t96 = dq1.*dq3.*t19.*1.39394508946875e-2;
t97 = dq1.*dq4.*t19.*1.39394508946875e-2;
t98 = dq2.*dq3.*t19.*1.39394508946875e-2;
t99 = dq1.*dq5.*t19.*1.39394508946875e-2;
t100 = dq2.*dq4.*t19.*1.39394508946875e-2;
t101 = dq1.*dq6.*t19.*1.39394508946875e-2;
t102 = dq2.*dq5.*t19.*1.39394508946875e-2;
t103 = dq2.*dq6.*t19.*1.39394508946875e-2;
t106 = dq1.*dq2.*t19.*2.7878901789375e-2;
t107 = t5.*t19.*1.39394508946875e-2;
t108 = t6.*t19.*1.39394508946875e-2;
t117 = q1+t18+t115;
t161 = t17.*2.81745611170695e-2;
t183 = -t162;
t184 = -t163;
t186 = -t164;
t195 = dq1.*t19.*1.408728055853475e-2;
t196 = dq1.*t19.*2.81745611170695e-2;
t197 = dq2.*t19.*1.408728055853475e-2;
t198 = dq2.*t19.*2.81745611170695e-2;
t199 = dq3.*t19.*1.408728055853475e-2;
t200 = dq4.*t19.*1.408728055853475e-2;
t201 = dq5.*t19.*1.408728055853475e-2;
t202 = dq6.*t19.*1.408728055853475e-2;
t203 = dq1.*dq2.*t17.*1.408728055853475e-2;
t204 = dq1.*dq3.*t17.*7.043640279267375e-3;
t205 = dq1.*dq4.*t17.*7.043640279267375e-3;
t206 = dq2.*dq3.*t17.*7.043640279267375e-3;
t207 = dq1.*dq5.*t17.*7.043640279267375e-3;
t208 = dq2.*dq4.*t17.*7.043640279267375e-3;
t209 = dq1.*dq6.*t17.*7.043640279267375e-3;
t210 = dq2.*dq5.*t17.*7.043640279267375e-3;
t211 = dq2.*dq6.*t17.*7.043640279267375e-3;
t221 = -t185;
t222 = -t187;
t223 = -t188;
t224 = -t189;
t225 = -t190;
t226 = -t191;
t227 = -t192;
t228 = -t193;
t229 = -t194;
t230 = t5.*t17.*7.043640279267375e-3;
t231 = t6.*t17.*7.043640279267375e-3;
t241 = -t218;
t242 = -t219;
t243 = -t220;
t90 = -t64;
t104 = dq1.*t21.*5.575780357875e-2;
t105 = dq1.*t21.*2.7878901789375e-2;
t109 = dq1.*dq2.*t20.*1.39394508946875e-2;
t110 = dq1.*dq3.*t20.*1.39394508946875e-2;
t111 = dq1.*dq4.*t20.*1.39394508946875e-2;
t112 = dq1.*dq5.*t20.*1.39394508946875e-2;
t113 = dq1.*dq6.*t20.*1.39394508946875e-2;
t114 = t5.*t20.*1.39394508946875e-2;
t118 = sin(t117);
t216 = dq1.*t20.*1.408728055853475e-2;
t217 = dq1.*t20.*2.81745611170695e-2;
t232 = -t203;
t233 = -t204;
t234 = -t205;
t235 = -t206;
t236 = -t207;
t237 = -t208;
t238 = -t209;
t239 = -t210;
t240 = -t211;
t244 = dq1.*dq2.*t21.*7.043640279267375e-3;
t245 = dq1.*dq3.*t21.*7.043640279267375e-3;
t246 = dq1.*dq4.*t21.*7.043640279267375e-3;
t247 = dq1.*dq5.*t21.*7.043640279267375e-3;
t248 = dq1.*dq6.*t21.*7.043640279267375e-3;
t249 = -t230;
t250 = -t231;
t251 = t5.*t21.*7.043640279267375e-3;
t252 = -t244;
t253 = -t245;
t254 = -t246;
t255 = -t247;
t256 = -t248;
t257 = -t251;
t258 = t116.*t118.*7.591227646486231e-20;
dL16_dq1 = [t258+t13.*(t23+t24+t25+t26+t27+t28+t32+t33+t34+t35+t36+t37+t38+t43+t44+t48+t49+t50+t82+t83+t84+t85+t91+t92+t104+t120+t121+t122+t123+t124+t125+t129+t131+t133+t135+t136+t137+t139+t141+t143+t144+t145+t146+t196+t198+t199+t200+t201+t202+t217+dq2.*t20.*1.408728055853475e-2+dq2.*t21.*2.7878901789375e-2+dq3.*t20.*1.408728055853475e-2+dq3.*t21.*2.7878901789375e-2+dq4.*t20.*1.408728055853475e-2+dq4.*t21.*2.7878901789375e-2+dq5.*t20.*1.408728055853475e-2+dq5.*t21.*2.7878901789375e-2+dq6.*t20.*1.408728055853475e-2+dq6.*t21.*2.7878901789375e-2+t13.*(t20.*(-5.575780357875e-2)+t21.*2.81745611170695e-2+t29+t51+t52+t90+t119+t126+t127+t161+3.275366401942843e-2));t109+t110+t111+t112+t113+t114+t252+t253+t254+t255+t256+t257+t258+(t13.*(t104+t217))./2.0+t13.*(t23+t24+t25+t26+t27+t28+t32+t33+t34+t35+t36+t37+t38+t43+t44+t48+t49+t50+t82+t83+t84+t85+t91+t92+t105+t120+t121+t122+t123+t124+t125+t129+t131+t133+t135+t136+t137+t139+t141+t143+t144+t145+t146+t196+t198+t199+t200+t201+t202+t216+t13.*(t29+t51+t52+t90+t119+t126+t127+t161+3.275366401942843e-2));t96+t97+t98+t99+t100+t101+t102+t103+t106+t107+t108+t109+t110+t111+t112+t113+t114+t232+t233+t234+t235+t236+t237+t238+t239+t240+t249+t250+t252+t253+t254+t255+t256+t257+t258+t13.*(t23+t24+t25+t26+t27+t28+t32+t33+t34+t35+t36+t37+t38+t43+t44+t48+t49+t50+t80+t81+t105+t120+t121+t122+t123+t124+t125+t129+t131+t133+t135+t136+t137+t139+t141+t143+t144+t145+t146+t195+t197+t216+t13.*(t29+t51+t52+t119+t126+t127+3.275366401942843e-2))+(t13.*(t91+t92+t104+t196+t198+t217))./2.0;t53+t54+t55+t71+t72+t73+t74+t75+t76+t77+t78+t79+t93+t94+t95+t96+t97+t98+t99+t100+t101+t102+t103+t106+t107+t108+t109+t110+t111+t112+t113+t114+t183+t184+t186+t221+t222+t223+t224+t225+t226+t227+t228+t229+t232+t233+t234+t235+t236+t237+t238+t239+t240+t241+t242+t243+t249+t250+t252+t253+t254+t255+t256+t257+t258+(t13.*(t32+t33+t34+t91+t92+t104+t139+t141+t143+t196+t198+t217))./2.0+t13.*(t23+t24+t25+t26+t27+t28+t35+t36+t37+t38+t43+t44+t45+t46+t47+t80+t81+t105+t120+t121+t122+t123+t124+t125+t129+t131+t133+t135+t136+t137+t138+t140+t142+t195+t197+t216+t13.*(t29+t52+t119+t126+3.275366401942843e-2));t53+t54+t55+t56+t57+t58+t59+t60+t61+t62+t63+t65+t66+t67+t68+t69+t70+t71+t72+t73+t74+t75+t76+t77+t78+t79+t86+t87+t88+t89+t93+t94+t95+t96+t97+t98+t99+t100+t101+t102+t103+t106+t107+t108+t109+t110+t111+t112+t113+t114+t169+t170+t171+t172+t173+t174+t175+t176+t177+t178+t179+t180+t181+t182+t183+t184+t186+t212+t213+t214+t215+t221+t222+t223+t224+t225+t226+t227+t228+t229+t232+t233+t234+t235+t236+t237+t238+t239+t240+t241+t242+t243+t249+t250+t252+t253+t254+t255+t256+t257+t258+t13.*(t23+t24+t25+t26+t27+t28+t39+t40+t41+t42+t45+t46+t47+t80+t81+t105+t120+t121+t122+t123+t124+t125+t128+t130+t132+t134+t138+t140+t142+t195+t197+t216+t13.*(t29+t119+3.275366401942843e-2))+(t13.*(t32+t33+t34+t35+t36+t37+t38+t91+t92+t104+t129+t131+t133+t135+t139+t141+t143+t196+t198+t217))./2.0;t53+t54+t55+t56+t57+t58+t59+t60+t61+t62+t63+t65+t66+t67+t68+t69+t70+t71+t72+t73+t74+t75+t76+t77+t78+t79+t86+t87+t88+t89+t93+t94+t95+t96+t97+t98+t99+t100+t101+t102+t103+t106+t107+t108+t109+t110+t111+t112+t113+t114+t169+t170+t171+t172+t173+t174+t175+t176+t177+t178+t179+t180+t181+t182+t183+t184+t186+t212+t213+t214+t215+t221+t222+t223+t224+t225+t226+t227+t228+t229+t232+t233+t234+t235+t236+t237+t238+t239+t240+t241+t242+t243+t249+t250+t252+t253+t254+t255+t256+t257+t258-t2.*t5.*7.043640279267375e-3-t2.*t6.*7.043640279267375e-3+t3.*t5.*1.39394508946875e-2-t2.*t7.*7.043640279267375e-3+t3.*t6.*1.39394508946875e-2-t2.*t8.*7.043640279267375e-3+t3.*t7.*1.39394508946875e-2-t2.*t9.*7.043640279267375e-3+t3.*t8.*1.39394508946875e-2+t3.*t9.*1.39394508946875e-2+(t13.*(t23+t24+t25+t26+t27+t32+t33+t34+t35+t36+t37+t38+t91+t92+t104+t120+t121+t122+t123+t124+t129+t131+t133+t135+t139+t141+t143+t196+t198+t217))./2.0+t13.*(t13.*3.275366401942843e-2+t39+t40+t41+t42+t45+t46+t47+t80+t81+t105+t128+t130+t132+t134+t138+t140+t142+t195+t197+t216+dq1.*t2.*2.7878901789375e-2+dq1.*t3.*1.408728055853475e-2+dq2.*t2.*2.7878901789375e-2+dq2.*t3.*1.408728055853475e-2+dq3.*t2.*2.7878901789375e-2+dq3.*t3.*1.408728055853475e-2+dq4.*t2.*2.7878901789375e-2+dq4.*t3.*1.408728055853475e-2+dq5.*t2.*2.7878901789375e-2+dq5.*t3.*1.408728055853475e-2)-dq1.*dq2.*t2.*1.408728055853475e-2+dq1.*dq2.*t3.*2.7878901789375e-2-dq1.*dq3.*t2.*1.408728055853475e-2+dq1.*dq3.*t3.*2.7878901789375e-2-dq1.*dq4.*t2.*1.408728055853475e-2-dq2.*dq3.*t2.*1.408728055853475e-2+dq1.*dq4.*t3.*2.7878901789375e-2-dq1.*dq5.*t2.*1.408728055853475e-2+dq2.*dq3.*t3.*2.7878901789375e-2-dq2.*dq4.*t2.*1.408728055853475e-2+dq1.*dq5.*t3.*2.7878901789375e-2-dq1.*dq6.*t2.*7.043640279267375e-3+dq2.*dq4.*t3.*2.7878901789375e-2-dq2.*dq5.*t2.*1.408728055853475e-2-dq3.*dq4.*t2.*1.408728055853475e-2+dq1.*dq6.*t3.*1.39394508946875e-2+dq2.*dq5.*t3.*2.7878901789375e-2-dq2.*dq6.*t2.*7.043640279267375e-3+dq3.*dq4.*t3.*2.7878901789375e-2-dq3.*dq5.*t2.*1.408728055853475e-2+dq2.*dq6.*t3.*1.39394508946875e-2+dq3.*dq5.*t3.*2.7878901789375e-2-dq3.*dq6.*t2.*7.043640279267375e-3-dq4.*dq5.*t2.*1.408728055853475e-2+dq3.*dq6.*t3.*1.39394508946875e-2+dq4.*dq5.*t3.*2.7878901789375e-2-dq4.*dq6.*t2.*7.043640279267375e-3+dq4.*dq6.*t3.*1.39394508946875e-2-dq5.*dq6.*t2.*7.043640279267375e-3+dq5.*dq6.*t3.*1.39394508946875e-2];
