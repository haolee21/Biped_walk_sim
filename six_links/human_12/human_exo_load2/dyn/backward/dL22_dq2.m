function dL22_dq2 = dL22_dq2(in1,in2,sampT)
%DL22_DQ2
%    DL22_DQ2 = DL22_DQ2(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    01-Aug-2021 18:01:35

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
t2 = cos(q2);
t3 = cos(q3);
t4 = cos(q4);
t5 = cos(q5);
t6 = cos(q6);
t7 = sin(q2);
t8 = sin(q3);
t9 = sin(q4);
t10 = sin(q5);
t11 = sin(q6);
t12 = q1+q2;
t13 = q2+q3;
t14 = q3+q4;
t15 = q4+q5;
t16 = q5+q6;
t17 = dq1.^2;
t31 = 1.0./sampT;
t92 = atan(1.979012320620293);
t93 = 4.501575681747185e+18;
t18 = cos(t13);
t19 = cos(t14);
t20 = cos(t15);
t21 = cos(t16);
t22 = q3+t12;
t23 = q4+t13;
t24 = q5+t14;
t25 = q6+t15;
t26 = sin(t12);
t27 = sin(t13);
t28 = sin(t14);
t29 = sin(t15);
t30 = sin(t16);
t35 = t12+t14;
t36 = t13+t15;
t37 = t14+t16;
t52 = t11.*1.115156071575e-1;
t96 = t6.*5.6349122234139e-2;
t123 = t4.*3.12508296797445;
t124 = dq1.*t7.*2.075920071143625e+1;
t125 = t3.*3.339810798925425e+1;
t145 = t5.*1.568437764540413;
t32 = cos(t23);
t33 = cos(t24);
t34 = cos(t25);
t38 = sin(t22);
t39 = sin(t23);
t40 = sin(t24);
t41 = sin(t25);
t42 = cos(t36);
t43 = cos(t37);
t44 = t12+t24;
t45 = t13+t25;
t46 = sin(t35);
t47 = sin(t36);
t48 = sin(t37);
t53 = -t52;
t54 = t30.*1.115156071575e-1;
t58 = t30.*5.575780357875e-2;
t59 = dq1.*t21.*1.115156071575e-1;
t60 = dq2.*t21.*1.115156071575e-1;
t61 = dq3.*t21.*1.115156071575e-1;
t62 = dq4.*t21.*1.115156071575e-1;
t66 = dq5.*t21.*5.575780357875e-2;
t67 = dq6.*t21.*5.575780357875e-2;
t94 = t16+t35+t92;
t97 = t21.*5.6349122234139e-2;
t98 = dq1.*t30.*5.6349122234139e-2;
t99 = dq2.*t30.*5.6349122234139e-2;
t100 = dq3.*t30.*5.6349122234139e-2;
t101 = dq4.*t30.*5.6349122234139e-2;
t102 = t21.*2.81745611170695e-2;
t105 = dq5.*t30.*2.81745611170695e-2;
t106 = dq6.*t30.*2.81745611170695e-2;
t131 = t20.*2.351521727415;
t132 = t20.*4.70304345483;
t133 = dq1.*t29.*4.70304345483;
t134 = dq2.*t29.*4.70304345483;
t135 = dq3.*t29.*4.70304345483;
t136 = dq4.*t29.*2.351521727415;
t137 = dq5.*t29.*2.351521727415;
t149 = dq1.*t27.*8.349526997313563;
t150 = dq1.*t27.*1.669905399462713e+1;
t151 = t19.*1.125949010520206;
t152 = t19.*2.251898021040413;
t158 = dq1.*t28.*2.251898021040413;
t159 = dq2.*t28.*2.251898021040413;
t160 = dq3.*t28.*1.125949010520206;
t161 = dq4.*t28.*1.125949010520206;
t166 = dq1.*dq2.*t18.*4.174763498656781;
t167 = dq1.*dq3.*t18.*4.174763498656781;
t172 = t17.*t18.*4.174763498656781;
t191 = t26.*1.185331825988691e+2;
t49 = sin(t44);
t50 = sin(t45);
t51 = cos(t45);
t55 = t41.*1.5475635279e-1;
t56 = -t54;
t57 = t41.*7.7378176395e-2;
t63 = dq4.*t34.*7.7378176395e-2;
t64 = dq5.*t34.*7.7378176395e-2;
t65 = dq6.*t34.*7.7378176395e-2;
t69 = t48.*1.115156071575e-1;
t71 = -t58;
t72 = dq1.*t34.*1.5475635279e-1;
t73 = dq2.*t34.*1.5475635279e-1;
t74 = dq3.*t34.*1.5475635279e-1;
t76 = t48.*5.575780357875e-2;
t77 = dq1.*t43.*1.115156071575e-1;
t78 = dq2.*t43.*1.115156071575e-1;
t80 = dq3.*t43.*5.575780357875e-2;
t81 = dq4.*t43.*5.575780357875e-2;
t82 = dq5.*t43.*5.575780357875e-2;
t83 = dq6.*t43.*5.575780357875e-2;
t95 = sin(t94);
t103 = t34.*3.9099390937974e-2;
t104 = t34.*7.8198781875948e-2;
t107 = dq1.*t41.*7.8198781875948e-2;
t108 = dq2.*t41.*7.8198781875948e-2;
t109 = dq3.*t41.*7.8198781875948e-2;
t110 = dq4.*t41.*3.9099390937974e-2;
t111 = dq5.*t41.*3.9099390937974e-2;
t112 = dq6.*t41.*3.9099390937974e-2;
t113 = t43.*5.6349122234139e-2;
t114 = t43.*2.81745611170695e-2;
t115 = dq1.*t48.*5.6349122234139e-2;
t116 = dq2.*t48.*5.6349122234139e-2;
t117 = dq3.*t48.*2.81745611170695e-2;
t118 = dq4.*t48.*2.81745611170695e-2;
t119 = dq5.*t48.*2.81745611170695e-2;
t120 = dq6.*t48.*2.81745611170695e-2;
t146 = t33.*1.69447889181375;
t147 = t33.*3.3889577836275;
t153 = dq1.*t40.*3.3889577836275;
t154 = dq2.*t40.*3.3889577836275;
t155 = dq3.*t40.*1.69447889181375;
t156 = dq4.*t40.*1.69447889181375;
t157 = dq5.*t40.*1.69447889181375;
t162 = dq1.*t47.*8.47239445906875e-1;
t163 = dq1.*t47.*1.69447889181375;
t164 = dq1.*t39.*5.629745052601031e-1;
t165 = dq1.*t39.*1.125949010520206;
t168 = dq1.*dq2.*t42.*4.236197229534375e-1;
t169 = dq1.*dq3.*t42.*4.236197229534375e-1;
t170 = dq1.*dq4.*t42.*4.236197229534375e-1;
t171 = dq1.*dq5.*t42.*4.236197229534375e-1;
t173 = -t166;
t174 = -t167;
t175 = t17.*t42.*4.236197229534375e-1;
t180 = dq1.*dq2.*t32.*2.814872526300516e-1;
t181 = dq1.*dq3.*t32.*2.814872526300516e-1;
t182 = dq1.*dq4.*t32.*2.814872526300516e-1;
t183 = -t172;
t185 = t17.*t32.*2.814872526300516e-1;
t190 = t38.*6.896678435529809e+1;
t192 = t46.*6.159005126130938;
t68 = -t55;
t70 = -t57;
t75 = -t69;
t79 = -t76;
t84 = dq1.*t51.*5.575780357875e-2;
t85 = dq1.*t51.*2.7878901789375e-2;
t86 = dq1.*dq2.*t50.*1.39394508946875e-2;
t87 = dq1.*dq3.*t50.*1.39394508946875e-2;
t88 = dq1.*dq4.*t50.*1.39394508946875e-2;
t89 = dq1.*dq5.*t50.*1.39394508946875e-2;
t90 = dq1.*dq6.*t50.*1.39394508946875e-2;
t91 = t17.*t50.*1.39394508946875e-2;
t121 = dq1.*t50.*1.408728055853475e-2;
t122 = dq1.*t50.*2.81745611170695e-2;
t126 = dq1.*dq2.*t51.*7.043640279267375e-3;
t127 = dq1.*dq3.*t51.*7.043640279267375e-3;
t128 = dq1.*dq4.*t51.*7.043640279267375e-3;
t129 = dq1.*dq5.*t51.*7.043640279267375e-3;
t130 = dq1.*dq6.*t51.*7.043640279267375e-3;
t138 = t49.*9.2688959120625;
t139 = t17.*t51.*7.043640279267375e-3;
t176 = -t168;
t177 = -t169;
t178 = -t170;
t179 = -t171;
t184 = -t175;
t186 = -t180;
t187 = -t181;
t188 = -t182;
t189 = -t185;
t193 = t93.*t95.*7.591227646486231e-20;
t140 = -t126;
t141 = -t127;
t142 = -t128;
t143 = -t129;
t144 = -t130;
t148 = -t139;
dL22_dq2 = [t138+t190+t191+t192+t193-t31.*(t84+t122+t124+t150+t163+t165-t31.*(t2.*2.075920071143625e+1+t18.*1.669905399462713e+1+t32.*1.125949010520206+t42.*1.69447889181375-t50.*5.575780357875e-2+t51.*2.81745611170695e-2+t53+t56+t68+t75+t96+t97+t104+t113+t123+t125+t132+t145+t147+t152+4.707034784245229e+1)+dq2.*t7.*1.037960035571812e+1+dq2.*t27.*8.349526997313563+dq3.*t27.*8.349526997313563+dq2.*t39.*5.629745052601031e-1+dq3.*t39.*5.629745052601031e-1+dq4.*t39.*5.629745052601031e-1+dq2.*t47.*8.47239445906875e-1+dq3.*t47.*8.47239445906875e-1+dq4.*t47.*8.47239445906875e-1+dq2.*t50.*1.408728055853475e-2+dq5.*t47.*8.47239445906875e-1+dq2.*t51.*2.7878901789375e-2+dq3.*t50.*1.408728055853475e-2+dq3.*t51.*2.7878901789375e-2+dq4.*t50.*1.408728055853475e-2+dq4.*t51.*2.7878901789375e-2+dq5.*t50.*1.408728055853475e-2+dq5.*t51.*2.7878901789375e-2+dq6.*t50.*1.408728055853475e-2+dq6.*t51.*2.7878901789375e-2);t86+t87+t88+t89+t90+t91+t138+t140+t141+t142+t143+t144+t148+t173+t174+t176+t177+t178+t179+t183+t184+t186+t187+t188+t189+t190+t191+t192+t193-t31.*(t85+t121+t149+t162+t164+dq1.*t7.*1.037960035571812e+1-t31.*(t53+t56+t68+t75+t96+t97+t104+t113+t123+t125+t132+t145+t147+t152+4.707034784245229e+1))-t2.*t17.*5.189800177859062-(t31.*(t84+t122+t124+t150+t163+t165))./2.0-dq1.*dq2.*t2.*5.189800177859062;t86+t87+t88+t89+t90+t91+t138+t140+t141+t142+t143+t144+t148+t173+t174+t176+t177+t178+t179+t183+t184+t186+t187+t188+t189+t190+t192+t193-t31.*(t85+t121+t149+t162+t164-t31.*(t3.*1.669905399462713e+1+t53+t56+t68+t79+t96+t97+t104+t114+t123+t132+t145+t146+t151+2.55515953829033e+1))-(t31.*(t77+t78+t80+t81+t82+t83+t84+t115+t116+t117+t118+t119+t120+t122+t150+t153+t154+t155+t156+t157+t158+t159+t160+t161+t163+t165+dq1.*t8.*3.339810798925425e+1+dq2.*t8.*3.339810798925425e+1+dq3.*t8.*1.669905399462713e+1))./2.0;t86+t87+t88+t89+t90+t91+t138+t140+t141+t142+t143+t144+t148+t176+t177+t178+t179+t184+t186+t187+t188+t189+t192+t193-(t31.*(t63+t64+t65+t72+t73+t74+t77+t78+t80+t81+t82+t83+t84+t107+t108+t109+t110+t111+t112+t115+t116+t117+t118+t119+t120+t122+t133+t134+t135+t136+t137+t153+t154+t155+t156+t157+t158+t159+t160+t161+t163+t165+dq1.*t9.*3.12508296797445+dq2.*t9.*3.12508296797445+dq3.*t9.*3.12508296797445+dq4.*t9.*1.562541483987225))./2.0-t31.*(t85+t121+t162+t164-t31.*(t4.*1.562541483987225+t53+t56+t70+t79+t96+t97+t103+t114+t131+t145+t146+t151+2.461047736910614));t86+t87+t88+t89+t90+t91+t138+t140+t141+t142+t143+t144+t148+t176+t177+t178+t179+t184+t193-t31.*(t85+t121+t162-t31.*(t5.*7.842188822702063e-1+t53+t70+t71+t79+t96+t102+t103+t114+t131+t146+1.485806987821211))-(t31.*(t59+t60+t61+t62+t63+t64+t65+t66+t67+t72+t73+t74+t77+t78+t80+t81+t82+t83+t84+t98+t99+t100+t101+t105+t106+t107+t108+t109+t110+t111+t112+t115+t116+t117+t118+t119+t120+t122+t133+t134+t135+t136+t137+t153+t154+t155+t156+t157+t163+dq1.*t10.*1.568437764540413+dq2.*t10.*1.568437764540413+dq3.*t10.*1.568437764540413+dq4.*t10.*1.568437764540413+dq5.*t10.*7.842188822702063e-1))./2.0;t86+t87+t88+t89+t90+t91+t140+t141+t142+t143+t144+t148+t193-t31.*(t85+t121-t31.*(t6.*2.81745611170695e-2-t11.*5.575780357875e-2+t70+t71+t79+t102+t103+t114+3.275366401942843e-2))-(t31.*(t59+t60+t61+t62+t63+t64+t65+t66+t67+t72+t73+t74+t77+t78+t80+t81+t82+t83+t84+t98+t99+t100+t101+t105+t106+t107+t108+t109+t110+t111+t112+t115+t116+t117+t118+t119+t120+t122+dq1.*t6.*1.115156071575e-1+dq2.*t6.*1.115156071575e-1+dq3.*t6.*1.115156071575e-1+dq4.*t6.*1.115156071575e-1+dq5.*t6.*1.115156071575e-1+dq1.*t11.*5.6349122234139e-2+dq6.*t6.*5.575780357875e-2+dq2.*t11.*5.6349122234139e-2+dq3.*t11.*5.6349122234139e-2+dq4.*t11.*5.6349122234139e-2+dq5.*t11.*5.6349122234139e-2+dq6.*t11.*2.81745611170695e-2))./2.0];
