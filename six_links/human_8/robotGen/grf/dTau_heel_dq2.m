function dTau_heel_dq2 = dTau_heel_dq2(in1,in2,Fx,H,k,cmax,dmax,sampT)
%DTAU_HEEL_DQ2
%    DTAU_HEEL_DQ2 = DTAU_HEEL_DQ2(IN1,IN2,FX,H,K,CMAX,DMAX,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    30-Oct-2020 22:56:12

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
t54 = atan(5.145162352941177e-1);
t55 = atan(1.943573266309781);
t61 = 7.878221328233238e+18;
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
t57 = t25.*4.453122e-1;
t58 = t27.*4.453122e-1;
t63 = q_t6+t26+t54;
t65 = q_t6+t26+t62;
t35 = t4.*t32;
t36 = t10.*t32;
t37 = -t34;
t59 = t30.*4.60062e-1;
t60 = t28.*4.60062e-1;
t64 = sin(t63);
t66 = cos(t65);
t67 = sin(t65);
t38 = t33+t36;
t39 = t35+t37;
t42 = -t5.*(t34-t35);
t43 = -t11.*(t34-t35);
t70 = t5.*(t34-t35).*(-4.453122e-1);
t71 = t11.*(t34-t35).*(-4.453122e-1);
t73 = t5.*(t34-t35).*4.453122e-1;
t85 = (t61.*t64)./9.007199254740992e+19;
t87 = (Fx.*t61.*t64)./1.801439850948198e+20;
t88 = (t61.*t66)./9.007199254740992e+19;
t89 = (t61.*t67)./9.007199254740992e+19;
t99 = qd_t6.*t61.*t66.*(-1.110223024625157e-20);
t100 = qd_t6.*t61.*t67.*(-1.110223024625157e-20);
t40 = t5.*t38;
t41 = t11.*t38;
t86 = -t85;
t90 = qd_t6.*t88;
t91 = qd_t1.*t89;
t92 = qd_t2.*t89;
t93 = qd_t3.*t89;
t94 = qd_t4.*t89;
t95 = qd_t5.*t89;
t96 = qd_t6.*t89;
t97 = -t88;
t98 = -t89;
t44 = -t41;
t68 = t40.*4.453122e-1;
t69 = t41.*4.453122e-1;
t72 = t40+t43;
t77 = -t6.*(t41+t5.*(t34-t35));
t78 = -t12.*(t41+t5.*(t34-t35));
t82 = t6.*(t41+t5.*(t34-t35)).*(-4.60062e-1);
t83 = t12.*(t41+t5.*(t34-t35)).*(-4.60062e-1);
t84 = t6.*(t41+t5.*(t34-t35)).*4.60062e-1;
t103 = t59+t86;
t104 = t59+t97;
t105 = t60+t98;
t150 = t91+t92+t93+t94+t95+t96;
t74 = t42+t44;
t75 = t6.*t72;
t76 = t12.*t72;
t106 = qd_t5.*t104;
t107 = qd_t1.*t105;
t108 = qd_t2.*t105;
t109 = qd_t3.*t105;
t110 = qd_t4.*t105;
t111 = qd_t5.*t105;
t112 = (Fx.*t103)./2.0;
t126 = t57+t103;
t127 = t57+t104;
t128 = t58+t105;
t79 = -t76;
t80 = t75.*4.60062e-1;
t81 = t76.*4.60062e-1;
t101 = t75+t78;
t114 = -t112;
t117 = t7.*(t76+t6.*(t41+t5.*(t34-t35))).*(-7.7775e-2);
t118 = t13.*(t76+t6.*(t41+t5.*(t34-t35))).*(-7.7775e-2);
t123 = t7.*(t76+t6.*(t41+t5.*(t34-t35))).*(-4.001650020000001e-2);
t124 = t13.*(t76+t6.*(t41+t5.*(t34-t35))).*(-4.001650020000001e-2);
t125 = t13.*(t76+t6.*(t41+t5.*(t34-t35))).*4.001650020000001e-2;
t129 = qd_t1.*t128;
t130 = qd_t2.*t128;
t131 = qd_t3.*t128;
t132 = qd_t4.*t128;
t133 = (Fx.*t126)./2.0;
t134 = t127.^2;
t135 = qd_t3.*t127;
t136 = qd_t4.*t127;
t138 = t48+t126;
t139 = t50+t128;
t140 = t48+t127;
t153 = t100+t107+t108+t109+t110+t111;
t102 = t77+t79;
t113 = t7.*t101.*7.7775e-2;
t115 = t13.*t101.*7.7775e-2;
t119 = t7.*t101.*4.001650020000001e-2;
t120 = t13.*t101.*4.001650020000001e-2;
t137 = -t133;
t141 = (Fx.*t138)./2.0;
t142 = qd_t2.*t140;
t143 = qd_t1.*t139;
t144 = qd_t2.*t139;
t146 = t46+t139;
t147 = t45+t140;
t155 = t100+t111+t129+t130+t131+t132;
t116 = -t115;
t121 = -t119;
t122 = -t120;
t145 = -t141;
t148 = qd_t1.*t147;
t149 = qd_t1.*t146;
t157 = t100+t111+t131+t132+t143+t144;
t151 = t113+t118+t122+t123;
t159 = t16+t46+t51+t52+t68+t71+t80+t83+t116+t117+t121+t125;
t162 = t99+t106+t135+t136+t142+t148;
t163 = t100+t111+t131+t132+t144+t149;
t152 = t81+t84+t151;
t160 = t159.^2;
t164 = cmax.*t18.*t19.*t134.*t159;
t165 = cmax.*t18.*t19.*t88.*t104.*t159;
t166 = cmax.*t18.*t19.*t61.*t66.*t104.*t159.*(-1.110223024625157e-20);
t167 = cmax.*t18.*t19.*t88.*t127.*t159;
t168 = cmax.*t18.*t19.*t61.*t66.*t127.*t159.*(-1.110223024625157e-20);
t169 = cmax.*t18.*t19.*t88.*t140.*t159;
t170 = cmax.*t18.*t19.*t61.*t66.*t140.*t159.*(-1.110223024625157e-20);
t171 = cmax.*t18.*t19.*t104.*t127.*t159;
t172 = cmax.*t18.*t19.*t88.*t147.*t159;
t173 = cmax.*t18.*t19.*t61.*t66.*t147.*t159.*(-1.110223024625157e-20);
t174 = cmax.*t18.*t19.*t104.*t140.*t159;
t175 = cmax.*t18.*t19.*t104.*t147.*t159;
t176 = cmax.*t18.*t19.*t127.*t140.*t159;
t177 = cmax.*t18.*t19.*t127.*t147.*t159;
t178 = cmax.*t18.*t19.*t140.*t147.*t159;
t179 = k.*t159.*(-t113+t120+t7.*(t76+t6.*(t41+t5.*(t34-t35))).*4.001650020000001e-2+t13.*(t76+t6.*(t41+t5.*(t34-t35))).*7.7775e-2).*-2.0;
t180 = cmax.*t18.*t150.*t159;
t182 = -cmax.*t18.*t162.*(-t113+t120+t7.*(t76+t6.*(t41+t5.*(t34-t35))).*4.001650020000001e-2+t13.*(t76+t6.*(t41+t5.*(t34-t35))).*7.7775e-2);
t184 = cmax.*t18.*t153.*t159;
t188 = cmax.*t18.*t155.*t159;
t191 = cmax.*t18.*t157.*t159;
t194 = cmax.*t18.*t159.*t162;
t195 = cmax.*t18.*t159.*t163;
t154 = t69+t73+t152;
t161 = k.*t160;
t181 = -t180;
t183 = k.*t152.*t159.*2.0;
t185 = cmax.*t18.*t152.*t162;
t205 = t127.*(t180+k.*t159.*(-t113+t120+t7.*(t76+t6.*(t41+t5.*(t34-t35))).*4.001650020000001e-2+t13.*(t76+t6.*(t41+t5.*(t34-t35))).*7.7775e-2).*2.0+cmax.*t18.*t162.*(-t113+t120+t7.*(t76+t6.*(t41+t5.*(t34-t35))).*4.001650020000001e-2+t13.*(t76+t6.*(t41+t5.*(t34-t35))).*7.7775e-2)).*(-1.0./2.0);
t206 = (t127.*(t180+k.*t159.*(-t113+t120+t7.*(t76+t6.*(t41+t5.*(t34-t35))).*4.001650020000001e-2+t13.*(t76+t6.*(t41+t5.*(t34-t35))).*7.7775e-2).*2.0+cmax.*t18.*t162.*(-t113+t120+t7.*(t76+t6.*(t41+t5.*(t34-t35))).*4.001650020000001e-2+t13.*(t76+t6.*(t41+t5.*(t34-t35))).*7.7775e-2)))./2.0;
t156 = t53+t56+t154;
t186 = k.*t154.*t159.*2.0;
t187 = cmax.*t18.*t154.*t162;
t196 = t161+t194;
t204 = t179+t181+t182;
t207 = t183+t184+t185;
t158 = t47+t156;
t189 = k.*t156.*t159.*2.0;
t190 = cmax.*t18.*t156.*t162;
t197 = (t61.*t67.*t196)./1.801439850948198e+20;
t198 = (t105.*t196)./2.0;
t200 = (t128.*t196)./2.0;
t202 = (t139.*t196)./2.0;
t208 = (t127.*t207)./2.0;
t210 = t186+t187+t188;
t192 = k.*t158.*t159.*2.0;
t193 = cmax.*t18.*t158.*t162;
t199 = -t198;
t201 = -t200;
t203 = -t202;
t209 = -t208;
t211 = (t61.*t66.*t210)./1.801439850948198e+20;
t212 = (t104.*t210)./2.0;
t214 = (t127.*t210)./2.0;
t216 = t189+t190+t191;
t217 = (t140.*t210)./2.0;
t219 = (t147.*t210)./2.0;
t226 = t87+t168+t197+t206;
t213 = -t212;
t215 = -t214;
t218 = -t217;
t220 = -t219;
t221 = t192+t193+t195;
t222 = (t127.*t216)./2.0;
t227 = t114+t171+t199+t209;
t228 = t87+t168+t197+t211;
t223 = -t222;
t224 = (t127.*t221)./2.0;
t229 = t137+t164+t201+t215;
t230 = t114+t171+t199+t213;
t231 = t137+t176+t201+t218;
t232 = t137+t177+t201+t220;
t225 = -t224;
t233 = t137+t176+t201+t223;
t234 = t137+t177+t201+t225;
dTau_heel_dq2 = reshape([t146.*t196.*(-1.0./2.0)-(t147.*t221)./2.0-(Fx.*(t45+t138))./2.0+cmax.*t18.*t19.*t147.^2.*t159,t145+t178+t203-(t147.*t216)./2.0,t232,t232,t114+t175+t199-(t147.*t207)./2.0,t87+t173+t197+(t147.*(t180+k.*t159.*(-t113+t120+t7.*(t76+t6.*(t41+t5.*(t34-t35))).*4.001650020000001e-2+t13.*(t76+t6.*(t41+t5.*(t34-t35))).*7.7775e-2).*2.0+cmax.*t18.*t162.*(-t113+t120+t7.*(t76+t6.*(t41+t5.*(t34-t35))).*4.001650020000001e-2+t13.*(t76+t6.*(t41+t5.*(t34-t35))).*7.7775e-2)))./2.0,t145+t178+t203-(t140.*t221)./2.0,t145+t203-(t140.*t216)./2.0+cmax.*t18.*t19.*t140.^2.*t159,t231,t231,t114+t174+t199-(t140.*t207)./2.0,t87+t170+t197+(t140.*(t180+k.*t159.*(-t113+t120+t7.*(t76+t6.*(t41+t5.*(t34-t35))).*4.001650020000001e-2+t13.*(t76+t6.*(t41+t5.*(t34-t35))).*7.7775e-2).*2.0+cmax.*t18.*t162.*(-t113+t120+t7.*(t76+t6.*(t41+t5.*(t34-t35))).*4.001650020000001e-2+t13.*(t76+t6.*(t41+t5.*(t34-t35))).*7.7775e-2)))./2.0,t234,t233,t229,t229,t227,t226,t234,t233,t229,t229,t227,t226,t114+t175+t199-(t104.*t221)./2.0,t114+t174+t199-(t104.*t216)./2.0,t230,t230,t114+t199-(t104.*t207)./2.0+cmax.*t18.*t19.*t104.^2.*t159,t87+t166+t197+(t104.*(t180+k.*t159.*(-t113+t120+t7.*(t76+t6.*(t41+t5.*(t34-t35))).*4.001650020000001e-2+t13.*(t76+t6.*(t41+t5.*(t34-t35))).*7.7775e-2).*2.0+cmax.*t18.*t162.*(-t113+t120+t7.*(t76+t6.*(t41+t5.*(t34-t35))).*4.001650020000001e-2+t13.*(t76+t6.*(t41+t5.*(t34-t35))).*7.7775e-2)))./2.0,t87+t173+t197+(t61.*t66.*t221)./1.801439850948198e+20,t87+t170+t197+(t61.*t66.*t216)./1.801439850948198e+20,t228,t228,t87+t166+t197+(t61.*t66.*t207)./1.801439850948198e+20,t87+t197-(t61.*t66.*(t180+k.*t159.*(-t113+t120+t7.*(t76+t6.*(t41+t5.*(t34-t35))).*4.001650020000001e-2+t13.*(t76+t6.*(t41+t5.*(t34-t35))).*7.7775e-2).*2.0+cmax.*t18.*t162.*(-t113+t120+t7.*(t76+t6.*(t41+t5.*(t34-t35))).*4.001650020000001e-2+t13.*(t76+t6.*(t41+t5.*(t34-t35))).*7.7775e-2)))./1.801439850948198e+20+cmax.*t18.*t19.*t66.^2.*t159.*7.650270913256601e-3],[6,6]);
