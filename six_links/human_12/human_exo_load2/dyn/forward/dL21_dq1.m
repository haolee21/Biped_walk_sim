function dL21_dq1 = dL21_dq1(in1,in2,sampT)
%DL21_DQ1
%    DL21_DQ1 = DL21_DQ1(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    01-Aug-2021 18:01:41

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
t30 = 1.0./sampT;
t92 = atan(1.979012320620293);
t93 = 4.501575681747185e+18;
t17 = cos(t13);
t18 = cos(t14);
t19 = cos(t15);
t20 = cos(t16);
t21 = q3+t12;
t22 = q4+t13;
t23 = q5+t14;
t24 = q6+t15;
t25 = sin(t12);
t26 = sin(t13);
t27 = sin(t14);
t28 = sin(t15);
t29 = sin(t16);
t31 = t30.^2;
t35 = t12+t14;
t36 = t13+t15;
t37 = t14+t16;
t52 = t11.*1.115156071575e-1;
t96 = t6.*5.6349122234139e-2;
t118 = t4.*5.65151891283;
t130 = t3.*3.339810798925425e+1;
t132 = t5.*1.568437764540413;
t32 = cos(t22);
t33 = cos(t23);
t34 = cos(t24);
t38 = sin(t21);
t39 = sin(t22);
t40 = sin(t23);
t41 = sin(t24);
t42 = cos(t36);
t43 = cos(t37);
t44 = t12+t23;
t45 = t13+t24;
t46 = sin(t35);
t47 = sin(t36);
t48 = sin(t37);
t53 = -t52;
t54 = t29.*1.115156071575e-1;
t58 = t29.*5.575780357875e-2;
t59 = dq1.*t20.*1.115156071575e-1;
t60 = dq2.*t20.*1.115156071575e-1;
t61 = dq3.*t20.*1.115156071575e-1;
t62 = dq4.*t20.*1.115156071575e-1;
t66 = dq5.*t20.*5.575780357875e-2;
t67 = dq6.*t20.*5.575780357875e-2;
t94 = t16+t35+t92;
t97 = t20.*5.6349122234139e-2;
t98 = dq1.*t29.*5.6349122234139e-2;
t99 = dq2.*t29.*5.6349122234139e-2;
t100 = dq3.*t29.*5.6349122234139e-2;
t101 = dq4.*t29.*5.6349122234139e-2;
t102 = t20.*2.81745611170695e-2;
t105 = dq5.*t29.*2.81745611170695e-2;
t106 = dq6.*t29.*2.81745611170695e-2;
t115 = t25.*1.135540085754375e+2;
t133 = t19.*1.088303754987225;
t134 = t19.*2.17660750997445;
t135 = t18.*2.03620902006375;
t136 = t18.*4.0724180401275;
t137 = t17.*1.669905399462713e+1;
t138 = dq1.*t28.*2.17660750997445;
t139 = dq2.*t28.*2.17660750997445;
t140 = dq3.*t28.*2.17660750997445;
t141 = dq4.*t28.*1.088303754987225;
t142 = dq5.*t28.*1.088303754987225;
t144 = dq1.*t27.*4.0724180401275;
t145 = dq2.*t27.*4.0724180401275;
t146 = dq3.*t27.*2.03620902006375;
t147 = dq4.*t27.*2.03620902006375;
t148 = dq1.*t26.*3.339810798925425e+1;
t149 = dq2.*t26.*1.669905399462713e+1;
t150 = dq3.*t26.*1.669905399462713e+1;
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
t82 = dq3.*t43.*5.575780357875e-2;
t83 = dq4.*t43.*5.575780357875e-2;
t84 = dq5.*t43.*5.575780357875e-2;
t85 = dq6.*t43.*5.575780357875e-2;
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
t121 = dq3.*t48.*2.81745611170695e-2;
t122 = dq4.*t48.*2.81745611170695e-2;
t123 = dq5.*t48.*2.81745611170695e-2;
t124 = dq6.*t48.*2.81745611170695e-2;
t131 = t46.*1.11381791495625e+1;
t143 = t32.*2.03620902006375;
t151 = dq1.*t39.*4.0724180401275;
t152 = dq2.*t39.*2.03620902006375;
t153 = dq3.*t39.*2.03620902006375;
t154 = dq4.*t39.*2.03620902006375;
t155 = t33.*7.842188822702063e-1;
t156 = t33.*1.568437764540413;
t157 = t42.*7.842188822702063e-1;
t158 = dq1.*t40.*1.568437764540413;
t159 = dq2.*t40.*1.568437764540413;
t160 = dq3.*t40.*7.842188822702063e-1;
t161 = dq4.*t40.*7.842188822702063e-1;
t162 = dq5.*t40.*7.842188822702063e-1;
t163 = dq1.*t47.*1.568437764540413;
t164 = dq2.*t47.*7.842188822702063e-1;
t165 = dq3.*t47.*7.842188822702063e-1;
t166 = dq4.*t47.*7.842188822702063e-1;
t167 = dq5.*t47.*7.842188822702063e-1;
t168 = t38.*6.896678435529809e+1;
t68 = -t55;
t70 = -t57;
t75 = -t69;
t79 = t50.*5.575780357875e-2;
t80 = dq1.*t51.*1.115156071575e-1;
t81 = -t76;
t87 = dq2.*t51.*5.575780357875e-2;
t88 = dq3.*t51.*5.575780357875e-2;
t89 = dq4.*t51.*5.575780357875e-2;
t90 = dq5.*t51.*5.575780357875e-2;
t91 = dq6.*t51.*5.575780357875e-2;
t119 = dq1.*t50.*5.6349122234139e-2;
t120 = t51.*2.81745611170695e-2;
t125 = dq2.*t50.*2.81745611170695e-2;
t126 = dq3.*t50.*2.81745611170695e-2;
t127 = dq4.*t50.*2.81745611170695e-2;
t128 = dq5.*t50.*2.81745611170695e-2;
t129 = dq6.*t50.*2.81745611170695e-2;
t169 = t49.*4.289721888630938;
t170 = t93.*t95.*7.591227646486231e-20;
t86 = -t79;
dL21_dq1 = [t115+t131+t168+t169+t170+sin(q1).*1.204024658363691e+2-t31.*(t2.*4.15184014228725e+1+t17.*3.339810798925425e+1+t32.*4.0724180401275+t42.*1.568437764540413-t50.*1.115156071575e-1+t51.*5.6349122234139e-2+t53+t56+t68+t75+t96+t97+t104+t113+t118+t130+t132+t134+t136+t156+6.792985311412658e+1);t115+t131+t168+t169+t170-(t30.*(t80+t87+t88+t89+t90+t91+t119+t125+t126+t127+t128+t129+t148+t149+t150+t151+t152+t153+t154+t163+t164+t165+t166+t167+dq1.*t7.*4.15184014228725e+1+dq2.*t7.*2.075920071143625e+1))./2.0-t31.*(t2.*2.075920071143625e+1+t53+t56+t68+t75+t86+t96+t97+t104+t113+t118+t120+t130+t132+t134+t136+t137+t143+t156+t157+4.606937052632759e+1);t131+t168+t169+t170-(t30.*(t77+t78+t80+t82+t83+t84+t85+t87+t88+t89+t90+t91+t116+t117+t119+t121+t122+t123+t124+t125+t126+t127+t128+t129+t144+t145+t146+t147+t148+t149+t150+t151+t152+t153+t154+t158+t159+t160+t161+t162+t163+t164+t165+t166+t167+dq1.*t8.*3.339810798925425e+1+dq2.*t8.*3.339810798925425e+1+dq3.*t8.*1.669905399462713e+1))./2.0-t31.*(t3.*1.669905399462713e+1+t53+t56+t68+t81+t86+t96+t97+t104+t114+t118+t120+t132+t134+t135+t137+t143+t155+t157+2.55515953829033e+1);t131+t169+t170-(t30.*(t63+t64+t65+t72+t73+t74+t77+t78+t80+t82+t83+t84+t85+t87+t88+t89+t90+t91+t107+t108+t109+t110+t111+t112+t116+t117+t119+t121+t122+t123+t124+t125+t126+t127+t128+t129+t138+t139+t140+t141+t142+t144+t145+t146+t147+t151+t152+t153+t154+t158+t159+t160+t161+t162+t163+t164+t165+t166+t167+dq1.*t9.*5.65151891283+dq2.*t9.*5.65151891283+dq3.*t9.*5.65151891283+dq4.*t9.*2.825759456415))./2.0-t31.*(t4.*2.825759456415+t53+t56+t70+t81+t86+t96+t97+t103+t114+t120+t132+t133+t135+t143+t155+t157+2.461047736910614);t169+t170-t31.*(t5.*7.842188822702063e-1+t53+t70+t71+t81+t86+t96+t102+t103+t114+t120+t133+t155+t157+6.662642848588315e-1)-(t30.*(t59+t60+t61+t62+t63+t64+t65+t66+t67+t72+t73+t74+t77+t78+t80+t82+t83+t84+t85+t87+t88+t89+t90+t91+t98+t99+t100+t101+t105+t106+t107+t108+t109+t110+t111+t112+t116+t117+t119+t121+t122+t123+t124+t125+t126+t127+t128+t129+t138+t139+t140+t141+t142+t158+t159+t160+t161+t162+t163+t164+t165+t166+t167+dq1.*t10.*1.568437764540413+dq2.*t10.*1.568437764540413+dq3.*t10.*1.568437764540413+dq4.*t10.*1.568437764540413+dq5.*t10.*7.842188822702063e-1))./2.0;t170-(t30.*(t59+t60+t61+t62+t63+t64+t65+t66+t67+t72+t73+t74+t77+t78+t80+t82+t83+t84+t85+t87+t88+t89+t90+t91+t98+t99+t100+t101+t105+t106+t107+t108+t109+t110+t111+t112+t116+t117+t119+t121+t122+t123+t124+t125+t126+t127+t128+t129+dq1.*t6.*1.115156071575e-1+dq2.*t6.*1.115156071575e-1+dq3.*t6.*1.115156071575e-1+dq4.*t6.*1.115156071575e-1+dq5.*t6.*1.115156071575e-1+dq1.*t11.*5.6349122234139e-2+dq6.*t6.*5.575780357875e-2+dq2.*t11.*5.6349122234139e-2+dq3.*t11.*5.6349122234139e-2+dq4.*t11.*5.6349122234139e-2+dq5.*t11.*5.6349122234139e-2+dq6.*t11.*2.81745611170695e-2))./2.0-t31.*(t6.*2.81745611170695e-2-t11.*5.575780357875e-2+t70+t71+t81+t86+t102+t103+t114+t120+3.275366401942843e-2)];
