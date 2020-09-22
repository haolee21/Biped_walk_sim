function dGrf_heel_c1_q2 = dGrf_heel_c1_q2(in1,in2,Fy,s,sampT,H,k,cmax,dmax)
%DGRF_HEEL_C1_Q2
%    DGRF_HEEL_C1_Q2 = DGRF_HEEL_C1_Q2(IN1,IN2,FY,S,SAMPT,H,K,CMAX,DMAX)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    22-Sep-2020 01:05:33

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
t15 = H.*2.0;
t17 = -H;
t20 = 1.0./dmax;
t21 = 1.0./sampT;
t16 = cos(t14);
t18 = -t15;
t19 = sin(t14);
t22 = t2.*t3;
t23 = t2.*t9;
t24 = t3.*t8;
t25 = q_t3+q_t4+t14;
t26 = t8.*t9;
t47 = t2.*4.60062e-1;
t48 = t8.*4.60062e-1;
t49 = t8.*9.201240000000001e-1;
t27 = cos(t25);
t28 = q_t5+t25;
t29 = sin(t25);
t31 = -t26;
t33 = t23+t24;
t50 = t16.*4.453122e-1;
t51 = t22.*4.453122e-1;
t52 = t22.*8.906244e-1;
t53 = t19.*4.453122e-1;
t54 = t23.*4.453122e-1;
t55 = t23.*8.906244e-1;
t56 = t24.*4.453122e-1;
t57 = t24.*8.906244e-1;
t58 = t26.*4.453122e-1;
t59 = t26.*8.906244e-1;
t30 = sin(t28);
t32 = cos(t28);
t34 = t22+t31;
t35 = t4.*t33;
t36 = t10.*t33;
t60 = -t52;
t61 = -t51;
t62 = t27.*4.453122e-1;
t63 = q_t6+t28-1.09560328404883;
t64 = t29.*4.453122e-1;
t37 = t4.*t34;
t38 = t10.*t34;
t39 = -t36;
t65 = cos(t63);
t66 = sin(t63);
t67 = t32.*4.60062e-1;
t68 = t30.*4.60062e-1;
t40 = t35+t38;
t41 = t37+t39;
t44 = -t5.*(t36-t37);
t45 = -t11.*(t36-t37);
t69 = -t67;
t74 = t5.*(t36-t37).*(-4.453122e-1);
t75 = t5.*(t36-t37).*(-8.906244e-1);
t76 = t11.*(t36-t37).*(-4.453122e-1);
t77 = t11.*(t36-t37).*(-8.906244e-1);
t79 = t5.*(t36-t37).*8.906244e-1;
t80 = t5.*(t36-t37).*4.453122e-1;
t87 = t65.*8.746582711697523e-2;
t88 = t66.*8.746582711697523e-2;
t93 = qd_t6.*t65.*(-8.746582711697523e-2);
t94 = qd_t6.*t66.*(-8.746582711697523e-2);
t42 = t5.*t40;
t43 = t11.*t40;
t89 = qd_t6.*t87;
t90 = qd_t6.*t88;
t91 = -t87;
t92 = -t88;
t105 = t69+t87;
t46 = -t43;
t70 = t42.*4.453122e-1;
t71 = t42.*8.906244e-1;
t72 = t43.*4.453122e-1;
t73 = t43.*8.906244e-1;
t78 = t42+t45;
t84 = -t6.*(t43+t5.*(t36-t37));
t85 = -t12.*(t43+t5.*(t36-t37));
t99 = t6.*(t43+t5.*(t36-t37)).*(-4.60062e-1);
t100 = t6.*(t43+t5.*(t36-t37)).*(-9.201240000000001e-1);
t101 = t12.*(t43+t5.*(t36-t37)).*(-4.60062e-1);
t102 = t12.*(t43+t5.*(t36-t37)).*(-9.201240000000001e-1);
t103 = t6.*(t43+t5.*(t36-t37)).*9.201240000000001e-1;
t104 = t6.*(t43+t5.*(t36-t37)).*4.60062e-1;
t106 = t68+t92;
t107 = qd_t5.*t105;
t113 = t62+t67+t91;
t81 = t44+t46;
t82 = t6.*t78;
t83 = t12.*t78;
t108 = qd_t5.*t106;
t109 = -t107;
t112 = t64+t106;
t118 = qd_t3.*t113;
t119 = qd_t4.*t113;
t144 = t50+t113;
t86 = -t83;
t95 = t82.*4.60062e-1;
t96 = t82.*9.201240000000001e-1;
t97 = t83.*4.60062e-1;
t98 = t83.*9.201240000000001e-1;
t110 = t82+t85;
t122 = qd_t1.*t112;
t123 = qd_t2.*t112;
t124 = qd_t3.*t112;
t125 = qd_t4.*t112;
t126 = t7.*(t83+t6.*(t43+t5.*(t36-t37))).*(-1.5555e-1);
t127 = t7.*(t83+t6.*(t43+t5.*(t36-t37))).*(-7.7775e-2);
t128 = t13.*(t83+t6.*(t43+t5.*(t36-t37))).*(-1.5555e-1);
t129 = t13.*(t83+t6.*(t43+t5.*(t36-t37))).*(-7.7775e-2);
t138 = t7.*(t83+t6.*(t43+t5.*(t36-t37))).*(-4.001650020000001e-2);
t139 = t7.*(t83+t6.*(t43+t5.*(t36-t37))).*(-8.003300040000001e-2);
t140 = t13.*(t83+t6.*(t43+t5.*(t36-t37))).*(-4.001650020000001e-2);
t141 = t13.*(t83+t6.*(t43+t5.*(t36-t37))).*(-8.003300040000001e-2);
t142 = t13.*(t83+t6.*(t43+t5.*(t36-t37))).*8.003300040000001e-2;
t143 = t13.*(t83+t6.*(t43+t5.*(t36-t37))).*4.001650020000001e-2;
t145 = t53+t112;
t146 = qd_t2.*t144;
t148 = t47+t144;
t111 = t84+t86;
t114 = t7.*t110.*1.5555e-1;
t115 = t7.*t110.*7.7775e-2;
t116 = t13.*t110.*1.5555e-1;
t117 = t13.*t110.*7.7775e-2;
t130 = t7.*t110.*4.001650020000001e-2;
t131 = t7.*t110.*8.003300040000001e-2;
t132 = t13.*t110.*4.001650020000001e-2;
t133 = t13.*t110.*8.003300040000001e-2;
t147 = qd_t2.*t145;
t149 = qd_t1.*t148;
t150 = t94+t108+t122+t123+t124+t125;
t120 = -t116;
t121 = -t117;
t134 = -t131;
t135 = -t130;
t136 = -t133;
t137 = -t132;
t151 = t93+t109+t118+t119+t146+t149;
t152 = t73+t79+t98+t103+t114+t128+t136+t139;
t153 = t72+t80+t97+t104+t115+t129+t137+t138;
t154 = t18+t49+t55+t57+t71+t77+t96+t102+t120+t126+t134+t142;
t155 = t17+t48+t54+t56+t70+t76+t95+t101+t121+t127+t135+t143;
t156 = t20.*t154;
t165 = k.*t153.*t155.*2.0;
t157 = tanh(t156);
t158 = t157.^2;
t159 = t157./2.0;
t160 = t158-1.0;
t161 = t159-1.0./2.0;
t162 = cmax.*s.*t21.*t113.*t161;
t163 = cmax.*t150.*t161;
t166 = (cmax.*t20.*t151.*t152.*t160)./2.0;
t164 = -t163;
t167 = t164+t165+t166;
t168 = (s.*t167)./2.0;
t169 = t162+t168;
dGrf_heel_c1_q2 = [(s.*(k.*t155.*(-t47+t58+t61+t153).*2.0-cmax.*t161.*(t94+t108+t124+t125+t147+qd_t1.*(t48+t145))+(cmax.*t20.*t151.*t160.*(t2.*(-9.201240000000001e-1)+t59+t60+t152))./2.0))./2.0+cmax.*s.*t21.*t148.*t161;(s.*(-cmax.*t161.*(t94+t108+t124+t125+t147+qd_t1.*t145)+k.*t155.*(t58+t61+t153).*2.0+(cmax.*t20.*t151.*t160.*(t59+t60+t152))./2.0))./2.0+cmax.*s.*t21.*t144.*t161;t169;t169;(s.*(k.*t155.*(t97+t104+t115+t129+t137+t138).*2.0-cmax.*t161.*(-t90+t108+qd_t1.*t106+qd_t2.*t106+qd_t3.*t106+qd_t4.*t106)+(cmax.*t20.*t151.*t160.*(t98+t103+t114+t128+t136+t139))./2.0))./2.0-cmax.*s.*t21.*t105.*t161;s.*(-cmax.*t161.*(t90+qd_t1.*t88+qd_t2.*t88+qd_t3.*t88+qd_t4.*t88+qd_t5.*t88)+k.*t155.*(-t115+t132+t7.*(t83+t6.*(t43+t5.*(t36-t37))).*4.001650020000001e-2+t13.*(t83+t6.*(t43+t5.*(t36-t37))).*7.7775e-2).*2.0+(cmax.*t20.*t151.*t160.*(-t114+t133+t7.*(t83+t6.*(t43+t5.*(t36-t37))).*8.003300040000001e-2+t13.*(t83+t6.*(t43+t5.*(t36-t37))).*1.5555e-1))./2.0).*(-1.0./2.0)-cmax.*s.*t21.*t65.*t161.*8.746582711697523e-2];
