function dL12_dq1 = dL12_dq1(in1,in2,sampT)
%DL12_DQ1
%    DL12_DQ1 = DL12_DQ1(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    22-Apr-2021 00:39:10

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
t118 = t4.*5.65151891283;
t125 = dq1.*t7.*2.075920071143625e+1;
t126 = t3.*3.339810798925425e+1;
t139 = t5.*1.568437764540413;
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
t115 = t26.*1.135540085754375e+2;
t140 = t20.*1.088303754987225;
t141 = t20.*2.17660750997445;
t142 = t19.*2.03620902006375;
t143 = t19.*4.0724180401275;
t144 = dq1.*t29.*2.17660750997445;
t145 = dq2.*t29.*2.17660750997445;
t146 = dq3.*t29.*2.17660750997445;
t147 = dq4.*t29.*1.088303754987225;
t148 = dq5.*t29.*1.088303754987225;
t149 = dq1.*t28.*4.0724180401275;
t150 = dq2.*t28.*4.0724180401275;
t151 = dq3.*t28.*2.03620902006375;
t152 = dq4.*t28.*2.03620902006375;
t154 = dq1.*t27.*8.349526997313563;
t155 = dq1.*t27.*1.669905399462713e+1;
t168 = dq1.*dq2.*t18.*4.174763498656781;
t169 = dq1.*dq3.*t18.*4.174763498656781;
t174 = t17.*t18.*4.174763498656781;
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
t116 = dq1.*t48.*5.6349122234139e-2;
t117 = dq2.*t48.*5.6349122234139e-2;
t119 = dq3.*t48.*2.81745611170695e-2;
t120 = dq4.*t48.*2.81745611170695e-2;
t121 = dq5.*t48.*2.81745611170695e-2;
t122 = dq6.*t48.*2.81745611170695e-2;
t132 = t46.*1.11381791495625e+1;
t156 = dq1.*t39.*1.018104510031875;
t157 = dq1.*t39.*2.03620902006375;
t158 = t33.*7.842188822702063e-1;
t159 = t33.*1.568437764540413;
t160 = dq1.*dq2.*t32.*5.090522550159375e-1;
t161 = dq1.*dq3.*t32.*5.090522550159375e-1;
t162 = dq1.*dq4.*t32.*5.090522550159375e-1;
t163 = dq1.*t40.*1.568437764540413;
t164 = dq2.*t40.*1.568437764540413;
t165 = dq3.*t40.*7.842188822702063e-1;
t166 = dq4.*t40.*7.842188822702063e-1;
t167 = dq5.*t40.*7.842188822702063e-1;
t170 = t17.*t32.*5.090522550159375e-1;
t175 = -t168;
t176 = -t169;
t177 = dq1.*t47.*3.921094411351031e-1;
t178 = dq1.*t47.*7.842188822702063e-1;
t180 = -t174;
t181 = dq1.*dq2.*t42.*1.960547205675516e-1;
t182 = dq1.*dq3.*t42.*1.960547205675516e-1;
t183 = dq1.*dq4.*t42.*1.960547205675516e-1;
t184 = dq1.*dq5.*t42.*1.960547205675516e-1;
t185 = t17.*t42.*1.960547205675516e-1;
t191 = t38.*6.896678435529809e+1;
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
t123 = dq1.*t50.*1.408728055853475e-2;
t124 = dq1.*t50.*2.81745611170695e-2;
t127 = dq1.*dq2.*t51.*7.043640279267375e-3;
t128 = dq1.*dq3.*t51.*7.043640279267375e-3;
t129 = dq1.*dq4.*t51.*7.043640279267375e-3;
t130 = dq1.*dq5.*t51.*7.043640279267375e-3;
t131 = dq1.*dq6.*t51.*7.043640279267375e-3;
t133 = t17.*t51.*7.043640279267375e-3;
t171 = -t160;
t172 = -t161;
t173 = -t162;
t179 = -t170;
t186 = -t181;
t187 = -t182;
t188 = -t183;
t189 = -t184;
t190 = -t185;
t192 = t49.*4.289721888630938;
t193 = t93.*t95.*7.591227646486231e-20;
t134 = -t127;
t135 = -t128;
t136 = -t129;
t137 = -t130;
t138 = -t131;
t153 = -t133;
dL12_dq1 = [t115+t132+t191+t192+t193+t31.*(t84+t124+t125+t155+t157+t178+dq2.*t7.*1.037960035571812e+1+dq2.*t27.*8.349526997313563+dq3.*t27.*8.349526997313563+dq2.*t39.*1.018104510031875+dq3.*t39.*1.018104510031875+dq4.*t39.*1.018104510031875+dq2.*t47.*3.921094411351031e-1+dq3.*t47.*3.921094411351031e-1+dq4.*t47.*3.921094411351031e-1+dq2.*t50.*1.408728055853475e-2+dq5.*t47.*3.921094411351031e-1+dq2.*t51.*2.7878901789375e-2+dq3.*t50.*1.408728055853475e-2+dq3.*t51.*2.7878901789375e-2+dq4.*t50.*1.408728055853475e-2+dq4.*t51.*2.7878901789375e-2+dq5.*t50.*1.408728055853475e-2+dq5.*t51.*2.7878901789375e-2+dq6.*t50.*1.408728055853475e-2+dq6.*t51.*2.7878901789375e-2+t31.*(t2.*2.075920071143625e+1+t18.*1.669905399462713e+1+t32.*2.03620902006375+t42.*7.842188822702063e-1-t50.*5.575780357875e-2+t51.*2.81745611170695e-2+t53+t56+t68+t75+t96+t97+t104+t113+t118+t126+t139+t141+t143+t159+4.606937052632759e+1));t86+t87+t88+t89+t90+t91+t115+t132+t134+t135+t136+t137+t138+t153+t171+t172+t173+t175+t176+t179+t180+t186+t187+t188+t189+t190+t191+t192+t193-t2.*t17.*5.189800177859062+t31.*(t85+t123+t154+t156+t177+t31.*(t53+t56+t68+t75+t96+t97+t104+t113+t118+t126+t139+t141+t143+t159+4.606937052632759e+1)+dq1.*t7.*1.037960035571812e+1)+(t31.*(t84+t124+t125+t155+t157+t178))./2.0-dq1.*dq2.*t2.*5.189800177859062;t86+t87+t88+t89+t90+t91+t132+t134+t135+t136+t137+t138+t153+t171+t172+t173+t175+t176+t179+t180+t186+t187+t188+t189+t190+t191+t192+t193+t31.*(t85+t123+t154+t156+t177+t31.*(t3.*1.669905399462713e+1+t53+t56+t68+t79+t96+t97+t104+t114+t118+t139+t141+t142+t158+2.55515953829033e+1))+(t31.*(t77+t78+t80+t81+t82+t83+t84+t116+t117+t119+t120+t121+t122+t124+t149+t150+t151+t152+t155+t157+t163+t164+t165+t166+t167+t178+dq1.*t8.*3.339810798925425e+1+dq2.*t8.*3.339810798925425e+1+dq3.*t8.*1.669905399462713e+1))./2.0;t86+t87+t88+t89+t90+t91+t132+t134+t135+t136+t137+t138+t153+t171+t172+t173+t179+t186+t187+t188+t189+t190+t192+t193+(t31.*(t63+t64+t65+t72+t73+t74+t77+t78+t80+t81+t82+t83+t84+t107+t108+t109+t110+t111+t112+t116+t117+t119+t120+t121+t122+t124+t144+t145+t146+t147+t148+t149+t150+t151+t152+t157+t163+t164+t165+t166+t167+t178+dq1.*t9.*5.65151891283+dq2.*t9.*5.65151891283+dq3.*t9.*5.65151891283+dq4.*t9.*2.825759456415))./2.0+t31.*(t85+t123+t156+t177+t31.*(t4.*2.825759456415+t53+t56+t70+t79+t96+t97+t103+t114+t139+t140+t142+t158+2.461047736910614));t86+t87+t88+t89+t90+t91+t134+t135+t136+t137+t138+t153+t186+t187+t188+t189+t190+t192+t193+t31.*(t85+t123+t177+t31.*(t5.*7.842188822702063e-1+t53+t70+t71+t79+t96+t102+t103+t114+t140+t158+6.662642848588315e-1))+(t31.*(t59+t60+t61+t62+t63+t64+t65+t66+t67+t72+t73+t74+t77+t78+t80+t81+t82+t83+t84+t98+t99+t100+t101+t105+t106+t107+t108+t109+t110+t111+t112+t116+t117+t119+t120+t121+t122+t124+t144+t145+t146+t147+t148+t163+t164+t165+t166+t167+t178+dq1.*t10.*1.568437764540413+dq2.*t10.*1.568437764540413+dq3.*t10.*1.568437764540413+dq4.*t10.*1.568437764540413+dq5.*t10.*7.842188822702063e-1))./2.0;t86+t87+t88+t89+t90+t91+t134+t135+t136+t137+t138+t153+t193+t31.*(t85+t123+t31.*(t6.*2.81745611170695e-2-t11.*5.575780357875e-2+t70+t71+t79+t102+t103+t114+3.275366401942843e-2))+(t31.*(t59+t60+t61+t62+t63+t64+t65+t66+t67+t72+t73+t74+t77+t78+t80+t81+t82+t83+t84+t98+t99+t100+t101+t105+t106+t107+t108+t109+t110+t111+t112+t116+t117+t119+t120+t121+t122+t124+dq1.*t6.*1.115156071575e-1+dq2.*t6.*1.115156071575e-1+dq3.*t6.*1.115156071575e-1+dq4.*t6.*1.115156071575e-1+dq5.*t6.*1.115156071575e-1+dq1.*t11.*5.6349122234139e-2+dq6.*t6.*5.575780357875e-2+dq2.*t11.*5.6349122234139e-2+dq3.*t11.*5.6349122234139e-2+dq4.*t11.*5.6349122234139e-2+dq5.*t11.*5.6349122234139e-2+dq6.*t11.*2.81745611170695e-2))./2.0];
