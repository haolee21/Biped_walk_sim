function dTau_toe_dq2 = dTau_toe_dq2(in1,in2,Fx,H,k,cmax,dmax,sampT)
%DTAU_TOE_DQ2
%    DTAU_TOE_DQ2 = DTAU_TOE_DQ2(IN1,IN2,FX,H,K,CMAX,DMAX,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    17-Oct-2020 12:36:11

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
t54 = atan(5.18251222829003e-1);
t55 = atan(1.929566117647059);
t57 = 1.903089174117337e+18;
t15 = cos(t14);
t17 = sin(t14);
t20 = t2.*t3;
t21 = t2.*t9;
t22 = t3.*t8;
t23 = q_t3+q_t4+t14;
t24 = t8.*t9;
t45 = t2.*4.60062e-1;
t46 = t8.*4.60062e-1;
t62 = -t55;
t25 = cos(t23);
t26 = q_t5+t23;
t27 = sin(t23);
t29 = -t24;
t31 = t21+t22;
t47 = -t45;
t48 = t15.*4.453122e-1;
t49 = t20.*4.453122e-1;
t50 = t17.*4.453122e-1;
t51 = t21.*4.453122e-1;
t52 = t22.*4.453122e-1;
t53 = t24.*4.453122e-1;
t28 = sin(t26);
t30 = cos(t26);
t32 = t20+t29;
t33 = t4.*t31;
t34 = t10.*t31;
t56 = -t49;
t58 = t25.*4.453122e-1;
t59 = t27.*4.453122e-1;
t63 = q_t6+t26+t54;
t66 = q_t6+t26+t62;
t35 = t4.*t32;
t36 = t10.*t32;
t37 = -t34;
t60 = t30.*4.60062e-1;
t61 = t28.*4.60062e-1;
t64 = cos(t63);
t65 = sin(t63);
t67 = sin(t66);
t38 = t33+t36;
t39 = t35+t37;
t42 = -t5.*(t34-t35);
t43 = -t11.*(t34-t35);
t70 = t5.*(t34-t35).*(-4.453122e-1);
t71 = t11.*(t34-t35).*(-4.453122e-1);
t73 = t5.*(t34-t35).*4.453122e-1;
t85 = (t57.*t64)./1.125899906842624e+19;
t86 = (t57.*t65)./1.125899906842624e+19;
t94 = (t57.*t67)./1.125899906842624e+19;
t96 = (Fx.*t57.*t67)./2.251799813685248e+19;
t40 = t5.*t38;
t41 = t11.*t38;
t87 = qd_t6.*t85;
t88 = qd_t1.*t86;
t89 = qd_t2.*t86;
t90 = qd_t3.*t86;
t91 = qd_t4.*t86;
t92 = qd_t5.*t86;
t93 = qd_t6.*t86;
t95 = -t94;
t99 = t60+t85;
t100 = t61+t86;
t44 = -t41;
t68 = t40.*4.453122e-1;
t69 = t41.*4.453122e-1;
t72 = t40+t43;
t77 = -t6.*(t41+t5.*(t34-t35));
t78 = -t12.*(t41+t5.*(t34-t35));
t82 = t6.*(t41+t5.*(t34-t35)).*(-4.60062e-1);
t83 = t12.*(t41+t5.*(t34-t35)).*(-4.60062e-1);
t84 = t6.*(t41+t5.*(t34-t35)).*4.60062e-1;
t101 = qd_t5.*t99;
t102 = qd_t1.*t100;
t103 = qd_t2.*t100;
t104 = qd_t3.*t100;
t105 = qd_t4.*t100;
t106 = qd_t5.*t100;
t107 = t60+t95;
t120 = t58+t99;
t121 = t59+t100;
t144 = t88+t89+t90+t91+t92+t93;
t74 = t42+t44;
t75 = t6.*t72;
t76 = t12.*t72;
t108 = (Fx.*t107)./2.0;
t122 = qd_t1.*t121;
t123 = qd_t2.*t121;
t124 = qd_t3.*t121;
t125 = qd_t4.*t121;
t126 = t120.^2;
t127 = qd_t3.*t120;
t128 = qd_t4.*t120;
t129 = t58+t107;
t132 = t50+t121;
t133 = t48+t120;
t146 = t93+t102+t103+t104+t105+t106;
t79 = -t76;
t80 = t75.*4.60062e-1;
t81 = t76.*4.60062e-1;
t97 = t75+t78;
t111 = -t108;
t113 = t7.*(t76+t6.*(t41+t5.*(t34-t35))).*(-7.7775e-2);
t114 = t13.*(t76+t6.*(t41+t5.*(t34-t35))).*(-7.7775e-2);
t117 = t7.*(t76+t6.*(t41+t5.*(t34-t35))).*(-1.500720048e-1);
t118 = t13.*(t76+t6.*(t41+t5.*(t34-t35))).*(-1.500720048e-1);
t119 = t7.*(t76+t6.*(t41+t5.*(t34-t35))).*1.500720048e-1;
t130 = (Fx.*t129)./2.0;
t134 = qd_t2.*t133;
t135 = qd_t1.*t132;
t136 = qd_t2.*t132;
t137 = t48+t129;
t140 = t46+t132;
t141 = t45+t133;
t148 = t93+t106+t122+t123+t124+t125;
t98 = t77+t79;
t109 = t7.*t97.*7.7775e-2;
t110 = t13.*t97.*7.7775e-2;
t115 = t7.*t97.*1.500720048e-1;
t116 = t13.*t97.*1.500720048e-1;
t131 = -t130;
t138 = (Fx.*t137)./2.0;
t142 = qd_t1.*t141;
t143 = qd_t1.*t140;
t150 = t93+t106+t124+t125+t135+t136;
t112 = -t110;
t139 = -t138;
t145 = t109+t114+t116+t119;
t152 = t87+t101+t127+t128+t134+t142;
t153 = t93+t106+t124+t125+t136+t143;
t147 = t81+t84+t145;
t154 = t16+t46+t51+t52+t68+t71+t80+t83+t112+t113+t115+t118;
t170 = cmax.*t18.*t145.*t152;
t149 = t69+t73+t147;
t156 = t154.^2;
t158 = cmax.*t18.*t19.*t126.*t154;
t159 = cmax.*t18.*t19.*t85.*t99.*t154;
t160 = cmax.*t18.*t19.*t85.*t120.*t154;
t161 = cmax.*t18.*t19.*t85.*t133.*t154;
t162 = cmax.*t18.*t19.*t99.*t120.*t154;
t163 = cmax.*t18.*t19.*t85.*t141.*t154;
t164 = cmax.*t18.*t19.*t99.*t133.*t154;
t165 = cmax.*t18.*t19.*t99.*t141.*t154;
t166 = cmax.*t18.*t19.*t120.*t133.*t154;
t167 = cmax.*t18.*t19.*t120.*t141.*t154;
t168 = cmax.*t18.*t19.*t133.*t141.*t154;
t169 = cmax.*t18.*t144.*t154;
t171 = k.*t145.*t154.*2.0;
t172 = cmax.*t18.*t146.*t154;
t173 = cmax.*t18.*t147.*t152;
t174 = k.*t147.*t154.*2.0;
t176 = cmax.*t18.*t148.*t154;
t179 = cmax.*t18.*t150.*t154;
t182 = cmax.*t18.*t152.*t154;
t183 = cmax.*t18.*t153.*t154;
t151 = t53+t56+t149;
t157 = k.*t156;
t175 = cmax.*t18.*t149.*t152;
t177 = k.*t149.*t154.*2.0;
t194 = t169+t170+t171;
t197 = t172+t173+t174;
t155 = t47+t151;
t178 = cmax.*t18.*t151.*t152;
t180 = k.*t151.*t154.*2.0;
t185 = t157+t182;
t195 = (t120.*t194)./2.0;
t198 = (t120.*t197)./2.0;
t200 = t175+t176+t177;
t181 = cmax.*t18.*t152.*t155;
t184 = k.*t154.*t155.*2.0;
t186 = (t57.*t65.*t185)./2.251799813685248e+19;
t188 = (t100.*t185)./2.0;
t190 = (t121.*t185)./2.0;
t192 = (t132.*t185)./2.0;
t196 = -t195;
t199 = -t198;
t201 = (t57.*t64.*t200)./2.251799813685248e+19;
t203 = (t99.*t200)./2.0;
t205 = (t120.*t200)./2.0;
t207 = t178+t179+t180;
t208 = (t133.*t200)./2.0;
t210 = (t141.*t200)./2.0;
t187 = -t186;
t189 = -t188;
t191 = -t190;
t193 = -t192;
t202 = -t201;
t204 = -t203;
t206 = -t205;
t209 = -t208;
t211 = -t210;
t212 = t181+t183+t184;
t213 = (t120.*t207)./2.0;
t214 = -t213;
t215 = (t120.*t212)./2.0;
t217 = t96+t160+t187+t196;
t218 = t111+t162+t189+t199;
t219 = t96+t160+t187+t202;
t220 = t131+t158+t191+t206;
t221 = t111+t162+t189+t204;
t222 = t131+t166+t191+t209;
t223 = t131+t167+t191+t211;
t216 = -t215;
t224 = t131+t166+t191+t214;
t225 = t131+t167+t191+t216;
dTau_toe_dq2 = reshape([t140.*t185.*(-1.0./2.0)-(t141.*t212)./2.0-(Fx.*(t45+t137))./2.0+cmax.*t18.*t19.*t141.^2.*t154,t139+t168+t193-(t141.*t207)./2.0,t223,t223,t111+t165+t189-(t141.*t197)./2.0,t96+t163+t187-(t141.*t194)./2.0,t139+t168+t193-(t133.*t212)./2.0,t139+t193-(t133.*t207)./2.0+cmax.*t18.*t19.*t133.^2.*t154,t222,t222,t111+t164+t189-(t133.*t197)./2.0,t96+t161+t187-(t133.*t194)./2.0,t225,t224,t220,t220,t218,t217,t225,t224,t220,t220,t218,t217,t111+t165+t189-(t99.*t212)./2.0,t111+t164+t189-(t99.*t207)./2.0,t221,t221,t111+t189-(t99.*t197)./2.0+cmax.*t18.*t19.*t99.^2.*t154,t96+t159+t187-(t99.*t194)./2.0,t96+t163+t187-(t57.*t64.*t212)./2.251799813685248e+19,t96+t161+t187-(t57.*t64.*t207)./2.251799813685248e+19,t219,t219,t96+t159+t187-(t57.*t64.*t197)./2.251799813685248e+19,t96+t187-(t57.*t64.*t194)./2.251799813685248e+19+cmax.*t18.*t19.*t64.^2.*t154.*2.857055724969122e-2],[6,6]);
