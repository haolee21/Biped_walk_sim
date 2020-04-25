function dM_dx4 = dM_dx4(q2,q3,q4,q5)
%DM_DX4
%    DM_DX4 = DM_DX4(Q2,Q3,Q4,Q5)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    24-Apr-2020 17:38:19

t2 = cos(q2);
t3 = cos(q3);
t4 = cos(q4);
t5 = cos(q5);
t6 = sin(q2);
t7 = sin(q3);
t8 = sin(q4);
t9 = sin(q5);
t10 = t9.^2;
t11 = t3.*t4.*(2.0./5.0);
t12 = t3.*t8.*(2.0./5.0);
t13 = t4.*t7.*(2.0./5.0);
t14 = t7.*t8.*(2.0./5.0);
t16 = t2.*(4.3e+1./1.0e+2);
t17 = t5.*(4.57e+2./2.5e+2);
t18 = t3.*t6.*(4.3e+1./1.0e+2);
t19 = t6.*t7.*(4.3e+1./1.0e+2);
t22 = t3.*t4.*(7.77e+2./2.5e+2);
t23 = t3.*t8.*(7.77e+2./2.5e+2);
t24 = t4.*t7.*(7.77e+2./2.5e+2);
t25 = t7.*t8.*(7.77e+2./2.5e+2);
t28 = t4.*t5.*8.683e-1;
t29 = t4.*t9.*8.683e-1;
t30 = t5.*t8.*8.683e-1;
t31 = t3.*t8.*5.2836e-1;
t32 = t4.*t7.*5.2836e-1;
t33 = t8.*t9.*8.683e-1;
t15 = -t14;
t20 = t9.*t17;
t21 = t10.*(4.57e+2./2.5e+2);
t26 = t16+2.0./5.0;
t27 = -t25;
t36 = -t31;
t37 = -t32;
t38 = -t33;
t39 = t12+t13;
t43 = t17+8.683e-1;
t62 = t29+t30;
t34 = t3.*t26;
t35 = t7.*t26;
t40 = t11+t15;
t44 = t5.*t43;
t45 = t9.*t43;
t46 = t5.*t39.*(4.57e+2./1.0e+2);
t47 = t9.*t39.*(4.57e+2./1.0e+2);
t57 = t5.*t39.*8.683e-1;
t65 = t28+t38;
t69 = t3.*t62.*(2.0./5.0);
t41 = -t34;
t42 = t40+2.0./5.0;
t48 = -t45;
t49 = t18+t35;
t50 = t5.*t40.*(4.57e+2./1.0e+2);
t51 = t9.*t40.*(4.57e+2./1.0e+2);
t52 = -t47;
t59 = -t57;
t60 = t9.*t40.*8.683e-1;
t71 = -t69;
t72 = t7.*t65.*(2.0./5.0);
t78 = -t4.*(t45-t5.*t9.*(4.57e+2./2.5e+2));
t80 = -t8.*(t45-t5.*t9.*(4.57e+2./2.5e+2));
t82 = t4.*(t45-t5.*t9.*(4.57e+2./2.5e+2));
t83 = t21+t44+1.3209;
t53 = t19+t41;
t54 = t4.*t49;
t55 = t8.*t49;
t56 = t5.*t42.*(4.57e+2./1.0e+2);
t58 = t9.*t42.*(4.57e+2./1.0e+2);
t64 = -t60;
t70 = t20+t48;
t75 = -t72;
t84 = t8.*t83;
t85 = t4.*t83;
t86 = t46+t51;
t87 = t50+t52;
t91 = -t5.*(t47-t50);
t92 = -t9.*(t47-t50);
t95 = t9.*(t47-t50);
t61 = t4.*t53;
t63 = t8.*t53;
t67 = t54.*(7.77e+2./1.0e+2);
t68 = t55.*(7.77e+2./1.0e+2);
t76 = t54.*1.3209;
t88 = t5.*t86;
t89 = t9.*t86;
t90 = t46+t58;
t98 = t95.*(-2.0./5.0);
t102 = t52+t56+8.683e-1;
t117 = t80+t85;
t118 = t82+t84;
t66 = -t63;
t73 = t61.*(7.77e+2./1.0e+2);
t74 = t63.*(7.77e+2./1.0e+2);
t79 = -t76;
t81 = t63.*1.3209;
t93 = t5.*t90;
t94 = t88.*(2.0./5.0);
t96 = t9.*t90;
t99 = t55+t61;
t103 = t5.*t102;
t104 = t9.*t102;
t119 = t3.*t117;
t120 = t7.*t117;
t121 = t3.*t118;
t122 = t7.*t118;
t128 = t22+t27+t89+t91;
t129 = t23+t24+t88+t95;
t77 = -t74;
t97 = -t94;
t100 = t54+t66;
t101 = t99-2.0./5.0;
t105 = t5.*t99.*(4.57e+2./1.0e+2);
t106 = t9.*t99.*(4.57e+2./1.0e+2);
t107 = -t104;
t113 = t9.*t99.*8.683e-1;
t123 = t120.*(2.0./5.0);
t124 = -t122;
t126 = t121.*(2.0./5.0);
t130 = t4.*t128;
t131 = t8.*t128;
t132 = t4.*t129;
t133 = t8.*t129;
t158 = t22+t27+t96+t103+1.3209;
t162 = t120+t121;
t108 = -t106;
t109 = t5.*t100.*(4.57e+2./1.0e+2);
t110 = t9.*t100.*(4.57e+2./1.0e+2);
t111 = t5.*t101.*(4.57e+2./1.0e+2);
t112 = t9.*t101.*(4.57e+2./1.0e+2);
t115 = t5.*t100.*8.683e-1;
t125 = -t123;
t127 = -t126;
t134 = -t131;
t150 = t23+t24+t93+t107;
t159 = t4.*t158;
t160 = t8.*t158;
t163 = t119+t124;
t165 = t16.*t162;
t166 = t2.*t162.*(-4.3e+1./1.0e+2);
t169 = t36+t37+t59+t64+t97+t98;
t114 = -t112;
t116 = -t115;
t135 = t105+t110;
t136 = t108+t109;
t139 = -t9.*(t106-t109);
t140 = -t5.*(t106-t109);
t142 = t9.*(t106-t109);
t145 = t5.*(t106-t109).*(-2.0./5.0);
t148 = t5.*(t106-t109).*(2.0./5.0);
t151 = t4.*t150;
t152 = t8.*t150;
t153 = t110+t111-8.683e-1;
t161 = -t159;
t164 = t125+t127;
t167 = t6.*t163.*(4.3e+1./1.0e+2);
t137 = t9.*t135;
t138 = t5.*t135;
t141 = t109+t114;
t154 = -t151;
t155 = -t152;
t156 = t9.*t153;
t157 = t5.*t153;
t168 = -t167;
t190 = t3.*(t131-t132+t151-t160).*(-2.0./5.0);
t192 = t3.*(t131-t132+t151-t160).*(2.0./5.0);
t143 = t137.*(2.0./5.0);
t146 = t9.*t141;
t147 = t5.*t141;
t170 = t67+t77+t137+t140;
t171 = t68+t73+t138+t142;
t187 = t164+t166+t168;
t188 = t130+t133+t155+t161;
t189 = t132+t134+t154+t160;
t144 = -t143;
t149 = -t146;
t172 = t4.*t170;
t173 = t8.*t170;
t174 = t4.*t171;
t175 = t8.*t171;
t177 = t67+t77+t147+t156;
t191 = t7.*t188.*(2.0./5.0);
t176 = -t173;
t178 = t4.*t177;
t179 = t8.*t177;
t181 = t68+t73+t149+t157-1.3209;
t186 = t79+t81+t113+t116+t144+t148;
t180 = -t178;
t182 = t4.*t181;
t183 = t8.*t181;
t184 = -t182;
t185 = -t183;
t196 = t7.*(t173-t174-t179+t182).*(-2.0./5.0);
t198 = t7.*(t173-t174-t179+t182).*(2.0./5.0);
t193 = t172+t175+t180+t185;
t194 = t174+t176+t179+t184;
t195 = t3.*t193.*(2.0./5.0);
t197 = -t195;
dM_dx4 = reshape([t186+t197+t198-t2.*(t3.*t193-t7.*(t173-t174-t179+t182)).*(4.3e+1./1.0e+2)+t6.*(t7.*t193+t3.*(t173-t174-t179+t182)).*(4.3e+1./1.0e+2),t169+t191+t192+t2.*(t7.*t188+t3.*(t131-t132+t151-t160)).*(4.3e+1./1.0e+2)+t6.*(t3.*t188-t7.*(t131-t132+t151-t160)).*(4.3e+1./1.0e+2),t187,t187,t71+t75-t2.*(t3.*t62+t7.*t65).*(4.3e+1./1.0e+2)-t6.*(t3.*t65-t7.*t62).*(4.3e+1./1.0e+2),t186+t197+t198,t169+t191+t192,t164,t164,t71+t75,t186,t169,0.0,0.0,0.0,t186,t169,0.0,0.0,0.0,t113+t116,t59+t64,0.0,0.0,0.0],[5,5]);
