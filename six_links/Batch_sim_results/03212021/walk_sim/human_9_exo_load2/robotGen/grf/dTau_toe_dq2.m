function dTau_toe_dq2 = dTau_toe_dq2(in1,in2,Fx,H,k,cmax,dmax,sampT)
%DTAU_TOE_DQ2
%    DTAU_TOE_DQ2 = DTAU_TOE_DQ2(IN1,IN2,FX,H,K,CMAX,DMAX,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    19-Feb-2021 17:29:36

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
t16 = -H;
t18 = 1.0./dmax;
t19 = 1.0./sampT;
t59 = atan(4.618051608502898e-1);
t60 = atan(2.165415384615385);
t61 = 1.1978829188531e+18;
t15 = cos(t14);
t17 = sin(t14);
t20 = t2.*t3;
t21 = t2.*t9;
t22 = t3.*t8;
t23 = q_t3+q_t4+t14;
t24 = t8.*t9;
t33 = t2.*4.5018e-1;
t34 = t8.*4.5018e-1;
t62 = -t60;
t25 = cos(t23);
t26 = q_t5+t23;
t27 = sin(t23);
t29 = -t24;
t31 = t21+t22;
t37 = -t33;
t38 = t15.*4.4835e-1;
t39 = t20.*4.4835e-1;
t40 = t17.*4.4835e-1;
t41 = t21.*4.4835e-1;
t42 = t22.*4.4835e-1;
t43 = t24.*4.4835e-1;
t28 = sin(t26);
t30 = cos(t26);
t32 = t20+t29;
t35 = t4.*t31;
t36 = t10.*t31;
t47 = -t39;
t48 = t25.*4.4835e-1;
t49 = t27.*4.4835e-1;
t65 = q_t6+t26+t59;
t71 = q_t6+t26+t62;
t44 = t4.*t32;
t45 = t10.*t32;
t46 = -t36;
t50 = t30.*4.5018e-1;
t51 = t28.*4.5018e-1;
t66 = cos(t65);
t68 = sin(t65);
t72 = sin(t71);
t52 = t35+t45;
t53 = t44+t46;
t56 = -t5.*(t36-t44);
t57 = -t11.*(t36-t44);
t67 = t5.*(t36-t44).*(-4.4835e-1);
t69 = t11.*(t36-t44).*(-4.4835e-1);
t70 = t5.*(t36-t44).*4.4835e-1;
t85 = (t61.*t66)./7.0368744177664e+18;
t86 = (t61.*t68)./7.0368744177664e+18;
t94 = (t61.*t72)./7.0368744177664e+18;
t96 = (Fx.*t61.*t72)./1.40737488355328e+19;
t54 = t5.*t52;
t55 = t11.*t52;
t87 = qd_t6.*t85;
t88 = qd_t1.*t86;
t89 = qd_t2.*t86;
t90 = qd_t3.*t86;
t91 = qd_t4.*t86;
t92 = qd_t5.*t86;
t93 = qd_t6.*t86;
t95 = -t94;
t97 = t50+t85;
t98 = t51+t86;
t58 = -t55;
t63 = t54.*4.4835e-1;
t64 = t55.*4.4835e-1;
t73 = t54+t57;
t77 = -t6.*(t55+t5.*(t36-t44));
t78 = -t12.*(t55+t5.*(t36-t44));
t82 = t6.*(t55+t5.*(t36-t44)).*(-4.5018e-1);
t83 = t12.*(t55+t5.*(t36-t44)).*(-4.5018e-1);
t84 = t6.*(t55+t5.*(t36-t44)).*4.5018e-1;
t99 = qd_t5.*t97;
t100 = qd_t1.*t98;
t101 = qd_t2.*t98;
t102 = qd_t3.*t98;
t103 = qd_t4.*t98;
t104 = qd_t5.*t98;
t105 = t50+t95;
t108 = t48+t97;
t109 = t49+t98;
t144 = t88+t89+t90+t91+t92+t93;
t74 = t56+t58;
t75 = t6.*t73;
t76 = t12.*t73;
t106 = (Fx.*t105)./2.0;
t110 = qd_t3.*t108;
t111 = qd_t4.*t108;
t112 = qd_t1.*t109;
t113 = qd_t2.*t109;
t114 = qd_t3.*t109;
t115 = qd_t4.*t109;
t116 = t108.^2;
t118 = t48+t105;
t122 = t38+t108;
t123 = t40+t109;
t146 = t93+t100+t101+t102+t103+t104;
t79 = -t76;
t80 = t75.*4.5018e-1;
t81 = t76.*4.5018e-1;
t107 = -t106;
t117 = t75+t78;
t120 = (Fx.*t118)./2.0;
t126 = qd_t2.*t122;
t127 = qd_t1.*t123;
t128 = qd_t2.*t123;
t130 = t7.*(t76+t6.*(t55+t5.*(t36-t44))).*(-7.137e-2);
t131 = t13.*(t76+t6.*(t55+t5.*(t36-t44))).*(-7.137e-2);
t132 = t38+t118;
t135 = t33+t122;
t136 = t34+t123;
t141 = t7.*(t76+t6.*(t55+t5.*(t36-t44))).*(-1.54545696e-1);
t142 = t13.*(t76+t6.*(t55+t5.*(t36-t44))).*(-1.54545696e-1);
t143 = t7.*(t76+t6.*(t55+t5.*(t36-t44))).*1.54545696e-1;
t147 = t93+t104+t112+t113+t114+t115;
t119 = t77+t79;
t121 = -t120;
t124 = t7.*t117.*7.137e-2;
t125 = t13.*t117.*7.137e-2;
t133 = (Fx.*t132)./2.0;
t137 = qd_t1.*t135;
t138 = qd_t1.*t136;
t139 = t7.*t117.*1.54545696e-1;
t140 = t13.*t117.*1.54545696e-1;
t148 = t93+t104+t114+t115+t127+t128;
t129 = -t125;
t134 = -t133;
t145 = t124+t131+t140+t143;
t150 = t87+t99+t110+t111+t126+t137;
t151 = t93+t104+t114+t115+t128+t138;
t149 = t81+t84+t145;
t154 = t16+t34+t41+t42+t63+t69+t80+t83+t129+t130+t139+t142;
t169 = cmax.*t18.*t145.*t150;
t152 = t64+t70+t149;
t156 = t154.^2;
t158 = cmax.*t18.*t19.*t116.*t154;
t159 = cmax.*t18.*t19.*t85.*t97.*t154;
t160 = cmax.*t18.*t19.*t85.*t108.*t154;
t161 = cmax.*t18.*t19.*t85.*t122.*t154;
t162 = cmax.*t18.*t19.*t97.*t108.*t154;
t163 = cmax.*t18.*t19.*t85.*t135.*t154;
t164 = cmax.*t18.*t19.*t97.*t122.*t154;
t165 = cmax.*t18.*t19.*t97.*t135.*t154;
t166 = cmax.*t18.*t19.*t108.*t122.*t154;
t167 = cmax.*t18.*t19.*t108.*t135.*t154;
t168 = cmax.*t18.*t19.*t122.*t135.*t154;
t170 = cmax.*t18.*t144.*t154;
t171 = k.*t145.*t154.*2.0;
t172 = cmax.*t18.*t149.*t150;
t173 = cmax.*t18.*t146.*t154;
t175 = cmax.*t18.*t147.*t154;
t177 = cmax.*t18.*t148.*t154;
t178 = k.*t149.*t154.*2.0;
t179 = cmax.*t18.*t150.*t154;
t180 = cmax.*t18.*t151.*t154;
t153 = t43+t47+t152;
t157 = k.*t156;
t174 = cmax.*t18.*t150.*t152;
t182 = k.*t152.*t154.*2.0;
t194 = t169+t170+t171;
t197 = t172+t173+t178;
t155 = t37+t153;
t176 = cmax.*t18.*t150.*t153;
t183 = k.*t153.*t154.*2.0;
t185 = t157+t179;
t195 = (t108.*t194)./2.0;
t198 = (t108.*t197)./2.0;
t200 = t174+t175+t182;
t181 = cmax.*t18.*t150.*t155;
t184 = k.*t154.*t155.*2.0;
t186 = (t61.*t68.*t185)./1.40737488355328e+19;
t188 = (t98.*t185)./2.0;
t190 = (t109.*t185)./2.0;
t192 = (t123.*t185)./2.0;
t196 = -t195;
t199 = -t198;
t201 = t176+t177+t183;
t202 = (t61.*t66.*t200)./1.40737488355328e+19;
t204 = (t97.*t200)./2.0;
t207 = (t108.*t200)./2.0;
t209 = (t122.*t200)./2.0;
t211 = (t135.*t200)./2.0;
t187 = -t186;
t189 = -t188;
t191 = -t190;
t193 = -t192;
t203 = -t202;
t205 = -t204;
t206 = t180+t181+t184;
t208 = -t207;
t210 = -t209;
t212 = -t211;
t213 = (t108.*t201)./2.0;
t214 = -t213;
t215 = (t108.*t206)./2.0;
t217 = t96+t160+t187+t196;
t218 = t107+t162+t189+t199;
t219 = t96+t160+t187+t203;
t220 = t121+t158+t191+t208;
t221 = t107+t162+t189+t205;
t222 = t121+t166+t191+t210;
t223 = t121+t167+t191+t212;
t216 = -t215;
t224 = t121+t166+t191+t214;
t225 = t121+t167+t191+t216;
dTau_toe_dq2 = reshape([t136.*t185.*(-1.0./2.0)-(t135.*t206)./2.0-(Fx.*(t33+t132))./2.0+cmax.*t18.*t19.*t135.^2.*t154,t134+t168+t193-(t135.*t201)./2.0,t223,t223,t107+t165+t189-(t135.*t197)./2.0,t96+t163+t187-(t135.*t194)./2.0,t134+t168+t193-(t122.*t206)./2.0,t134+t193-(t122.*t201)./2.0+cmax.*t18.*t19.*t122.^2.*t154,t222,t222,t107+t164+t189-(t122.*t197)./2.0,t96+t161+t187-(t122.*t194)./2.0,t225,t224,t220,t220,t218,t217,t225,t224,t220,t220,t218,t217,t107+t165+t189-(t97.*t206)./2.0,t107+t164+t189-(t97.*t201)./2.0,t221,t221,t107+t189-(t97.*t197)./2.0+cmax.*t18.*t19.*t97.^2.*t154,t96+t159+t187-(t97.*t194)./2.0,t96+t163+t187-(t61.*t66.*t206)./1.40737488355328e+19,t96+t161+t187-(t61.*t66.*t201)./1.40737488355328e+19,t219,t219,t96+t159+t187-(t61.*t66.*t197)./1.40737488355328e+19,t96+t187-(t61.*t66.*t194)./1.40737488355328e+19+cmax.*t18.*t19.*t66.^2.*t154.*2.897804905212442e-2],[6,6]);
