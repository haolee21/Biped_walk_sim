function dL25_dq2 = dL25_dq2(in1,in2,sampT)
%DL25_DQ2
%    DL25_DQ2 = DL25_DQ2(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    17-Oct-2020 02:29:35

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
t17 = 1.0./sampT;
t15 = cos(t14);
t16 = sin(t14);
t18 = t2.*t3;
t19 = t2.*t9;
t20 = t3.*t8;
t21 = q_t3+q_t4+t14;
t22 = t8.*t9;
t39 = t8.*1.65754804141386e+16;
t40 = t2.*6.630192165655441e+16;
t41 = t8.*6.630192165655441e+16;
t42 = t2.*1.65754804141386e+16;
t23 = cos(t21);
t24 = q_t5+t21;
t25 = sin(t21);
t28 = -t22;
t32 = t19+t20;
t43 = qd_t1.*t42;
t44 = qd_t1.*t39;
t45 = qd_t1.*t40;
t46 = qd_t1.*t41;
t47 = t16.*6.417625145547314e+16;
t48 = t15.*1.604406286386829e+16;
t49 = t16.*1.604406286386829e+16;
t50 = t15.*6.417625145547314e+16;
t26 = q_t6+t24;
t27 = sin(t24);
t29 = cos(t24);
t33 = t18+t28;
t34 = t4.*t32;
t35 = t10.*t32;
t51 = qd_t1.*t49;
t52 = qd_t2.*t49;
t53 = qd_t1.*t50;
t54 = qd_t2.*t50;
t55 = qd_t1.*t47;
t56 = qd_t2.*t47;
t57 = qd_t1.*t48;
t58 = qd_t2.*t48;
t59 = t23.*1.604406286386829e+16;
t60 = t25.*1.604406286386829e+16;
t63 = t23.*6.417625145547314e+16;
t64 = t25.*6.417625145547314e+16;
t30 = cos(t26);
t31 = sin(t26);
t36 = t4.*t33;
t37 = t10.*t33;
t38 = -t35;
t61 = t29.*7.177183019322015e+15;
t62 = t27.*7.177183019322015e+15;
t65 = qd_t1.*t63;
t66 = qd_t2.*t63;
t67 = qd_t3.*t63;
t68 = qd_t4.*t63;
t69 = qd_t1.*t64;
t70 = qd_t2.*t64;
t71 = qd_t3.*t64;
t72 = qd_t4.*t64;
t73 = t29.*6.630192165655441e+16;
t74 = t27.*6.630192165655441e+16;
t76 = qd_t1.*t59;
t77 = qd_t2.*t59;
t78 = qd_t3.*t59;
t79 = qd_t4.*t59;
t81 = qd_t1.*t60;
t82 = qd_t2.*t60;
t83 = qd_t3.*t60;
t84 = qd_t4.*t60;
t75 = t30.*3.781624316870491e+15;
t80 = t31.*3.781624316870491e+15;
t85 = qd_t1.*t61;
t86 = qd_t2.*t61;
t87 = qd_t3.*t61;
t88 = qd_t4.*t61;
t89 = qd_t5.*t61;
t90 = qd_t1.*t62;
t91 = qd_t2.*t62;
t92 = qd_t3.*t62;
t93 = qd_t4.*t62;
t94 = qd_t5.*t62;
t107 = qd_t1.*t73;
t108 = qd_t2.*t73;
t109 = qd_t3.*t73;
t110 = qd_t4.*t73;
t111 = qd_t5.*t73;
t112 = qd_t1.*t74;
t113 = qd_t2.*t74;
t114 = qd_t3.*t74;
t115 = qd_t4.*t74;
t116 = qd_t5.*t74;
t117 = t34+t37;
t118 = t36+t38;
t121 = -t5.*(t35-t36);
t122 = -t11.*(t35-t36);
t124 = t59+t61;
t125 = t60+t62;
t95 = qd_t1.*t75;
t96 = qd_t2.*t75;
t97 = qd_t3.*t75;
t98 = qd_t4.*t75;
t99 = qd_t5.*t75;
t100 = qd_t6.*t75;
t101 = qd_t1.*t80;
t102 = qd_t2.*t80;
t103 = qd_t3.*t80;
t104 = qd_t4.*t80;
t105 = qd_t5.*t80;
t106 = qd_t6.*t80;
t119 = t5.*t117;
t120 = t11.*t117;
t126 = t73+t75;
t127 = t74+t80;
t128 = t48+t124;
t130 = t49+t125;
t143 = t27.*t125.*1.795575444954456e-17;
t144 = t29.*t124.*1.795575444954456e-17;
t147 = t85+t86+t87+t88+t89;
t148 = t90+t91+t92+t93+t94;
t123 = -t120;
t129 = t119+t122;
t134 = t63+t126;
t135 = t64+t127;
t136 = -t6.*(t120+t5.*(t35-t36));
t137 = -t12.*(t120+t5.*(t35-t36));
t139 = t42+t128;
t140 = t39+t130;
t150 = t12.*(t120+t5.*(t35-t36)).*(-2.745912041436713);
t153 = t101+t102+t103+t104+t105+t106;
t154 = t95+t96+t97+t98+t99+t100;
t157 = t125.*t147.*1.25089149887951e-33;
t158 = t124.*t148.*1.25089149887951e-33;
t162 = t76+t77+t78+t79+t147;
t163 = t81+t82+t83+t84+t148;
t131 = t121+t123;
t132 = t6.*t129;
t133 = t12.*t129;
t141 = t50+t134;
t142 = t47+t135;
t155 = t126.*t134.*4.947232544644712e-35;
t156 = t127.*t135.*4.947232544644712e-35;
t159 = -t158;
t164 = t57+t58+t162;
t165 = t51+t52+t163;
t166 = t112+t113+t114+t115+t116+t153;
t167 = t107+t108+t109+t110+t111+t154;
t168 = t27.*t162.*1.795575444954456e-17;
t169 = t29.*t163.*1.795575444954456e-17;
t181 = t148.*t163.*6.254457494397548e-34;
t182 = t147.*t162.*6.254457494397548e-34;
t138 = -t133;
t145 = t41+t142;
t146 = t40+t141;
t149 = t132.*2.745912041436713;
t151 = t132+t137;
t161 = t13.*(t133+t6.*(t120+t5.*(t35-t36))).*(-6.612405458007602e-2);
t170 = -t168;
t171 = t44+t165;
t172 = t43+t164;
t179 = t69+t70+t71+t72+t166;
t180 = t65+t66+t67+t68+t167;
t183 = t135.*t167.*2.473616272322356e-35;
t184 = t134.*t166.*2.473616272322356e-35;
t203 = t143+t144+t155+t156+6.26896394143647e-2;
t152 = t136+t138;
t160 = t7.*t151.*6.612405458007602e-2;
t173 = t29.*t171.*8.97787722477228e-18;
t174 = t29.*t171.*1.795575444954456e-17;
t175 = t27.*t172.*8.97787722477228e-18;
t176 = t27.*t172.*1.795575444954456e-17;
t185 = -t184;
t186 = t53+t54+t180;
t187 = t55+t56+t179;
t190 = t147.*t172.*6.254457494397548e-34;
t191 = t148.*t171.*6.254457494397548e-34;
t194 = t126.*t179.*4.947232544644712e-35;
t195 = t127.*t180.*4.947232544644712e-35;
t204 = t17.*t203;
t205 = t167.*t180.*1.236808136161178e-35;
t206 = t166.*t179.*1.236808136161178e-35;
t177 = -t174;
t178 = -t175;
t188 = t45+t186;
t189 = t46+t187;
t192 = -t190;
t193 = -t191;
t196 = -t195;
t197 = t126.*t189.*2.473616272322356e-35;
t198 = t126.*t189.*4.947232544644712e-35;
t199 = t127.*t188.*2.473616272322356e-35;
t200 = t127.*t188.*4.947232544644712e-35;
t207 = t166.*t189.*1.236808136161178e-35;
t208 = t167.*t188.*1.236808136161178e-35;
t201 = -t198;
t202 = -t199;
t209 = -t207;
t210 = -t208;
t212 = t17.*(t168-t169+t174-t176-t194+t195+t198-t200).*(-1.0./2.0);
t213 = (t17.*(t168-t169+t174-t176-t194+t195+t198-t200))./2.0;
t211 = t169+t170+t176+t177+t194+t196+t200+t201;
t214 = t157+t159+t173+t178+t183+t185+t197+t202+t204;
t215 = t17.*t214;
t216 = t149+t150+t160+t161+t181+t182+t192+t193+t205+t206+t209+t210+t213+t215;
dL25_dq2 = [t149+t150+t160+t161+t17.*(t173+t178+t197+t202-t139.*t148.*1.25089149887951e-33+t140.*t147.*1.25089149887951e-33+t145.*t167.*2.473616272322356e-35-t146.*t166.*2.473616272322356e-35+t17.*(t27.*t140.*1.795575444954456e-17+t29.*t139.*1.795575444954456e-17+t126.*t146.*4.947232544644712e-35+t127.*t145.*4.947232544644712e-35+6.26896394143647e-2));t149+t150+t160+t161+t192+t193+t209+t210+t147.*t164.*6.254457494397548e-34+t148.*t165.*6.254457494397548e-34+t166.*t187.*1.236808136161178e-35+t167.*t186.*1.236808136161178e-35+(t17.*(t174-t176+t198-t200+t27.*t164.*1.795575444954456e-17-t29.*t165.*1.795575444954456e-17-t126.*t187.*4.947232544644712e-35+t127.*t186.*4.947232544644712e-35))./2.0+t17.*(t173+t178+t197+t202-t128.*t148.*1.25089149887951e-33+t130.*t147.*1.25089149887951e-33-t141.*t166.*2.473616272322356e-35+t142.*t167.*2.473616272322356e-35+t17.*(t27.*t130.*1.795575444954456e-17+t29.*t128.*1.795575444954456e-17+t126.*t141.*4.947232544644712e-35+t127.*t142.*4.947232544644712e-35+6.26896394143647e-2));t216;t216;t149+t150+t160+t161+t192+t193+t209+t210+(t17.*(t174-t176+t198-t200+t27.*t147.*1.795575444954456e-17-t29.*t148.*1.795575444954456e-17-t126.*t166.*4.947232544644712e-35+t127.*t167.*4.947232544644712e-35))./2.0+t17.*(t173+t178+t197+t202+t17.*(t27.^2.*1.288717359343869e-1+t29.^2.*1.288717359343869e-1+t126.^2.*4.947232544644712e-35+t127.^2.*4.947232544644712e-35+6.26896394143647e-2)+t27.*t147.*8.97787722477228e-18-t29.*t148.*8.97787722477228e-18-t126.*t166.*2.473616272322356e-35+t127.*t167.*2.473616272322356e-35)+t147.^2.*6.254457494397548e-34+t148.^2.*6.254457494397548e-34+t166.^2.*1.236808136161178e-35+t167.^2.*1.236808136161178e-35;t160+t161+t153.*t166.*1.236808136161178e-35+t154.*t167.*1.236808136161178e-35-t153.*t189.*1.236808136161178e-35-t154.*t188.*1.236808136161178e-35+t17.*(t30.*t166.*(-9.35428744602076e-20)+t31.*t167.*9.35428744602076e-20+t30.*t189.*9.35428744602076e-20-t31.*t188.*9.35428744602076e-20+t17.*(t30.*t126.*1.870857489204152e-19+t31.*t127.*1.870857489204152e-19))+(t17.*(t30.*t189.*1.870857489204152e-19-t31.*t188.*1.870857489204152e-19-t126.*t153.*4.947232544644712e-35+t127.*t154.*4.947232544644712e-35))./2.0];
