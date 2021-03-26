function dTau_heel_dq2 = dTau_heel_dq2(in1,in2,Fx,H,k,cmax,dmax,sampT)
%DTAU_HEEL_DQ2
%    DTAU_HEEL_DQ2 = DTAU_HEEL_DQ2(IN1,IN2,FX,H,K,CMAX,DMAX,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    19-Feb-2021 07:18:20

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
t59 = atan(5.774051282051283e-1);
t60 = 1.546478599905513e+18;
t15 = cos(t14);
t17 = sin(t14);
t20 = t2.*t3;
t21 = t2.*t9;
t22 = t3.*t8;
t23 = q_t3+q_t4+t14;
t24 = t8.*t9;
t33 = t2.*4.5018e-1;
t34 = t8.*4.5018e-1;
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
t44 = t4.*t32;
t45 = t10.*t32;
t46 = -t36;
t50 = t30.*4.5018e-1;
t51 = t28.*4.5018e-1;
t66 = cos(t65);
t68 = sin(t65);
t52 = t35+t45;
t53 = t44+t46;
t56 = -t5.*(t36-t44);
t57 = -t11.*(t36-t44);
t63 = t5.*(t36-t44).*(-4.4835e-1);
t64 = t11.*(t36-t44).*(-4.4835e-1);
t67 = t5.*(t36-t44).*4.4835e-1;
t81 = t60.*t66.*5.329070518200751e-20;
t82 = t60.*t68.*5.329070518200751e-20;
t91 = Fx.*t60.*t68.*2.664535259100376e-20;
t92 = qd_t6.*t60.*t68.*(-5.329070518200751e-20);
t54 = t5.*t52;
t55 = t11.*t52;
t83 = -t82;
t84 = qd_t1.*t81;
t85 = qd_t2.*t81;
t86 = qd_t3.*t81;
t87 = qd_t4.*t81;
t88 = qd_t5.*t81;
t89 = qd_t6.*t81;
t90 = qd_t6.*t82;
t93 = t51+t81;
t58 = -t55;
t61 = t54.*4.4835e-1;
t62 = t55.*4.4835e-1;
t69 = t54+t57;
t73 = -t6.*(t55+t5.*(t36-t44));
t74 = -t12.*(t55+t5.*(t36-t44));
t78 = t6.*(t55+t5.*(t36-t44)).*(-4.5018e-1);
t79 = t12.*(t55+t5.*(t36-t44)).*(-4.5018e-1);
t80 = t6.*(t55+t5.*(t36-t44)).*4.5018e-1;
t94 = t50+t83;
t95 = qd_t1.*t93;
t96 = qd_t2.*t93;
t97 = qd_t3.*t93;
t98 = qd_t4.*t93;
t99 = qd_t5.*t93;
t103 = t49+t93;
t139 = t84+t85+t86+t87+t88+t89;
t70 = t56+t58;
t71 = t6.*t69;
t72 = t12.*t69;
t100 = qd_t5.*t94;
t101 = (Fx.*t94)./2.0;
t104 = t48+t94;
t106 = qd_t1.*t103;
t107 = qd_t2.*t103;
t108 = qd_t3.*t103;
t109 = qd_t4.*t103;
t118 = t40+t103;
t141 = t89+t95+t96+t97+t98+t99;
t75 = -t72;
t76 = t71.*4.5018e-1;
t77 = t72.*4.5018e-1;
t102 = -t101;
t105 = t71+t74;
t111 = t104.^2;
t112 = qd_t3.*t104;
t113 = qd_t4.*t104;
t114 = (Fx.*t104)./2.0;
t120 = t38+t104;
t121 = t7.*(t72+t6.*(t55+t5.*(t36-t44))).*(-7.137e-2);
t122 = t13.*(t72+t6.*(t55+t5.*(t36-t44))).*(-7.137e-2);
t123 = qd_t1.*t118;
t124 = qd_t2.*t118;
t128 = t34+t118;
t136 = t7.*(t72+t6.*(t55+t5.*(t36-t44))).*(-4.120940400000001e-2);
t137 = t13.*(t72+t6.*(t55+t5.*(t36-t44))).*(-4.120940400000001e-2);
t138 = t13.*(t72+t6.*(t55+t5.*(t36-t44))).*4.120940400000001e-2;
t142 = t89+t99+t106+t107+t108+t109;
t110 = t73+t75;
t115 = -t114;
t116 = t7.*t105.*7.137e-2;
t117 = t13.*t105.*7.137e-2;
t125 = qd_t2.*t120;
t126 = (Fx.*t120)./2.0;
t129 = t33+t120;
t130 = qd_t1.*t128;
t132 = t7.*t105.*4.120940400000001e-2;
t133 = t13.*t105.*4.120940400000001e-2;
t144 = t89+t99+t108+t109+t123+t124;
t119 = -t117;
t127 = -t126;
t131 = qd_t1.*t129;
t134 = -t132;
t135 = -t133;
t145 = t89+t99+t108+t109+t124+t130;
t140 = t116+t122+t135+t136;
t146 = t92+t100+t112+t113+t125+t131;
t150 = t16+t34+t41+t42+t61+t64+t76+t79+t119+t121+t134+t138;
t143 = t77+t80+t140;
t151 = t150.^2;
t153 = cmax.*t18.*t19.*t111.*t150;
t154 = cmax.*t18.*t19.*t82.*t94.*t150;
t155 = cmax.*t18.*t19.*t60.*t68.*t94.*t150.*(-5.329070518200751e-20);
t156 = cmax.*t18.*t19.*t82.*t104.*t150;
t157 = cmax.*t18.*t19.*t60.*t68.*t104.*t150.*(-5.329070518200751e-20);
t158 = cmax.*t18.*t19.*t82.*t120.*t150;
t159 = cmax.*t18.*t19.*t60.*t68.*t120.*t150.*(-5.329070518200751e-20);
t160 = cmax.*t18.*t19.*t94.*t104.*t150;
t161 = cmax.*t18.*t19.*t82.*t129.*t150;
t162 = cmax.*t18.*t19.*t60.*t68.*t129.*t150.*(-5.329070518200751e-20);
t163 = cmax.*t18.*t19.*t94.*t120.*t150;
t164 = cmax.*t18.*t19.*t94.*t129.*t150;
t165 = cmax.*t18.*t19.*t104.*t120.*t150;
t166 = cmax.*t18.*t19.*t104.*t129.*t150;
t167 = cmax.*t18.*t19.*t120.*t129.*t150;
t168 = -cmax.*t18.*t146.*(-t116+t133+t7.*(t72+t6.*(t55+t5.*(t36-t44))).*4.120940400000001e-2+t13.*(t72+t6.*(t55+t5.*(t36-t44))).*7.137e-2);
t169 = cmax.*t18.*t139.*t150;
t170 = k.*t150.*(-t116+t133+t7.*(t72+t6.*(t55+t5.*(t36-t44))).*4.120940400000001e-2+t13.*(t72+t6.*(t55+t5.*(t36-t44))).*7.137e-2).*-2.0;
t172 = cmax.*t18.*t141.*t150;
t173 = cmax.*t18.*t142.*t150;
t176 = cmax.*t18.*t144.*t150;
t178 = cmax.*t18.*t145.*t150;
t180 = cmax.*t18.*t146.*t150;
t147 = t62+t67+t143;
t152 = k.*t151;
t171 = cmax.*t18.*t143.*t146;
t175 = k.*t143.*t150.*2.0;
t193 = t168+t169+t170;
t194 = t104.*(-t169+k.*t150.*(-t116+t133+t7.*(t72+t6.*(t55+t5.*(t36-t44))).*4.120940400000001e-2+t13.*(t72+t6.*(t55+t5.*(t36-t44))).*7.137e-2).*2.0+cmax.*t18.*t146.*(-t116+t133+t7.*(t72+t6.*(t55+t5.*(t36-t44))).*4.120940400000001e-2+t13.*(t72+t6.*(t55+t5.*(t36-t44))).*7.137e-2)).*(-1.0./2.0);
t195 = (t104.*(-t169+k.*t150.*(-t116+t133+t7.*(t72+t6.*(t55+t5.*(t36-t44))).*4.120940400000001e-2+t13.*(t72+t6.*(t55+t5.*(t36-t44))).*7.137e-2).*2.0+cmax.*t18.*t146.*(-t116+t133+t7.*(t72+t6.*(t55+t5.*(t36-t44))).*4.120940400000001e-2+t13.*(t72+t6.*(t55+t5.*(t36-t44))).*7.137e-2)))./2.0;
t148 = t43+t47+t147;
t174 = cmax.*t18.*t146.*t147;
t181 = k.*t147.*t150.*2.0;
t184 = t152+t180;
t196 = t171+t172+t175;
t149 = t37+t148;
t177 = cmax.*t18.*t146.*t148;
t182 = k.*t148.*t150.*2.0;
t185 = t60.*t66.*t184.*2.664535259100376e-20;
t187 = (t93.*t184)./2.0;
t189 = (t103.*t184)./2.0;
t191 = (t118.*t184)./2.0;
t197 = (t104.*t196)./2.0;
t199 = t173+t174+t181;
t179 = cmax.*t18.*t146.*t149;
t183 = k.*t149.*t150.*2.0;
t186 = -t185;
t188 = -t187;
t190 = -t189;
t192 = -t191;
t198 = -t197;
t200 = t176+t177+t182;
t201 = t60.*t68.*t199.*2.664535259100376e-20;
t202 = (t94.*t199)./2.0;
t205 = (t104.*t199)./2.0;
t207 = (t120.*t199)./2.0;
t209 = (t129.*t199)./2.0;
t203 = -t202;
t204 = t178+t179+t183;
t206 = -t205;
t208 = -t207;
t210 = -t209;
t211 = (t104.*t200)./2.0;
t215 = t91+t157+t186+t195;
t216 = t102+t160+t188+t198;
t217 = t91+t157+t186+t201;
t212 = -t211;
t213 = (t104.*t204)./2.0;
t218 = t115+t153+t190+t206;
t219 = t102+t160+t188+t203;
t220 = t115+t165+t190+t208;
t221 = t115+t166+t190+t210;
t214 = -t213;
t222 = t115+t165+t190+t212;
t223 = t115+t166+t190+t214;
dTau_heel_dq2 = reshape([Fx.*t129.*(-1.0./2.0)-(t128.*t184)./2.0-(t129.*t204)./2.0+cmax.*t18.*t19.*t129.^2.*t150,t127+t167+t192-(t129.*t200)./2.0,t221,t221,t102+t164+t188-(t129.*t196)./2.0,t91+t162+t186+(t129.*(-t169+k.*t150.*(-t116+t133+t7.*(t72+t6.*(t55+t5.*(t36-t44))).*4.120940400000001e-2+t13.*(t72+t6.*(t55+t5.*(t36-t44))).*7.137e-2).*2.0+cmax.*t18.*t146.*(-t116+t133+t7.*(t72+t6.*(t55+t5.*(t36-t44))).*4.120940400000001e-2+t13.*(t72+t6.*(t55+t5.*(t36-t44))).*7.137e-2)))./2.0,t127+t167+t192-(t120.*t204)./2.0,t127+t192-(t120.*t200)./2.0+cmax.*t18.*t19.*t120.^2.*t150,t220,t220,t102+t163+t188-(t120.*t196)./2.0,t91+t159+t186+(t120.*(-t169+k.*t150.*(-t116+t133+t7.*(t72+t6.*(t55+t5.*(t36-t44))).*4.120940400000001e-2+t13.*(t72+t6.*(t55+t5.*(t36-t44))).*7.137e-2).*2.0+cmax.*t18.*t146.*(-t116+t133+t7.*(t72+t6.*(t55+t5.*(t36-t44))).*4.120940400000001e-2+t13.*(t72+t6.*(t55+t5.*(t36-t44))).*7.137e-2)))./2.0,t223,t222,t218,t218,t216,t215,t223,t222,t218,t218,t216,t215,t102+t164+t188-(t94.*t204)./2.0,t102+t163+t188-(t94.*t200)./2.0,t219,t219,t102+t188-(t94.*t196)./2.0+cmax.*t18.*t19.*t94.^2.*t150,t91+t155+t186+(t94.*(-t169+k.*t150.*(-t116+t133+t7.*(t72+t6.*(t55+t5.*(t36-t44))).*4.120940400000001e-2+t13.*(t72+t6.*(t55+t5.*(t36-t44))).*7.137e-2).*2.0+cmax.*t18.*t146.*(-t116+t133+t7.*(t72+t6.*(t55+t5.*(t36-t44))).*4.120940400000001e-2+t13.*(t72+t6.*(t55+t5.*(t36-t44))).*7.137e-2)))./2.0,t91+t162+t186+t60.*t68.*t204.*2.664535259100376e-20,t91+t159+t186+t60.*t68.*t200.*2.664535259100376e-20,t217,t217,t91+t155+t186+t60.*t68.*t196.*2.664535259100376e-20,t91+t186-t60.*t68.*(-t169+k.*t150.*(-t116+t133+t7.*(t72+t6.*(t55+t5.*(t36-t44))).*4.120940400000001e-2+t13.*(t72+t6.*(t55+t5.*(t36-t44))).*7.137e-2).*2.0+cmax.*t18.*t146.*(-t116+t133+t7.*(t72+t6.*(t55+t5.*(t36-t44))).*4.120940400000001e-2+t13.*(t72+t6.*(t55+t5.*(t36-t44))).*7.137e-2)).*2.664535259100376e-20+cmax.*t18.*t19.*t68.^2.*t150.*6.791891878035216e-3],[6,6]);
