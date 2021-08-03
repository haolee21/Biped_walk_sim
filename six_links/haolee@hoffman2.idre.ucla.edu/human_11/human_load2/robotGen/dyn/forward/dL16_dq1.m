function dL16_dq1 = dL16_dq1(in1,in2,sampT)
%DL16_DQ1
%    DL16_DQ1 = DL16_DQ1(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    22-Apr-2021 17:13:45

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
t22 = t3.*3.015881197875e-2;
t25 = dq1.*t2.*3.015881197875e-2;
t26 = dq2.*t2.*3.015881197875e-2;
t27 = dq3.*t2.*3.015881197875e-2;
t28 = dq4.*t2.*3.015881197875e-2;
t29 = dq5.*t2.*3.015881197875e-2;
t30 = dq6.*t2.*1.5079405989375e-2;
t119 = t2.*1.52393250231495e-2;
t120 = dq1.*t3.*1.52393250231495e-2;
t121 = dq2.*t3.*1.52393250231495e-2;
t122 = dq3.*t3.*1.52393250231495e-2;
t123 = dq4.*t3.*1.52393250231495e-2;
t124 = dq5.*t3.*1.52393250231495e-2;
t125 = dq6.*t3.*7.61966251157475e-3;
t14 = cos(t11);
t15 = q3+t11;
t16 = sin(t11);
t24 = -t22;
t41 = t12.*3.015881197875e-2;
t42 = dq1.*t10.*3.015881197875e-2;
t43 = dq2.*t10.*3.015881197875e-2;
t44 = dq3.*t10.*3.015881197875e-2;
t45 = dq4.*t10.*3.015881197875e-2;
t49 = dq1.*t10.*1.5079405989375e-2;
t50 = dq2.*t10.*1.5079405989375e-2;
t51 = dq3.*t10.*1.5079405989375e-2;
t52 = dq4.*t10.*1.5079405989375e-2;
t53 = dq5.*t10.*1.5079405989375e-2;
t54 = dq6.*t10.*1.5079405989375e-2;
t56 = dq1.*dq2.*t12.*1.5079405989375e-2;
t57 = dq1.*dq3.*t12.*1.5079405989375e-2;
t58 = dq1.*dq4.*t12.*1.5079405989375e-2;
t59 = dq2.*dq3.*t12.*1.5079405989375e-2;
t60 = dq2.*dq4.*t12.*1.5079405989375e-2;
t61 = dq3.*dq4.*t12.*1.5079405989375e-2;
t71 = dq1.*dq5.*t12.*7.5397029946875e-3;
t72 = dq1.*dq6.*t12.*7.5397029946875e-3;
t73 = dq2.*dq5.*t12.*7.5397029946875e-3;
t74 = dq2.*dq6.*t12.*7.5397029946875e-3;
t75 = dq3.*dq5.*t12.*7.5397029946875e-3;
t76 = dq3.*dq6.*t12.*7.5397029946875e-3;
t77 = dq4.*dq5.*t12.*7.5397029946875e-3;
t78 = dq4.*dq6.*t12.*7.5397029946875e-3;
t91 = t5.*t12.*7.5397029946875e-3;
t92 = t6.*t12.*7.5397029946875e-3;
t93 = t7.*t12.*7.5397029946875e-3;
t94 = t8.*t12.*7.5397029946875e-3;
t126 = t10.*1.52393250231495e-2;
t128 = dq1.*t12.*7.61966251157475e-3;
t129 = dq1.*t12.*1.52393250231495e-2;
t130 = dq2.*t12.*7.61966251157475e-3;
t131 = dq2.*t12.*1.52393250231495e-2;
t132 = dq3.*t12.*7.61966251157475e-3;
t133 = dq3.*t12.*1.52393250231495e-2;
t134 = dq4.*t12.*7.61966251157475e-3;
t135 = dq4.*t12.*1.52393250231495e-2;
t136 = dq5.*t12.*7.61966251157475e-3;
t137 = dq6.*t12.*7.61966251157475e-3;
t151 = dq1.*dq2.*t10.*7.61966251157475e-3;
t152 = dq1.*dq3.*t10.*7.61966251157475e-3;
t153 = dq1.*dq4.*t10.*7.61966251157475e-3;
t154 = dq2.*dq3.*t10.*7.61966251157475e-3;
t155 = dq1.*dq5.*t10.*3.809831255787375e-3;
t156 = dq2.*dq4.*t10.*7.61966251157475e-3;
t157 = dq1.*dq6.*t10.*3.809831255787375e-3;
t158 = dq2.*dq5.*t10.*3.809831255787375e-3;
t159 = dq3.*dq4.*t10.*7.61966251157475e-3;
t160 = dq2.*dq6.*t10.*3.809831255787375e-3;
t161 = dq3.*dq5.*t10.*3.809831255787375e-3;
t162 = dq3.*dq6.*t10.*3.809831255787375e-3;
t163 = dq4.*dq5.*t10.*3.809831255787375e-3;
t164 = dq4.*dq6.*t10.*3.809831255787375e-3;
t185 = t5.*t10.*3.809831255787375e-3;
t186 = t6.*t10.*3.809831255787375e-3;
t187 = t7.*t10.*3.809831255787375e-3;
t188 = t8.*t10.*3.809831255787375e-3;
t17 = cos(t15);
t18 = q2+t15;
t19 = sin(t15);
t23 = t16.*4.1853045195e-2;
t32 = dq1.*t14.*4.1853045195e-2;
t33 = dq2.*t14.*4.1853045195e-2;
t34 = dq3.*t14.*4.1853045195e-2;
t35 = dq1.*t14.*2.09265225975e-2;
t36 = dq2.*t14.*2.09265225975e-2;
t37 = dq3.*t14.*2.09265225975e-2;
t38 = dq4.*t14.*2.09265225975e-2;
t39 = dq5.*t14.*2.09265225975e-2;
t40 = dq6.*t14.*2.09265225975e-2;
t46 = dq1.*dq2.*t16.*2.09265225975e-2;
t47 = dq1.*dq3.*t16.*2.09265225975e-2;
t48 = dq2.*dq3.*t16.*2.09265225975e-2;
t55 = -t41;
t62 = dq1.*dq4.*t16.*1.046326129875e-2;
t63 = dq1.*dq5.*t16.*1.046326129875e-2;
t64 = dq2.*dq4.*t16.*1.046326129875e-2;
t65 = dq1.*dq6.*t16.*1.046326129875e-2;
t66 = dq2.*dq5.*t16.*1.046326129875e-2;
t67 = dq3.*dq4.*t16.*1.046326129875e-2;
t68 = dq2.*dq6.*t16.*1.046326129875e-2;
t69 = dq3.*dq5.*t16.*1.046326129875e-2;
t70 = dq3.*dq6.*t16.*1.046326129875e-2;
t88 = t5.*t16.*1.046326129875e-2;
t89 = t6.*t16.*1.046326129875e-2;
t90 = t7.*t16.*1.046326129875e-2;
t127 = t14.*2.1148451052534e-2;
t138 = dq1.*t16.*1.0574225526267e-2;
t139 = dq1.*t16.*2.1148451052534e-2;
t140 = dq2.*t16.*1.0574225526267e-2;
t141 = dq2.*t16.*2.1148451052534e-2;
t142 = dq3.*t16.*1.0574225526267e-2;
t143 = dq3.*t16.*2.1148451052534e-2;
t144 = dq4.*t16.*1.0574225526267e-2;
t145 = dq5.*t16.*1.0574225526267e-2;
t146 = dq6.*t16.*1.0574225526267e-2;
t148 = dq1.*dq2.*t14.*1.0574225526267e-2;
t149 = dq1.*dq3.*t14.*1.0574225526267e-2;
t150 = dq2.*dq3.*t14.*1.0574225526267e-2;
t167 = dq1.*dq4.*t14.*5.2871127631335e-3;
t169 = dq1.*dq5.*t14.*5.2871127631335e-3;
t170 = dq2.*dq4.*t14.*5.2871127631335e-3;
t171 = dq1.*dq6.*t14.*5.2871127631335e-3;
t172 = dq2.*dq5.*t14.*5.2871127631335e-3;
t173 = dq3.*dq4.*t14.*5.2871127631335e-3;
t174 = dq2.*dq6.*t14.*5.2871127631335e-3;
t175 = dq3.*dq5.*t14.*5.2871127631335e-3;
t176 = dq3.*dq6.*t14.*5.2871127631335e-3;
t189 = -t151;
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
t203 = t5.*t14.*5.2871127631335e-3;
t204 = t6.*t14.*5.2871127631335e-3;
t205 = t7.*t14.*5.2871127631335e-3;
t224 = -t185;
t225 = -t186;
t226 = -t187;
t227 = -t188;
t20 = sin(t18);
t21 = cos(t18);
t31 = -t23;
t79 = t19.*3.015881197875e-2;
t80 = dq1.*t17.*3.015881197875e-2;
t81 = dq2.*t17.*3.015881197875e-2;
t82 = dq1.*t17.*1.5079405989375e-2;
t83 = dq2.*t17.*1.5079405989375e-2;
t84 = dq3.*t17.*1.5079405989375e-2;
t85 = dq4.*t17.*1.5079405989375e-2;
t86 = dq5.*t17.*1.5079405989375e-2;
t87 = dq6.*t17.*1.5079405989375e-2;
t96 = dq1.*dq3.*t19.*7.5397029946875e-3;
t97 = dq1.*dq4.*t19.*7.5397029946875e-3;
t98 = dq2.*dq3.*t19.*7.5397029946875e-3;
t99 = dq1.*dq5.*t19.*7.5397029946875e-3;
t100 = dq2.*dq4.*t19.*7.5397029946875e-3;
t101 = dq1.*dq6.*t19.*7.5397029946875e-3;
t102 = dq2.*dq5.*t19.*7.5397029946875e-3;
t103 = dq2.*dq6.*t19.*7.5397029946875e-3;
t106 = dq1.*dq2.*t19.*1.5079405989375e-2;
t107 = t5.*t19.*7.5397029946875e-3;
t108 = t6.*t19.*7.5397029946875e-3;
t117 = q1+t18+t115;
t147 = t17.*1.52393250231495e-2;
t165 = -t148;
t166 = -t149;
t168 = -t150;
t177 = dq1.*t19.*7.61966251157475e-3;
t178 = dq1.*t19.*1.52393250231495e-2;
t179 = dq2.*t19.*7.61966251157475e-3;
t180 = dq2.*t19.*1.52393250231495e-2;
t181 = dq3.*t19.*7.61966251157475e-3;
t182 = dq4.*t19.*7.61966251157475e-3;
t183 = dq5.*t19.*7.61966251157475e-3;
t184 = dq6.*t19.*7.61966251157475e-3;
t206 = -t167;
t207 = -t169;
t208 = -t170;
t209 = -t171;
t210 = -t172;
t211 = -t173;
t212 = -t174;
t213 = -t175;
t214 = -t176;
t215 = dq1.*dq2.*t17.*7.61966251157475e-3;
t216 = dq1.*dq3.*t17.*3.809831255787375e-3;
t217 = dq1.*dq4.*t17.*3.809831255787375e-3;
t218 = dq2.*dq3.*t17.*3.809831255787375e-3;
t219 = dq1.*dq5.*t17.*3.809831255787375e-3;
t220 = dq2.*dq4.*t17.*3.809831255787375e-3;
t221 = dq1.*dq6.*t17.*3.809831255787375e-3;
t222 = dq2.*dq5.*t17.*3.809831255787375e-3;
t223 = dq2.*dq6.*t17.*3.809831255787375e-3;
t230 = -t203;
t231 = -t204;
t232 = -t205;
t238 = t5.*t17.*3.809831255787375e-3;
t239 = t6.*t17.*3.809831255787375e-3;
t95 = -t79;
t104 = dq1.*t21.*3.015881197875e-2;
t105 = dq1.*t21.*1.5079405989375e-2;
t109 = dq1.*dq2.*t20.*7.5397029946875e-3;
t110 = dq1.*dq3.*t20.*7.5397029946875e-3;
t111 = dq1.*dq4.*t20.*7.5397029946875e-3;
t112 = dq1.*dq5.*t20.*7.5397029946875e-3;
t113 = dq1.*dq6.*t20.*7.5397029946875e-3;
t114 = t5.*t20.*7.5397029946875e-3;
t118 = sin(t117);
t228 = dq1.*t20.*7.61966251157475e-3;
t229 = dq1.*t20.*1.52393250231495e-2;
t233 = dq1.*dq2.*t21.*3.809831255787375e-3;
t234 = dq1.*dq3.*t21.*3.809831255787375e-3;
t235 = dq1.*dq4.*t21.*3.809831255787375e-3;
t236 = dq1.*dq5.*t21.*3.809831255787375e-3;
t237 = dq1.*dq6.*t21.*3.809831255787375e-3;
t240 = -t215;
t241 = -t216;
t242 = -t217;
t243 = -t218;
t244 = -t219;
t245 = -t220;
t246 = -t221;
t247 = -t222;
t248 = -t223;
t249 = t5.*t21.*3.809831255787375e-3;
t255 = -t238;
t256 = -t239;
t250 = -t233;
t251 = -t234;
t252 = -t235;
t253 = -t236;
t254 = -t237;
t257 = -t249;
t258 = t116.*t118.*4.10601552758294e-20;
dL16_dq1 = [t258+t13.*(t25+t26+t27+t28+t29+t30+t32+t33+t34+t38+t39+t40+t42+t43+t44+t45+t53+t54+t80+t81+t84+t85+t86+t87+t104+t120+t121+t122+t123+t124+t125+t129+t131+t133+t135+t136+t137+t139+t141+t143+t144+t145+t146+t178+t180+t181+t182+t183+t184+t229+t13.*(t20.*(-3.015881197875e-2)+t21.*1.52393250231495e-2+t24+t31+t55+t95+t119+t126+t127+t147+2.248006586491552e-2)+dq2.*t20.*7.61966251157475e-3+dq2.*t21.*1.5079405989375e-2+dq3.*t20.*7.61966251157475e-3+dq3.*t21.*1.5079405989375e-2+dq4.*t20.*7.61966251157475e-3+dq4.*t21.*1.5079405989375e-2+dq5.*t20.*7.61966251157475e-3+dq5.*t21.*1.5079405989375e-2+dq6.*t20.*7.61966251157475e-3+dq6.*t21.*1.5079405989375e-2);t109+t110+t111+t112+t113+t114+t250+t251+t252+t253+t254+t257+t258+(t13.*(t104+t229))./2.0+t13.*(t25+t26+t27+t28+t29+t30+t32+t33+t34+t38+t39+t40+t42+t43+t44+t45+t53+t54+t80+t81+t84+t85+t86+t87+t105+t120+t121+t122+t123+t124+t125+t129+t131+t133+t135+t136+t137+t139+t141+t143+t144+t145+t146+t178+t180+t181+t182+t183+t184+t228+t13.*(t24+t31+t55+t95+t119+t126+t127+t147+2.248006586491552e-2));t96+t97+t98+t99+t100+t101+t102+t103+t106+t107+t108+t109+t110+t111+t112+t113+t114+t240+t241+t242+t243+t244+t245+t246+t247+t248+t250+t251+t252+t253+t254+t255+t256+t257+t258+t13.*(t25+t26+t27+t28+t29+t30+t32+t33+t34+t38+t39+t40+t42+t43+t44+t45+t53+t54+t82+t83+t105+t120+t121+t122+t123+t124+t125+t129+t131+t133+t135+t136+t137+t139+t141+t143+t144+t145+t146+t177+t179+t228+t13.*(t24+t31+t55+t119+t126+t127+2.248006586491552e-2))+(t13.*(t80+t81+t104+t178+t180+t229))./2.0;t46+t47+t48+t62+t63+t64+t65+t66+t67+t68+t69+t70+t88+t89+t90+t96+t97+t98+t99+t100+t101+t102+t103+t106+t107+t108+t109+t110+t111+t112+t113+t114+t165+t166+t168+t206+t207+t208+t209+t210+t211+t212+t213+t214+t230+t231+t232+t240+t241+t242+t243+t244+t245+t246+t247+t248+t250+t251+t252+t253+t254+t255+t256+t257+t258+t13.*(t25+t26+t27+t28+t29+t30+t35+t36+t37+t42+t43+t44+t45+t53+t54+t82+t83+t105+t120+t121+t122+t123+t124+t125+t129+t131+t133+t135+t136+t137+t138+t140+t142+t177+t179+t228+t13.*(t24+t55+t119+t126+2.248006586491552e-2))+(t13.*(t32+t33+t34+t80+t81+t104+t139+t141+t143+t178+t180+t229))./2.0;t46+t47+t48+t56+t57+t58+t59+t60+t61+t62+t63+t64+t65+t66+t67+t68+t69+t70+t71+t72+t73+t74+t75+t76+t77+t78+t88+t89+t90+t91+t92+t93+t94+t96+t97+t98+t99+t100+t101+t102+t103+t106+t107+t108+t109+t110+t111+t112+t113+t114+t165+t166+t168+t189+t190+t191+t192+t193+t194+t195+t196+t197+t198+t199+t200+t201+t202+t206+t207+t208+t209+t210+t211+t212+t213+t214+t224+t225+t226+t227+t230+t231+t232+t240+t241+t242+t243+t244+t245+t246+t247+t248+t250+t251+t252+t253+t254+t255+t256+t257+t258+(t13.*(t32+t33+t34+t42+t43+t44+t45+t80+t81+t104+t129+t131+t133+t135+t139+t141+t143+t178+t180+t229))./2.0+t13.*(t25+t26+t27+t28+t29+t30+t35+t36+t37+t49+t50+t51+t52+t82+t83+t105+t120+t121+t122+t123+t124+t125+t128+t130+t132+t134+t138+t140+t142+t177+t179+t228+t13.*(t24+t119+2.248006586491552e-2));t46+t47+t48+t56+t57+t58+t59+t60+t61+t62+t63+t64+t65+t66+t67+t68+t69+t70+t71+t72+t73+t74+t75+t76+t77+t78+t88+t89+t90+t91+t92+t93+t94+t96+t97+t98+t99+t100+t101+t102+t103+t106+t107+t108+t109+t110+t111+t112+t113+t114+t165+t166+t168+t189+t190+t191+t192+t193+t194+t195+t196+t197+t198+t199+t200+t201+t202+t206+t207+t208+t209+t210+t211+t212+t213+t214+t224+t225+t226+t227+t230+t231+t232+t240+t241+t242+t243+t244+t245+t246+t247+t248+t250+t251+t252+t253+t254+t255+t256+t257+t258-t2.*t5.*3.809831255787375e-3-t2.*t6.*3.809831255787375e-3+t3.*t5.*7.5397029946875e-3-t2.*t7.*3.809831255787375e-3+t3.*t6.*7.5397029946875e-3-t2.*t8.*3.809831255787375e-3+t3.*t7.*7.5397029946875e-3-t2.*t9.*3.809831255787375e-3+t3.*t8.*7.5397029946875e-3+t3.*t9.*7.5397029946875e-3+t13.*(t13.*2.248006586491552e-2+t35+t36+t37+t49+t50+t51+t52+t82+t83+t105+t128+t130+t132+t134+t138+t140+t142+t177+t179+t228+dq1.*t2.*1.5079405989375e-2+dq1.*t3.*7.61966251157475e-3+dq2.*t2.*1.5079405989375e-2+dq2.*t3.*7.61966251157475e-3+dq3.*t2.*1.5079405989375e-2+dq3.*t3.*7.61966251157475e-3+dq4.*t2.*1.5079405989375e-2+dq4.*t3.*7.61966251157475e-3+dq5.*t2.*1.5079405989375e-2+dq5.*t3.*7.61966251157475e-3)+(t13.*(t25+t26+t27+t28+t29+t32+t33+t34+t42+t43+t44+t45+t80+t81+t104+t120+t121+t122+t123+t124+t129+t131+t133+t135+t139+t141+t143+t178+t180+t229))./2.0-dq1.*dq2.*t2.*7.61966251157475e-3+dq1.*dq2.*t3.*1.5079405989375e-2-dq1.*dq3.*t2.*7.61966251157475e-3+dq1.*dq3.*t3.*1.5079405989375e-2-dq1.*dq4.*t2.*7.61966251157475e-3-dq2.*dq3.*t2.*7.61966251157475e-3+dq1.*dq4.*t3.*1.5079405989375e-2-dq1.*dq5.*t2.*7.61966251157475e-3+dq2.*dq3.*t3.*1.5079405989375e-2-dq2.*dq4.*t2.*7.61966251157475e-3+dq1.*dq5.*t3.*1.5079405989375e-2-dq1.*dq6.*t2.*3.809831255787375e-3+dq2.*dq4.*t3.*1.5079405989375e-2-dq2.*dq5.*t2.*7.61966251157475e-3-dq3.*dq4.*t2.*7.61966251157475e-3+dq1.*dq6.*t3.*7.5397029946875e-3+dq2.*dq5.*t3.*1.5079405989375e-2-dq2.*dq6.*t2.*3.809831255787375e-3+dq3.*dq4.*t3.*1.5079405989375e-2-dq3.*dq5.*t2.*7.61966251157475e-3+dq2.*dq6.*t3.*7.5397029946875e-3+dq3.*dq5.*t3.*1.5079405989375e-2-dq3.*dq6.*t2.*3.809831255787375e-3-dq4.*dq5.*t2.*7.61966251157475e-3+dq3.*dq6.*t3.*7.5397029946875e-3+dq4.*dq5.*t3.*1.5079405989375e-2-dq4.*dq6.*t2.*3.809831255787375e-3+dq4.*dq6.*t3.*7.5397029946875e-3-dq5.*dq6.*t2.*3.809831255787375e-3+dq5.*dq6.*t3.*7.5397029946875e-3];
