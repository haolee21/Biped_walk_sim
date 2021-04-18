function dL23_dq2 = dL23_dq2(in1,in2,sampT)
%DL23_DQ2
%    DL23_DQ2 = DL23_DQ2(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    16-Apr-2021 12:57:51

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
t2 = cos(q3);
t3 = cos(q4);
t4 = cos(q5);
t5 = cos(q6);
t6 = sin(q3);
t7 = sin(q4);
t8 = sin(q5);
t9 = sin(q6);
t10 = q2+q3;
t11 = q3+q4;
t12 = q4+q5;
t13 = q5+q6;
t14 = dq1.^2;
t15 = dq2.^2;
t28 = 1.0./sampT;
t100 = atan(1.979012320620293);
t101 = 4.501575681747185e+18;
t16 = cos(t10);
t17 = cos(t11);
t18 = cos(t12);
t19 = cos(t13);
t20 = q1+t10;
t21 = q4+t10;
t22 = q5+t11;
t23 = q6+t12;
t24 = sin(t10);
t25 = sin(t11);
t26 = sin(t12);
t27 = sin(t13);
t33 = t10+t12;
t34 = t11+t13;
t49 = t9.*1.115156071575e-1;
t104 = t5.*5.6349122234139e-2;
t141 = t3.*3.12508296797445;
t153 = t2.*1.389349013512154e+1;
t161 = dq1.*t6.*1.389349013512154e+1;
t162 = dq2.*t6.*1.389349013512154e+1;
t163 = dq3.*t6.*6.946745067560768;
t178 = t4.*1.568437764540413;
t29 = cos(t21);
t30 = cos(t22);
t31 = cos(t23);
t32 = q4+t20;
t35 = sin(t20);
t36 = sin(t21);
t37 = sin(t22);
t38 = sin(t23);
t39 = cos(t33);
t40 = cos(t34);
t41 = t12+t20;
t42 = t10+t23;
t44 = sin(t33);
t45 = sin(t34);
t50 = -t49;
t51 = t27.*1.115156071575e-1;
t55 = t27.*5.575780357875e-2;
t56 = dq1.*t19.*1.115156071575e-1;
t57 = dq2.*t19.*1.115156071575e-1;
t58 = dq3.*t19.*1.115156071575e-1;
t59 = dq4.*t19.*1.115156071575e-1;
t63 = dq5.*t19.*5.575780357875e-2;
t64 = dq6.*t19.*5.575780357875e-2;
t102 = t20+t23+t100;
t105 = t19.*5.6349122234139e-2;
t106 = dq1.*t27.*5.6349122234139e-2;
t107 = dq2.*t27.*5.6349122234139e-2;
t108 = dq3.*t27.*5.6349122234139e-2;
t109 = dq4.*t27.*5.6349122234139e-2;
t110 = t19.*2.81745611170695e-2;
t113 = dq5.*t27.*2.81745611170695e-2;
t114 = dq6.*t27.*2.81745611170695e-2;
t159 = t18.*2.351521727415;
t160 = t18.*4.70304345483;
t166 = dq1.*t26.*4.70304345483;
t167 = dq2.*t26.*4.70304345483;
t168 = dq3.*t26.*4.70304345483;
t169 = dq4.*t26.*2.351521727415;
t170 = dq5.*t26.*2.351521727415;
t181 = t17.*1.125949010520206;
t189 = dq1.*t24.*6.946745067560768;
t190 = dq1.*t24.*1.389349013512154e+1;
t191 = dq1.*t25.*5.629745052601031e-1;
t192 = dq1.*t25.*1.125949010520206;
t193 = dq2.*t25.*5.629745052601031e-1;
t194 = dq2.*t25.*1.125949010520206;
t195 = dq3.*t25.*5.629745052601031e-1;
t196 = dq4.*t25.*5.629745052601031e-1;
t207 = dq1.*dq2.*t16.*3.473372533780384;
t208 = dq1.*dq3.*t16.*3.473372533780384;
t209 = dq1.*dq2.*t17.*5.629745052601031e-1;
t220 = t14.*t16.*3.473372533780384;
t224 = dq1.*dq3.*t17.*2.814872526300516e-1;
t225 = dq1.*dq4.*t17.*2.814872526300516e-1;
t226 = dq2.*dq3.*t17.*2.814872526300516e-1;
t227 = dq2.*dq4.*t17.*2.814872526300516e-1;
t235 = t14.*t17.*2.814872526300516e-1;
t236 = t15.*t17.*2.814872526300516e-1;
t43 = sin(t32);
t46 = sin(t41);
t47 = sin(t42);
t48 = cos(t42);
t52 = t38.*1.5475635279e-1;
t53 = -t51;
t54 = t38.*7.7378176395e-2;
t60 = dq4.*t31.*7.7378176395e-2;
t61 = dq5.*t31.*7.7378176395e-2;
t62 = dq6.*t31.*7.7378176395e-2;
t67 = -t55;
t68 = dq1.*t31.*1.5475635279e-1;
t69 = dq2.*t31.*1.5475635279e-1;
t70 = dq3.*t31.*1.5475635279e-1;
t71 = t45.*5.575780357875e-2;
t72 = dq1.*t40.*2.7878901789375e-2;
t73 = dq2.*t40.*2.7878901789375e-2;
t74 = dq3.*t40.*2.7878901789375e-2;
t75 = dq4.*t40.*2.7878901789375e-2;
t76 = dq5.*t40.*2.7878901789375e-2;
t77 = dq6.*t40.*2.7878901789375e-2;
t79 = dq1.*t40.*5.575780357875e-2;
t80 = dq2.*t40.*5.575780357875e-2;
t81 = dq1.*dq3.*t45.*1.39394508946875e-2;
t82 = dq1.*dq4.*t45.*1.39394508946875e-2;
t83 = dq2.*dq3.*t45.*1.39394508946875e-2;
t84 = dq1.*dq5.*t45.*1.39394508946875e-2;
t85 = dq2.*dq4.*t45.*1.39394508946875e-2;
t86 = dq1.*dq6.*t45.*1.39394508946875e-2;
t87 = dq2.*dq5.*t45.*1.39394508946875e-2;
t88 = dq2.*dq6.*t45.*1.39394508946875e-2;
t91 = dq1.*dq2.*t45.*2.7878901789375e-2;
t92 = t14.*t45.*1.39394508946875e-2;
t93 = t15.*t45.*1.39394508946875e-2;
t103 = sin(t102);
t111 = t31.*3.9099390937974e-2;
t112 = t31.*7.8198781875948e-2;
t115 = dq1.*t38.*7.8198781875948e-2;
t116 = dq2.*t38.*7.8198781875948e-2;
t117 = dq3.*t38.*7.8198781875948e-2;
t118 = dq4.*t38.*3.9099390937974e-2;
t119 = dq5.*t38.*3.9099390937974e-2;
t120 = dq6.*t38.*3.9099390937974e-2;
t121 = t40.*2.81745611170695e-2;
t122 = dq1.*t45.*1.408728055853475e-2;
t123 = dq1.*t45.*2.81745611170695e-2;
t124 = dq2.*t45.*1.408728055853475e-2;
t125 = dq2.*t45.*2.81745611170695e-2;
t126 = dq3.*t45.*1.408728055853475e-2;
t127 = dq4.*t45.*1.408728055853475e-2;
t128 = dq5.*t45.*1.408728055853475e-2;
t129 = dq6.*t45.*1.408728055853475e-2;
t130 = dq1.*dq2.*t40.*1.408728055853475e-2;
t131 = dq1.*dq3.*t40.*7.043640279267375e-3;
t132 = dq1.*dq4.*t40.*7.043640279267375e-3;
t133 = dq2.*dq3.*t40.*7.043640279267375e-3;
t134 = dq1.*dq5.*t40.*7.043640279267375e-3;
t135 = dq2.*dq4.*t40.*7.043640279267375e-3;
t136 = dq1.*dq6.*t40.*7.043640279267375e-3;
t137 = dq2.*dq5.*t40.*7.043640279267375e-3;
t138 = dq2.*dq6.*t40.*7.043640279267375e-3;
t142 = t14.*t40.*7.043640279267375e-3;
t143 = t15.*t40.*7.043640279267375e-3;
t179 = t30.*1.69447889181375;
t182 = dq1.*t37.*8.47239445906875e-1;
t183 = dq1.*t37.*1.69447889181375;
t184 = dq2.*t37.*8.47239445906875e-1;
t185 = dq2.*t37.*1.69447889181375;
t186 = dq3.*t37.*8.47239445906875e-1;
t187 = dq4.*t37.*8.47239445906875e-1;
t188 = dq5.*t37.*8.47239445906875e-1;
t197 = dq1.*dq2.*t30.*8.47239445906875e-1;
t198 = dq1.*t44.*8.47239445906875e-1;
t199 = dq1.*t44.*1.69447889181375;
t201 = dq1.*dq3.*t30.*4.236197229534375e-1;
t202 = dq1.*dq4.*t30.*4.236197229534375e-1;
t203 = dq2.*dq3.*t30.*4.236197229534375e-1;
t204 = dq1.*dq5.*t30.*4.236197229534375e-1;
t205 = dq2.*dq4.*t30.*4.236197229534375e-1;
t206 = dq2.*dq5.*t30.*4.236197229534375e-1;
t210 = dq1.*t36.*5.629745052601031e-1;
t211 = dq1.*t36.*1.125949010520206;
t212 = t14.*t30.*4.236197229534375e-1;
t213 = t15.*t30.*4.236197229534375e-1;
t221 = -t207;
t222 = -t208;
t223 = -t209;
t228 = dq1.*dq2.*t39.*4.236197229534375e-1;
t229 = dq1.*dq3.*t39.*4.236197229534375e-1;
t230 = dq1.*dq4.*t39.*4.236197229534375e-1;
t231 = dq1.*dq5.*t39.*4.236197229534375e-1;
t234 = -t220;
t237 = -t224;
t238 = -t225;
t239 = -t226;
t240 = -t227;
t241 = t14.*t39.*4.236197229534375e-1;
t246 = dq1.*dq2.*t29.*2.814872526300516e-1;
t247 = dq1.*dq3.*t29.*2.814872526300516e-1;
t248 = dq1.*dq4.*t29.*2.814872526300516e-1;
t249 = -t235;
t250 = -t236;
t252 = t14.*t29.*2.814872526300516e-1;
t257 = t35.*5.362019047677137e+1;
t65 = -t52;
t66 = -t54;
t78 = -t71;
t89 = dq1.*t48.*5.575780357875e-2;
t90 = dq1.*t48.*2.7878901789375e-2;
t94 = dq1.*dq2.*t47.*1.39394508946875e-2;
t95 = dq1.*dq3.*t47.*1.39394508946875e-2;
t96 = dq1.*dq4.*t47.*1.39394508946875e-2;
t97 = dq1.*dq5.*t47.*1.39394508946875e-2;
t98 = dq1.*dq6.*t47.*1.39394508946875e-2;
t99 = t14.*t47.*1.39394508946875e-2;
t139 = dq1.*t47.*1.408728055853475e-2;
t140 = dq1.*t47.*2.81745611170695e-2;
t144 = -t130;
t145 = -t131;
t146 = -t132;
t147 = -t133;
t148 = -t134;
t149 = -t135;
t150 = -t136;
t151 = -t137;
t152 = -t138;
t154 = dq1.*dq2.*t48.*7.043640279267375e-3;
t155 = dq1.*dq3.*t48.*7.043640279267375e-3;
t156 = dq1.*dq4.*t48.*7.043640279267375e-3;
t157 = dq1.*dq5.*t48.*7.043640279267375e-3;
t158 = dq1.*dq6.*t48.*7.043640279267375e-3;
t164 = -t142;
t165 = -t143;
t171 = t46.*9.2688959120625;
t172 = t14.*t48.*7.043640279267375e-3;
t200 = -t197;
t214 = -t201;
t215 = -t202;
t216 = -t203;
t217 = -t204;
t218 = -t205;
t219 = -t206;
t232 = -t212;
t233 = -t213;
t242 = -t228;
t243 = -t229;
t244 = -t230;
t245 = -t231;
t251 = -t241;
t253 = -t246;
t254 = -t247;
t255 = -t248;
t256 = -t252;
t258 = t43.*6.159005126130938;
t259 = t101.*t103.*7.591227646486231e-20;
t173 = -t154;
t174 = -t155;
t175 = -t156;
t176 = -t157;
t177 = -t158;
t180 = -t172;
dL23_dq2 = [t171+t257+t258+t259-t28.*(t74+t75+t76+t77+t79+t80+t89+t123+t125+t126+t127+t128+t129+t140+t161+t162+t163+t183+t185+t186+t187+t188+t190+t192+t194+t195+t196+t199+t211+dq2.*t24.*6.946745067560768+dq3.*t24.*6.946745067560768+dq2.*t36.*5.629745052601031e-1+dq3.*t36.*5.629745052601031e-1+dq4.*t36.*5.629745052601031e-1+dq2.*t44.*8.47239445906875e-1+dq3.*t44.*8.47239445906875e-1+dq4.*t44.*8.47239445906875e-1+dq2.*t47.*1.408728055853475e-2+dq5.*t44.*8.47239445906875e-1+dq2.*t48.*2.7878901789375e-2+dq3.*t47.*1.408728055853475e-2+dq3.*t48.*2.7878901789375e-2+dq4.*t47.*1.408728055853475e-2+dq4.*t48.*2.7878901789375e-2+dq5.*t47.*1.408728055853475e-2+dq5.*t48.*2.7878901789375e-2+dq6.*t47.*1.408728055853475e-2+dq6.*t48.*2.7878901789375e-2-t28.*(t16.*1.389349013512154e+1+t29.*1.125949010520206+t39.*1.69447889181375-t47.*5.575780357875e-2+t48.*2.81745611170695e-2+t50+t53+t65+t78+t104+t105+t112+t121+t141+t153+t160+t178+t179+t181+2.170120865438231e+1));t94+t95+t96+t97+t98+t99+t171+t173+t174+t175+t176+t177+t180+t221+t222+t234+t242+t243+t244+t245+t251+t253+t254+t255+t256+t257+t258+t259-(t28.*(t89+t140+t190+t199+t211))./2.0-t28.*(t74+t75+t76+t77+t79+t80+t90+t123+t125+t126+t127+t128+t129+t139+t161+t162+t163+t183+t185+t186+t187+t188+t189+t192+t194+t195+t196+t198+t210-t28.*(t50+t53+t65+t78+t104+t105+t112+t121+t141+t153+t160+t178+t179+t181+2.170120865438231e+1));t81+t82+t83+t84+t85+t86+t87+t88+t91+t92+t93+t94+t95+t96+t97+t98+t99+t144+t145+t146+t147+t148+t149+t150+t151+t152+t164+t165+t171+t173+t174+t175+t176+t177+t180+t200+t214+t215+t216+t217+t218+t219+t221+t222+t223+t232+t233+t234+t237+t238+t239+t240+t242+t243+t244+t245+t249+t250+t251+t253+t254+t255+t256+t257+t258+t259-t2.*t14.*3.473372533780384-t2.*t15.*3.473372533780384-t28.*(t72+t73+t90+t122+t124+t139+t182+t184+t189+t191+t193+t198+t210+dq1.*t6.*6.946745067560768+dq2.*t6.*6.946745067560768-t28.*(t50+t53+t65+t104+t105+t112+t141+t160+t178+2.170120865438231e+1))-(t28.*(t79+t80+t89+t123+t125+t140+t161+t162+t183+t185+t190+t192+t194+t199+t211))./2.0-dq1.*dq2.*t2.*6.946745067560768-dq1.*dq3.*t2.*3.473372533780384-dq2.*dq3.*t2.*3.473372533780384;t81+t82+t83+t84+t85+t86+t87+t88+t91+t92+t93+t94+t95+t96+t97+t98+t99+t144+t145+t146+t147+t148+t149+t150+t151+t152+t164+t165+t171+t173+t174+t175+t176+t177+t180+t200+t214+t215+t216+t217+t218+t219+t223+t232+t233+t237+t238+t239+t240+t242+t243+t244+t245+t249+t250+t251+t253+t254+t255+t256+t258+t259-(t28.*(t60+t61+t62+t68+t69+t70+t79+t80+t89+t115+t116+t117+t118+t119+t120+t123+t125+t140+t166+t167+t168+t169+t170+t183+t185+t192+t194+t199+t211+dq1.*t7.*3.12508296797445+dq2.*t7.*3.12508296797445+dq3.*t7.*3.12508296797445+dq4.*t7.*1.562541483987225))./2.0-t28.*(t72+t73+t90+t122+t124+t139+t182+t184+t191+t193+t198+t210-t28.*(t3.*1.562541483987225+t50+t53+t66+t104+t105+t111+t159+t178+2.461047736910614));t81+t82+t83+t84+t85+t86+t87+t88+t91+t92+t93+t94+t95+t96+t97+t98+t99+t144+t145+t146+t147+t148+t149+t150+t151+t152+t164+t165+t171+t173+t174+t175+t176+t177+t180+t200+t214+t215+t216+t217+t218+t219+t232+t233+t242+t243+t244+t245+t251+t259-(t28.*(t56+t57+t58+t59+t60+t61+t62+t63+t64+t68+t69+t70+t79+t80+t89+t106+t107+t108+t109+t113+t114+t115+t116+t117+t118+t119+t120+t123+t125+t140+t166+t167+t168+t169+t170+t183+t185+t199+dq1.*t8.*1.568437764540413+dq2.*t8.*1.568437764540413+dq3.*t8.*1.568437764540413+dq4.*t8.*1.568437764540413+dq5.*t8.*7.842188822702063e-1))./2.0-t28.*(t72+t73+t90+t122+t124+t139+t182+t184+t198-t28.*(t4.*7.842188822702063e-1+t50+t66+t67+t104+t110+t111+t159+1.485806987821211));t81+t82+t83+t84+t85+t86+t87+t88+t91+t92+t93+t94+t95+t96+t97+t98+t99+t144+t145+t146+t147+t148+t149+t150+t151+t152+t164+t165+t173+t174+t175+t176+t177+t180+t259-t28.*(t72+t73+t90+t122+t124+t139-t28.*(t5.*2.81745611170695e-2-t9.*5.575780357875e-2+t66+t67+t110+t111+3.275366401942843e-2))-(t28.*(t56+t57+t58+t59+t60+t61+t62+t63+t64+t68+t69+t70+t79+t80+t89+t106+t107+t108+t109+t113+t114+t115+t116+t117+t118+t119+t120+t123+t125+t140+dq1.*t5.*1.115156071575e-1+dq2.*t5.*1.115156071575e-1+dq3.*t5.*1.115156071575e-1+dq4.*t5.*1.115156071575e-1+dq1.*t9.*5.6349122234139e-2+dq5.*t5.*1.115156071575e-1+dq2.*t9.*5.6349122234139e-2+dq6.*t5.*5.575780357875e-2+dq3.*t9.*5.6349122234139e-2+dq4.*t9.*5.6349122234139e-2+dq5.*t9.*5.6349122234139e-2+dq6.*t9.*2.81745611170695e-2))./2.0];
