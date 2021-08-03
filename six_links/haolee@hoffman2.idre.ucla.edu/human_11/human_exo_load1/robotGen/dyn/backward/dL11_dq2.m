function dL11_dq2 = dL11_dq2(in1,in2,sampT)
%DL11_DQ2
%    DL11_DQ2 = DL11_DQ2(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    19-Apr-2021 18:38:01

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
t128 = t4.*3.12508296797445;
t129 = t3.*2.778698027024307e+1;
t138 = t5.*1.568437764540413;
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
t130 = t19.*2.351521727415;
t131 = t19.*4.70304345483;
t132 = dq1.*t28.*4.70304345483;
t133 = dq2.*t28.*4.70304345483;
t134 = dq3.*t28.*4.70304345483;
t135 = dq4.*t28.*2.351521727415;
t136 = dq5.*t28.*2.351521727415;
t141 = t17.*1.389349013512154e+1;
t142 = t18.*1.125949010520206;
t143 = t18.*2.251898021040413;
t150 = dq1.*t26.*2.778698027024307e+1;
t151 = dq2.*t26.*1.389349013512154e+1;
t152 = dq3.*t26.*1.389349013512154e+1;
t154 = dq1.*t27.*2.251898021040413;
t155 = dq2.*t27.*2.251898021040413;
t156 = dq3.*t27.*1.125949010520206;
t157 = dq4.*t27.*1.125949010520206;
t168 = t25.*9.654161509886906e+1;
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
t115 = dq1.*t48.*5.6349122234139e-2;
t116 = dq2.*t48.*5.6349122234139e-2;
t119 = dq3.*t48.*2.81745611170695e-2;
t120 = dq4.*t48.*2.81745611170695e-2;
t121 = dq5.*t48.*2.81745611170695e-2;
t122 = dq6.*t48.*2.81745611170695e-2;
t139 = t33.*1.69447889181375;
t140 = t33.*3.3889577836275;
t144 = t42.*1.69447889181375;
t145 = dq1.*t40.*3.3889577836275;
t146 = dq2.*t40.*3.3889577836275;
t147 = dq3.*t40.*1.69447889181375;
t148 = dq4.*t40.*1.69447889181375;
t149 = dq5.*t40.*1.69447889181375;
t153 = t32.*1.125949010520206;
t158 = dq1.*t47.*3.3889577836275;
t159 = dq2.*t47.*1.69447889181375;
t160 = dq3.*t47.*1.69447889181375;
t161 = dq4.*t47.*1.69447889181375;
t162 = dq5.*t47.*1.69447889181375;
t163 = dq1.*t39.*2.251898021040413;
t164 = dq2.*t39.*1.125949010520206;
t165 = dq3.*t39.*1.125949010520206;
t166 = dq4.*t39.*1.125949010520206;
t167 = t38.*5.362019047677137e+1;
t169 = t46.*6.159005126130938;
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
t117 = dq1.*t50.*5.6349122234139e-2;
t118 = t51.*2.81745611170695e-2;
t123 = dq2.*t50.*2.81745611170695e-2;
t124 = dq3.*t50.*2.81745611170695e-2;
t125 = dq4.*t50.*2.81745611170695e-2;
t126 = dq5.*t50.*2.81745611170695e-2;
t127 = dq6.*t50.*2.81745611170695e-2;
t137 = t49.*9.2688959120625;
t170 = t93.*t95.*7.591227646486231e-20;
t86 = -t79;
dL11_dq2 = [t137+t167+t168+t169+t170+sin(q1).*9.34317243129375e+1-t31.*(t2.*3.34776925228725e+1+t17.*2.778698027024307e+1+t32.*2.251898021040413+t42.*3.3889577836275-t50.*1.115156071575e-1+t51.*5.6349122234139e-2+t53+t56+t68+t75+t96+t97+t104+t113+t128+t129+t131+t138+t140+t143+5.603875748560559e+1);t137+t167+t168+t169+t170-t31.*(t2.*1.673884626143625e+1+t53+t56+t68+t75+t86+t96+t97+t104+t113+t118+t128+t129+t131+t138+t140+t141+t143+t144+t153+3.91996066639313e+1)+(t30.*(t80+t87+t88+t89+t90+t91+t117+t123+t124+t125+t126+t127+t150+t151+t152+t158+t159+t160+t161+t162+t163+t164+t165+t166+dq1.*t7.*3.34776925228725e+1+dq2.*t7.*1.673884626143625e+1))./2.0;t137+t167+t169+t170+(t30.*(t77+t78+t80+t82+t83+t84+t85+t87+t88+t89+t90+t91+t115+t116+t117+t119+t120+t121+t122+t123+t124+t125+t126+t127+t145+t146+t147+t148+t149+t150+t151+t152+t154+t155+t156+t157+t158+t159+t160+t161+t162+t163+t164+t165+t166+dq1.*t8.*2.778698027024307e+1+dq2.*t8.*2.778698027024307e+1+dq3.*t8.*1.389349013512154e+1))./2.0-t31.*(t3.*1.389349013512154e+1+t53+t56+t68+t81+t86+t96+t97+t104+t114+t118+t128+t131+t138+t139+t141+t142+t144+t153+2.170120865438231e+1);t137+t169+t170-t31.*(t4.*1.562541483987225+t53+t56+t70+t81+t86+t96+t97+t103+t114+t118+t130+t138+t139+t142+t144+t153+2.461047736910614)+(t30.*(t63+t64+t65+t72+t73+t74+t77+t78+t80+t82+t83+t84+t85+t87+t88+t89+t90+t91+t107+t108+t109+t110+t111+t112+t115+t116+t117+t119+t120+t121+t122+t123+t124+t125+t126+t127+t132+t133+t134+t135+t136+t145+t146+t147+t148+t149+t154+t155+t156+t157+t158+t159+t160+t161+t162+t163+t164+t165+t166+dq1.*t9.*3.12508296797445+dq2.*t9.*3.12508296797445+dq3.*t9.*3.12508296797445+dq4.*t9.*1.562541483987225))./2.0;t137+t170+(t30.*(t59+t60+t61+t62+t63+t64+t65+t66+t67+t72+t73+t74+t77+t78+t80+t82+t83+t84+t85+t87+t88+t89+t90+t91+t98+t99+t100+t101+t105+t106+t107+t108+t109+t110+t111+t112+t115+t116+t117+t119+t120+t121+t122+t123+t124+t125+t126+t127+t132+t133+t134+t135+t136+t145+t146+t147+t148+t149+t158+t159+t160+t161+t162+dq1.*t10.*1.568437764540413+dq2.*t10.*1.568437764540413+dq3.*t10.*1.568437764540413+dq4.*t10.*1.568437764540413+dq5.*t10.*7.842188822702063e-1))./2.0-t31.*(t5.*7.842188822702063e-1+t53+t70+t71+t81+t86+t96+t102+t103+t114+t118+t130+t139+t144+1.485806987821211);t170+(t30.*(t59+t60+t61+t62+t63+t64+t65+t66+t67+t72+t73+t74+t77+t78+t80+t82+t83+t84+t85+t87+t88+t89+t90+t91+t98+t99+t100+t101+t105+t106+t107+t108+t109+t110+t111+t112+t115+t116+t117+t119+t120+t121+t122+t123+t124+t125+t126+t127+dq1.*t6.*1.115156071575e-1+dq2.*t6.*1.115156071575e-1+dq3.*t6.*1.115156071575e-1+dq4.*t6.*1.115156071575e-1+dq5.*t6.*1.115156071575e-1+dq1.*t11.*5.6349122234139e-2+dq6.*t6.*5.575780357875e-2+dq2.*t11.*5.6349122234139e-2+dq3.*t11.*5.6349122234139e-2+dq4.*t11.*5.6349122234139e-2+dq5.*t11.*5.6349122234139e-2+dq6.*t11.*2.81745611170695e-2))./2.0-t31.*(t6.*2.81745611170695e-2-t11.*5.575780357875e-2+t70+t71+t81+t86+t102+t103+t114+t118+3.275366401942843e-2)];
