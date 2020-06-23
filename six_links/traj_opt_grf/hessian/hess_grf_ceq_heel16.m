function out1 = hess_grf_ceq_heel16(in1,toe_th,dmax,cmax,k,us,ud)
%HESS_GRF_CEQ_HEEL16
%    OUT1 = HESS_GRF_CEQ_HEEL16(IN1,TOE_TH,DMAX,CMAX,K,US,UD)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    23-Jun-2020 10:11:41

q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
q6 = in1(:,6);
qd1 = in1(:,7);
qd2 = in1(:,8);
qd3 = in1(:,9);
qd4 = in1(:,10);
qd5 = in1(:,11);
qd6 = in1(:,12);
t2 = cos(q1);
t3 = cos(q2);
t4 = cos(q3);
t5 = cos(q4);
t6 = cos(q5);
t7 = cos(q6);
t8 = sin(q1);
t9 = sin(q2);
t10 = sin(q3);
t11 = sin(q4);
t12 = sin(q5);
t13 = sin(q6);
t14 = q1+q2;
t15 = toe_th.*2.0;
t18 = 1.0./dmax;
t20 = -toe_th;
t27 = toe_th.*4.0e+2;
t16 = cos(t14);
t17 = sin(t14);
t19 = t18.^2;
t21 = -t15;
t22 = t2.*t3;
t23 = t2.*t9;
t24 = t3.*t8;
t25 = q3+q4+t14;
t26 = t8.*t9;
t31 = -t27;
t39 = t2.*1.81008e+2;
t40 = t8.*1.81008e+2;
t42 = t2.*9.0504e-1;
t43 = t2.*4.5252e-1;
t44 = t8.*9.0504e-1;
t45 = t8.*4.5252e-1;
t28 = cos(t25);
t29 = q5+t25;
t30 = sin(t25);
t34 = -t26;
t38 = t23+t24;
t74 = t22.*1.752048e+2;
t75 = t23.*1.752048e+2;
t76 = t24.*1.752048e+2;
t77 = t26.*1.752048e+2;
t79 = t16.*4.38012e-1;
t80 = t16.*8.76024e-1;
t81 = t22.*4.38012e-1;
t82 = t17.*4.38012e-1;
t83 = t17.*8.76024e-1;
t84 = t23.*4.38012e-1;
t85 = t24.*4.38012e-1;
t86 = t26.*4.38012e-1;
t32 = q6+t29;
t33 = sin(t29);
t35 = cos(t29);
t41 = t22+t34;
t46 = t4.*t38;
t47 = t10.*t38;
t78 = -t77;
t88 = -t86;
t90 = t28.*4.38012e-1;
t91 = t28.*8.76024e-1;
t92 = t30.*4.38012e-1;
t93 = t30.*8.76024e-1;
t36 = cos(t32);
t37 = sin(t32);
t48 = t4.*t41;
t49 = t10.*t41;
t50 = -t47;
t51 = t35.*9.0504e-1;
t52 = t35.*4.5252e-1;
t53 = t33.*9.0504e-1;
t54 = t33.*4.5252e-1;
t89 = t32-1.290439793566535;
t55 = -t52;
t56 = t36.*4.5252e-1;
t57 = t37.*4.5252e-1;
t66 = qd6.*t37.*(-4.5252e-1);
t67 = t46+t49;
t68 = t48+t50;
t71 = -t5.*(t47-t48);
t72 = -t11.*(t47-t48);
t96 = cos(t89);
t97 = sin(t89);
t103 = t5.*(t47-t48).*(-1.752048e+2);
t104 = t11.*(t47-t48).*(-1.752048e+2);
t108 = t5.*(t47-t48).*(-4.38012e-1);
t109 = t11.*(t47-t48).*(-4.38012e-1);
t58 = qd1.*t56;
t59 = qd2.*t56;
t60 = qd3.*t56;
t61 = qd4.*t56;
t62 = qd5.*t56;
t63 = qd6.*t56;
t64 = qd6.*t57;
t65 = -t57;
t69 = t5.*t67;
t70 = t11.*t67;
t87 = t54+t56;
t94 = t55+t57;
t116 = t96.*5.529488670754286e-1;
t117 = t97.*5.529488670754286e-1;
t73 = -t70;
t95 = qd5.*t87;
t98 = qd5.*t94;
t100 = t69.*1.752048e+2;
t101 = t70.*1.752048e+2;
t105 = t69.*4.38012e-1;
t106 = t70.*4.38012e-1;
t110 = t69+t72;
t114 = -t12.*(t70+t5.*(t47-t48));
t115 = -t6.*(t70+t5.*(t47-t48));
t118 = t6.*(t70+t5.*(t47-t48));
t119 = -t117;
t120 = t87+t92;
t121 = t52+t65+t90;
t129 = t12.*(t70+t5.*(t47-t48)).*(-1.81008e+2);
t134 = t12.*(t70+t5.*(t47-t48)).*(-4.5252e-1);
t140 = t58+t59+t60+t61+t62+t63;
t164 = t21+t44+t53+t83+t93+t116;
t99 = -t98;
t102 = -t101;
t107 = -t106;
t111 = t71+t73;
t112 = t12.*t110;
t113 = t6.*t110;
t123 = qd3.*t120;
t124 = qd4.*t120;
t127 = qd3.*t121;
t128 = qd4.*t121;
t131 = t118.*(-1.81008e+2);
t135 = t118.*(-4.5252e-1);
t136 = t82+t120;
t137 = t79+t121;
t163 = t42+t51+t80+t91+t119;
t165 = t18.*t164;
t122 = t112.*1.81008e+2;
t125 = t113.*1.81008e+2;
t130 = t112.*4.5252e-1;
t132 = t113.*4.5252e-1;
t138 = qd2.*t136;
t139 = qd2.*t137;
t141 = t45+t136;
t142 = t43+t137;
t145 = t113+t114;
t146 = t112+t118;
t166 = tanh(t165);
t126 = -t122;
t133 = -t130;
t143 = qd1.*t141;
t144 = qd1.*t142;
t147 = t7.*t145.*(1.53e+2./5.0);
t148 = t13.*t145.*(1.53e+2./5.0);
t151 = t7.*t146.*(1.53e+2./5.0);
t152 = t13.*t146.*(1.53e+2./5.0);
t154 = t7.*t145.*7.65e-2;
t156 = t13.*t145.*7.65e-2;
t159 = t7.*t146.*7.65e-2;
t160 = t13.*t146.*7.65e-2;
t167 = t166.^2;
t168 = t166./2.0;
t149 = -t147;
t150 = -t148;
t153 = -t151;
t155 = -t152;
t157 = -t154;
t158 = -t156;
t161 = -t159;
t162 = -t160;
t169 = t167-1.0;
t170 = t168-1.0./2.0;
t172 = t156+t159;
t174 = t63+t95+t123+t124+t138+t143;
t175 = t66+t99+t127+t128+t139+t144;
t171 = t147+t155;
t173 = t154+t162;
t176 = t39+t74+t78+t102+t103+t126+t131+t149+t152;
t177 = t31+t40+t75+t76+t100+t104+t125+t129+t150+t153;
t181 = t43+t81+t88+t107+t108+t133+t135+t157+t160;
t182 = t20+t45+t84+t85+t105+t109+t132+t134+t158+t161;
t178 = tanh(t177);
t183 = t182.^2;
t185 = cmax.*t18.*t170.*t175.*t182;
t179 = t178.^2;
t184 = k.*t183;
t186 = -t185;
t180 = t179-1.0;
t187 = t184+t186;
out1 = -(t178./2.0-1.0./2.0).*(k.*t172.*t182.*-2.0-k.*t173.*(-t43-t81+t86+t106+t118.*4.5252e-1+t130+t173+t5.*(t47-t48).*4.38012e-1).*2.0+cmax.*t18.*t170.*t182.*(t64+qd1.*t57+qd2.*t57+qd3.*t57+qd4.*t57+qd5.*t57)+cmax.*t18.*t170.*t172.*t175+cmax.*t18.*t170.*t173.*t174+cmax.*t18.*t140.*t170.*(-t43-t81+t86+t106+t118.*4.5252e-1+t130+t173+t5.*(t47-t48).*4.38012e-1)+cmax.*t19.*t96.*t169.*t175.*t182.*2.764744335377143e-1-cmax.*t19.*t97.*t169.*t174.*t182.*2.764744335377143e-1+(cmax.*t19.*t140.*t163.*t169.*t182)./2.0+(cmax.*t19.*t163.*t169.*t173.*t175)./2.0-cmax.*t19.*t97.*t169.*t175.*(-t43-t81+t86+t106+t118.*4.5252e-1+t130+t173+t5.*(t47-t48).*4.38012e-1).*2.764744335377143e-1-cmax.*t18.^3.*t97.*t163.*t166.*t169.*t175.*t182.*5.529488670754286e-1)-(t180.*t187.*(t148+t151))./2.0-(t180.*(k.*t173.*t182.*2.0-cmax.*t18.*t140.*t170.*t182-cmax.*t18.*t170.*t173.*t175+cmax.*t19.*t97.*t169.*t175.*t182.*2.764744335377143e-1).*(-t39-t74+t77+t101+t118.*1.81008e+2+t122+t171+t5.*(t47-t48).*1.752048e+2))./2.0+(t171.*t180.*(k.*t182.*(-t43-t81+t86+t106+t118.*4.5252e-1+t130+t173+t5.*(t47-t48).*4.38012e-1).*-2.0+cmax.*t18.*t170.*t174.*t182+cmax.*t18.*t170.*t175.*(-t43-t81+t86+t106+t118.*4.5252e-1+t130+t173+t5.*(t47-t48).*4.38012e-1)+(cmax.*t19.*t163.*t169.*t175.*t182)./2.0))./2.0+t171.*t178.*t180.*t187.*(-t39-t74+t77+t101+t118.*1.81008e+2+t122+t171+t5.*(t47-t48).*1.752048e+2);
