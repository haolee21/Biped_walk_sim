function dL21_dq1 = dL21_dq1(in1,in2,sampT)
%DL21_DQ1
%    DL21_DQ1 = DL21_DQ1(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    04-Feb-2021 03:01:43

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
t15 = q_t2+q_t3;
t20 = 1.0./sampT;
t16 = cos(t14);
t17 = cos(t15);
t18 = sin(t14);
t19 = sin(t15);
t21 = t20.^2;
t22 = t2.*t3;
t23 = t2.*t9;
t24 = t3.*t8;
t25 = q_t3+q_t4+t14;
t26 = t8.*t9;
t38 = t2.*4.5018e-1;
t39 = t8.*4.5018e-1;
t75 = t2.*5.068576200624125e+19;
t76 = t8.*5.068576200624125e+19;
t128 = t4.*1.396802509073831e+1;
t27 = cos(t25);
t28 = q_t5+t25;
t29 = sin(t25);
t32 = -t26;
t36 = t23+t24;
t42 = qd_t1.*t38;
t43 = qd_t1.*t39;
t44 = t16.*4.4835e-1;
t45 = t18.*4.4835e-1;
t77 = qd_t1.*t75;
t78 = qd_t1.*t76;
t79 = t16.*5.047972232328905e+19;
t80 = t18.*5.047972232328905e+19;
t129 = t23.*6.40180027816875e+1;
t130 = t24.*6.40180027816875e+1;
t131 = t17.*7.012518719023725;
t134 = qd_t1.*t19.*1.402503743804745e+1;
t135 = qd_t2.*t19.*7.012518719023725;
t136 = qd_t3.*t19.*7.012518719023725;
t30 = q_t6+t28;
t31 = sin(t28);
t33 = cos(t28);
t37 = t22+t32;
t40 = t4.*t36;
t41 = t10.*t36;
t49 = qd_t1.*t44;
t50 = qd_t2.*t44;
t51 = qd_t1.*t45;
t52 = qd_t2.*t45;
t53 = t27.*4.4835e-1;
t54 = t29.*4.4835e-1;
t81 = qd_t1.*t79;
t82 = qd_t2.*t79;
t83 = qd_t1.*t80;
t84 = qd_t2.*t80;
t85 = t27.*2.185771976598416e+19;
t86 = t29.*2.185771976598416e+19;
t34 = cos(t30);
t35 = sin(t30);
t46 = t4.*t37;
t47 = t10.*t37;
t48 = -t41;
t55 = t33.*4.5018e-1;
t56 = qd_t1.*t53;
t57 = qd_t2.*t53;
t58 = qd_t3.*t53;
t59 = qd_t4.*t53;
t60 = t31.*4.5018e-1;
t61 = qd_t1.*t54;
t62 = qd_t2.*t54;
t63 = qd_t3.*t54;
t64 = qd_t4.*t54;
t87 = qd_t1.*t85;
t88 = qd_t2.*t85;
t89 = qd_t3.*t85;
t90 = qd_t4.*t85;
t91 = qd_t1.*t86;
t92 = qd_t2.*t86;
t93 = qd_t3.*t86;
t94 = qd_t4.*t86;
t102 = t33.*1.9492794e-1;
t103 = t31.*1.9492794e-1;
t132 = t79+t85;
t133 = t80+t86;
t152 = t40.*3.820294584034317e+1;
t65 = qd_t1.*t55;
t66 = qd_t2.*t55;
t67 = qd_t3.*t55;
t68 = qd_t4.*t55;
t69 = qd_t5.*t55;
t70 = qd_t1.*t60;
t71 = qd_t2.*t60;
t72 = qd_t3.*t60;
t73 = qd_t4.*t60;
t74 = qd_t5.*t60;
t95 = t40+t47;
t96 = t46+t48;
t99 = -t5.*(t41-t46);
t100 = -t11.*(t41-t46);
t104 = qd_t1.*t102;
t105 = qd_t2.*t102;
t106 = qd_t3.*t102;
t107 = qd_t4.*t102;
t108 = qd_t5.*t102;
t109 = qd_t1.*t103;
t110 = qd_t2.*t103;
t111 = qd_t3.*t103;
t112 = qd_t4.*t103;
t113 = qd_t5.*t103;
t114 = t34.*3.6063444e-2;
t115 = t35.*3.6063444e-2;
t137 = t53+t102;
t138 = t54+t103;
t148 = t75+t132;
t149 = t76+t133;
t154 = t47.*3.820294584034317e+1;
t155 = t11.*(t41-t46).*(-7.4545915933125);
t164 = t87+t88+t89+t90;
t165 = t91+t92+t93+t94;
t97 = t5.*t95;
t98 = t11.*t95;
t116 = qd_t1.*t114;
t117 = qd_t2.*t114;
t118 = qd_t3.*t114;
t119 = qd_t4.*t114;
t120 = qd_t5.*t114;
t121 = qd_t6.*t114;
t122 = qd_t1.*t115;
t123 = qd_t2.*t115;
t124 = qd_t3.*t115;
t125 = qd_t4.*t115;
t126 = qd_t5.*t115;
t127 = qd_t6.*t115;
t139 = t55+t114;
t140 = t60+t115;
t150 = t44+t137;
t151 = t45+t138;
t166 = t27.*t148.*1.120775539042995e-20;
t167 = t29.*t149.*1.120775539042995e-20;
t174 = t77+t81+t82+t164;
t175 = t78+t83+t84+t165;
t180 = t149.*t164.*5.127595883936577e-40;
t181 = t148.*t165.*5.127595883936577e-40;
t186 = t56+t57+t58+t59+t104+t105+t106+t107+t108;
t187 = t61+t62+t63+t64+t109+t110+t111+t112+t113;
t101 = -t98;
t141 = t97+t100;
t145 = -t6.*(t98+t5.*(t41-t46));
t146 = -t12.*(t98+t5.*(t41-t46));
t153 = t97.*7.4545915933125;
t156 = t53+t139;
t157 = t54+t140;
t158 = t38+t150;
t159 = t39+t151;
t169 = t12.*(t98+t5.*(t41-t46)).*(-2.485521315064125);
t182 = -t180;
t183 = t29.*t174.*1.120775539042995e-20;
t184 = t27.*t175.*1.120775539042995e-20;
t188 = t43+t51+t52+t187;
t189 = t42+t49+t50+t186;
t196 = t61+t62+t63+t64+t70+t71+t72+t73+t74+t122+t123+t124+t125+t126+t127;
t197 = t56+t57+t58+t59+t65+t66+t67+t68+t69+t116+t117+t118+t119+t120+t121;
t142 = t99+t101;
t143 = t6.*t141;
t144 = t12.*t141;
t160 = t44+t156;
t161 = t45+t157;
t172 = t138.*t159.*3.0225;
t173 = t137.*t158.*3.0225;
t185 = -t184;
t190 = t159.*t186.*3.0225;
t191 = t158.*t187.*3.0225;
t193 = t137.*t188.*3.0225;
t194 = t138.*t189.*3.0225;
t198 = t43+t51+t52+t196;
t199 = t42+t49+t50+t197;
t147 = -t144;
t162 = t39+t161;
t163 = t38+t160;
t168 = t143.*2.485521315064125;
t170 = t143+t146;
t179 = t13.*(t144+t6.*(t98+t5.*(t41-t46))).*(-8.3359974616425e-2);
t192 = -t190;
t195 = -t193;
t203 = t157.*t199.*(3.77e+2./4.0e+2);
t204 = t156.*t198.*(3.77e+2./4.0e+2);
t171 = t145+t147;
t176 = t157.*t162.*(3.77e+2./4.0e+2);
t177 = t156.*t163.*(3.77e+2./4.0e+2);
t178 = t7.*t170.*8.3359974616425e-2;
t200 = t163.*t196.*(3.77e+2./4.0e+2);
t201 = t162.*t197.*(3.77e+2./4.0e+2);
t205 = -t204;
t202 = -t201;
dL21_dq1 = [t8.*6.927879793493588e+1+t129+t130+t152+t153+t154+t155+t168+t169+t178+t179-t21.*(t3.*1.9277768606733e+1+t17.*1.402503743804745e+1+t128+t148.^2.*5.127595883936577e-40+t149.^2.*5.127595883936577e-40+t158.^2.*3.0225+t159.^2.*3.0225+t162.^2.*(3.77e+2./4.0e+2)+t163.^2.*(3.77e+2./4.0e+2)+2.982850153338989e+1);t129+t130+t152+t153+t154+t155+t168+t169+t178+t179-t21.*(t3.*9.6388843033665+t128+t131+t132.*t148.*5.127595883936577e-40+t133.*t149.*5.127595883936577e-40+t150.*t158.*3.0225+t151.*t159.*3.0225+t160.*t163.*(3.77e+2./4.0e+2)+t161.*t162.*(3.77e+2./4.0e+2)+1.932708911146205e+1)-(t20.*(t134+t135+t136+qd_t1.*t9.*1.9277768606733e+1+qd_t2.*t9.*9.6388843033665-t132.*t175.*5.127595883936577e-40+t133.*t174.*5.127595883936577e-40-t150.*t188.*3.0225+t151.*t189.*3.0225-t160.*t198.*(3.77e+2./4.0e+2)+t161.*t199.*(3.77e+2./4.0e+2)-t159.*(t49+t50+t186).*3.0225+t158.*(t51+t52+t187).*3.0225-t162.*(t49+t50+t197).*(3.77e+2./4.0e+2)+t163.*(t51+t52+t196).*(3.77e+2./4.0e+2)-t149.*(t81+t82+t164).*5.127595883936577e-40+t148.*(t83+t84+t165).*5.127595883936577e-40))./2.0;t152+t153+t154+t155+t168+t169+t178+t179-t21.*(t4.*6.984012545369157+t131+t166+t167+t172+t173+t176+t177+9.911857811250264)-(t20.*(t134+t135+t136+t181+t182+t183+t185+t191+t192+t194+t195+t200+t202+t203+t205+qd_t1.*t10.*1.396802509073831e+1+qd_t2.*t10.*1.396802509073831e+1+qd_t3.*t10.*6.984012545369157))./2.0;t153+t155+t168+t169+t178+t179-t21.*(t166+t167+t172+t173+t176+t177+2.086379878317928e-1)+(t20.*(t180-t181-t183+t184+t190-t191+t193-t194-t200+t201-t203+t204))./2.0;t168+t169+t178+t179+(t20.*(t162.*(t65+t66+t67+t68+t69+t116+t117+t118+t119+t120+t121).*(3.77e+2./4.0e+2)-t163.*(t70+t71+t72+t73+t74+t122+t123+t124+t125+t126+t127).*(3.77e+2./4.0e+2)-t31.*t189.*5.891696986500001e-1+t33.*t188.*5.891696986500001e-1+t139.*t198.*(3.77e+2./4.0e+2)-t140.*t199.*(3.77e+2./4.0e+2)+t159.*(t104+t105+t106+t107+t108).*3.0225-t158.*(t109+t110+t111+t112+t113).*3.0225))./2.0-t21.*(t31.*t159.*5.891696986500001e-1+t33.*t158.*5.891696986500001e-1+t139.*t163.*(3.77e+2./4.0e+2)+t140.*t162.*(3.77e+2./4.0e+2)+7.232013102222651e-2);t178+t179-t21.*(t34.*t163.*3.398979597e-2+t35.*t162.*3.398979597e-2+1.645348628313e-2)+(t20.*(t34.*t198.*3.398979597e-2-t35.*t199.*3.398979597e-2+t162.*(t116+t117+t118+t119+t120+t121).*(3.77e+2./4.0e+2)-t163.*(t122+t123+t124+t125+t126+t127).*(3.77e+2./4.0e+2)))./2.0];
