function out1 = hess_grf_ceq_heel14(in1,toe_th,dmax,cmax,k,us,ud)
%HESS_GRF_CEQ_HEEL14
%    OUT1 = HESS_GRF_CEQ_HEEL14(IN1,TOE_TH,DMAX,CMAX,K,US,UD)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    23-Jun-2020 10:12:35

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
t69 = t22.*1.752048e+2;
t70 = t23.*1.752048e+2;
t71 = t24.*1.752048e+2;
t72 = t26.*1.752048e+2;
t74 = t16.*4.38012e-1;
t75 = t16.*8.76024e-1;
t76 = t22.*4.38012e-1;
t77 = t17.*4.38012e-1;
t78 = t17.*8.76024e-1;
t79 = t23.*4.38012e-1;
t80 = t24.*4.38012e-1;
t81 = t26.*4.38012e-1;
t32 = q6+t29;
t33 = sin(t29);
t35 = cos(t29);
t41 = t22+t34;
t46 = t4.*t38;
t47 = t10.*t38;
t73 = -t72;
t83 = -t81;
t85 = t28.*4.38012e-1;
t86 = t28.*8.76024e-1;
t87 = t30.*4.38012e-1;
t88 = t30.*8.76024e-1;
t36 = cos(t32);
t37 = sin(t32);
t48 = t4.*t41;
t49 = t10.*t41;
t50 = -t47;
t51 = t35.*9.0504e-1;
t52 = t35.*4.5252e-1;
t53 = t33.*9.0504e-1;
t54 = t33.*4.5252e-1;
t84 = t32-1.290439793566535;
t55 = -t52;
t56 = t36.*4.5252e-1;
t57 = t37.*4.5252e-1;
t61 = qd6.*t37.*(-4.5252e-1);
t62 = t46+t49;
t63 = t48+t50;
t66 = -t5.*(t47-t48);
t67 = -t11.*(t47-t48);
t91 = cos(t84);
t92 = sin(t84);
t98 = t5.*(t47-t48).*(-1.752048e+2);
t99 = t11.*(t47-t48).*(-1.752048e+2);
t102 = t5.*(t47-t48).*1.752048e+2;
t104 = t5.*(t47-t48).*(-4.38012e-1);
t105 = t11.*(t47-t48).*(-4.38012e-1);
t106 = t5.*(t47-t48).*4.38012e-1;
t58 = qd6.*t56;
t59 = qd6.*t57;
t60 = -t57;
t64 = t5.*t62;
t65 = t11.*t62;
t82 = t54+t56;
t89 = t55+t57;
t113 = t91.*5.529488670754286e-1;
t114 = t92.*5.529488670754286e-1;
t68 = -t65;
t90 = qd5.*t82;
t93 = qd5.*t89;
t95 = t64.*1.752048e+2;
t96 = t65.*1.752048e+2;
t100 = t64.*4.38012e-1;
t101 = t65.*4.38012e-1;
t107 = t64+t67;
t111 = -t12.*(t65+t5.*(t47-t48));
t112 = -t6.*(t65+t5.*(t47-t48));
t115 = t6.*(t65+t5.*(t47-t48));
t116 = -t114;
t117 = t82+t87;
t118 = t52+t60+t85;
t128 = t12.*(t65+t5.*(t47-t48)).*(-1.81008e+2);
t134 = t12.*(t65+t5.*(t47-t48)).*(-4.5252e-1);
t165 = t21+t44+t53+t78+t88+t113;
t94 = -t93;
t97 = -t96;
t103 = -t101;
t108 = t66+t68;
t109 = t12.*t107;
t110 = t6.*t107;
t120 = qd1.*t117;
t121 = qd2.*t117;
t122 = qd3.*t117;
t123 = qd4.*t117;
t126 = qd3.*t118;
t127 = qd4.*t118;
t130 = t115.*(-1.81008e+2);
t133 = t115.*1.81008e+2;
t135 = t115.*(-4.5252e-1);
t136 = t115.*4.5252e-1;
t137 = t77+t117;
t138 = t74+t118;
t145 = t51+t86+t116;
t166 = t18.*t165;
t119 = t109.*1.81008e+2;
t124 = t110.*1.81008e+2;
t129 = t109.*4.5252e-1;
t131 = t110.*4.5252e-1;
t139 = qd2.*t137;
t140 = qd2.*t138;
t141 = t45+t137;
t142 = t43+t138;
t146 = t110+t111;
t147 = t109+t115;
t164 = t42+t75+t145;
t167 = tanh(t166);
t172 = t58+t90+t120+t121+t122+t123;
t125 = -t119;
t132 = -t129;
t143 = qd1.*t141;
t144 = qd1.*t142;
t148 = t7.*t146.*(1.53e+2./5.0);
t149 = t13.*t146.*(1.53e+2./5.0);
t152 = t7.*t147.*(1.53e+2./5.0);
t153 = t13.*t147.*(1.53e+2./5.0);
t155 = t7.*t146.*7.65e-2;
t157 = t13.*t146.*7.65e-2;
t160 = t7.*t147.*7.65e-2;
t161 = t13.*t147.*7.65e-2;
t168 = t167.^2;
t169 = t167./2.0;
t150 = -t148;
t151 = -t149;
t154 = -t152;
t156 = -t153;
t158 = -t155;
t159 = -t157;
t162 = -t160;
t163 = -t161;
t170 = t168-1.0;
t171 = t169-1.0./2.0;
t173 = t58+t90+t122+t123+t139+t143;
t174 = t61+t94+t126+t127+t140+t144;
t175 = t96+t102+t119+t133+t148+t156;
t176 = t100+t105+t131+t134+t159+t162;
t177 = t101+t106+t129+t136+t155+t163;
t178 = t39+t69+t73+t97+t98+t125+t130+t150+t153;
t179 = t31+t40+t70+t71+t95+t99+t124+t128+t151+t154;
t183 = t43+t76+t83+t103+t104+t132+t135+t158+t161;
t180 = tanh(t179);
t184 = t20+t45+t79+t80+t176;
t181 = t180.^2;
t185 = t184.^2;
t187 = cmax.*t18.*t171.*t174.*t184;
t182 = t181-1.0;
t186 = k.*t185;
t188 = -t187;
t189 = t186+t188;
out1 = -(t180./2.0-1.0./2.0).*(k.*t177.*(t43+t76-t81-t177).*2.0-k.*t184.*(-t100-t131+t157+t160+t12.*(t65+t5.*(t47-t48)).*4.5252e-1+t11.*(t47-t48).*4.38012e-1).*2.0-cmax.*t18.*t171.*t172.*(t43+t76-t81-t177)+cmax.*t18.*t171.*t174.*(-t100-t131+t157+t160+t12.*(t65+t5.*(t47-t48)).*4.5252e-1+t11.*(t47-t48).*4.38012e-1)+cmax.*t18.*t171.*t173.*t177-cmax.*t18.*t171.*t184.*(t61+t94+t126+t127+qd1.*t118+qd2.*t118)+(cmax.*t19.*t145.*t170.*t173.*t184)./2.0+(cmax.*t19.*t164.*t170.*t174.*t177)./2.0+(cmax.*t19.*t164.*t170.*t172.*t184)./2.0+(cmax.*t19.*t170.*t174.*t184.*(t53+t88+t113))./2.0-(cmax.*t19.*t145.*t170.*t174.*(t43+t76-t81-t177))./2.0+cmax.*t18.^3.*t145.*t164.*t167.*t170.*t174.*t184)-(t182.*(k.*t177.*t184.*-2.0+cmax.*t18.*t171.*t174.*t177+cmax.*t18.*t171.*t172.*t184+(cmax.*t19.*t145.*t170.*t174.*t184)./2.0).*(t39+t69-t72-t175))./2.0+(t175.*t182.*(k.*t184.*(t43+t76-t81-t177).*2.0-cmax.*t18.*t171.*t174.*(t43+t76-t81-t177)+cmax.*t18.*t171.*t173.*t184+(cmax.*t19.*t164.*t170.*t174.*t184)./2.0))./2.0-(t182.*t189.*(-t95-t124+t149+t152+t12.*(t65+t5.*(t47-t48)).*1.81008e+2+t11.*(t47-t48).*1.752048e+2))./2.0-t175.*t180.*t182.*t189.*(t39+t69-t72-t175);
