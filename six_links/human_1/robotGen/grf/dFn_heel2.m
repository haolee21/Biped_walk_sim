function dFn_heel2 = dFn_heel2(in1,th)
%DFN_HEEL2
%    DFN_HEEL2 = DFN_HEEL2(IN1,TH)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    11-Jun-2020 22:37:58

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
t7 = sin(q1);
t8 = sin(q2);
t9 = sin(q3);
t10 = sin(q4);
t11 = sin(q5);
t12 = q1+q2;
t15 = -th;
t21 = th.*4.0e+2;
t13 = cos(t12);
t14 = sin(t12);
t16 = t2.*t3;
t17 = t2.*t8;
t18 = t3.*t7;
t19 = q3+q4+t12;
t20 = t7.*t8;
t25 = -t21;
t30 = t7.*1.81008e+2;
t32 = t2.*4.5252e-1;
t33 = t7.*4.5252e-1;
t22 = cos(t19);
t23 = q5+t19;
t24 = sin(t19);
t27 = -t20;
t29 = t17+t18;
t50 = t13.*4.38012e-1;
t51 = t16.*4.38012e-1;
t52 = t14.*4.38012e-1;
t53 = t17.*4.38012e-1;
t54 = t18.*4.38012e-1;
t55 = t20.*4.38012e-1;
t56 = t13.*4.38012e+1;
t57 = t16.*1.752048e+2;
t58 = t17.*1.752048e+2;
t59 = t18.*1.752048e+2;
t60 = t20.*1.752048e+2;
t66 = t13.*5.47515e+2;
t26 = sin(t23);
t28 = cos(t23);
t31 = t16+t27;
t34 = t4.*t29;
t35 = t9.*t29;
t61 = -t55;
t62 = -t60;
t63 = q6+t23+2.803565332283614e-1;
t64 = t22.*4.38012e-1;
t65 = t24.*4.38012e-1;
t69 = t22.*4.38012e+1;
t70 = t22.*5.47515e+2;
t36 = t28.*5.6565e+2;
t37 = t4.*t31;
t38 = t9.*t31;
t39 = -t35;
t40 = t28.*4.5252e+1;
t41 = t28.*4.5252e-1;
t42 = t26.*4.5252e-1;
t67 = cos(t63);
t68 = sin(t63);
t43 = t34+t38;
t44 = t37+t39;
t47 = -t5.*(t35-t37);
t48 = -t10.*(t35-t37);
t77 = t5.*(t35-t37).*(-4.38012e-1);
t78 = t10.*(t35-t37).*(-4.38012e-1);
t79 = t5.*(t35-t37).*(-1.752048e+2);
t80 = t10.*(t35-t37).*(-1.752048e+2);
t81 = t5.*(t35-t37).*4.38012e-1;
t83 = t5.*(t35-t37).*1.752048e+2;
t85 = t67.*3.455930419221429e+2;
t87 = qd6.*t68.*3.455930419221429e+2;
t88 = t67.*2.764744335377143e+1;
t90 = qd6.*t68.*2.764744335377143e+1;
t91 = t67.*2.764744335377143e-1;
t92 = t68.*2.764744335377143e-1;
t45 = t5.*t43;
t46 = t10.*t43;
t86 = qd6.*t85;
t89 = qd6.*t88;
t105 = t41+t91;
t106 = t42+t92;
t111 = t40+t69+t88;
t112 = t36+t70+t85;
t49 = -t46;
t71 = t45.*4.38012e-1;
t72 = t46.*4.38012e-1;
t73 = t45.*1.752048e+2;
t74 = t46.*1.752048e+2;
t82 = t45+t48;
t96 = t11.*(t46+t5.*(t35-t37)).*(-2.11608e+2);
t98 = t6.*(t46+t5.*(t35-t37)).*(-2.11608e+2);
t101 = t6.*(t46+t5.*(t35-t37)).*2.11608e+2;
t102 = t11.*(t46+t5.*(t35-t37)).*(-5.2902e-1);
t103 = t6.*(t46+t5.*(t35-t37)).*(-5.2902e-1);
t104 = t6.*(t46+t5.*(t35-t37)).*5.2902e-1;
t107 = qd5.*t105.*1.0e+2;
t108 = qd5.*t106.*1.0e+2;
t109 = qd5.*t105.*1.25e+3;
t110 = qd5.*t106.*1.25e+3;
t113 = t65+t106;
t114 = t64+t105;
t75 = -t72;
t76 = -t74;
t84 = t47+t49;
t93 = t11.*t82.*2.11608e+2;
t94 = t6.*t82.*2.11608e+2;
t97 = t11.*t82.*5.2902e-1;
t99 = t6.*t82.*5.2902e-1;
t115 = qd3.*t114.*1.0e+2;
t116 = qd4.*t114.*1.0e+2;
t117 = qd1.*t113.*1.0e+2;
t118 = qd2.*t113.*1.0e+2;
t119 = qd3.*t113.*1.0e+2;
t120 = qd4.*t113.*1.0e+2;
t121 = qd3.*t114.*1.25e+3;
t122 = qd4.*t114.*1.25e+3;
t123 = qd1.*t113.*1.25e+3;
t124 = qd2.*t113.*1.25e+3;
t125 = qd3.*t113.*1.25e+3;
t126 = qd4.*t113.*1.25e+3;
t127 = t50+t114;
t128 = t52+t113;
t95 = -t93;
t100 = -t97;
t129 = qd2.*t127.*1.0e+2;
t130 = qd2.*t128.*1.0e+2;
t131 = qd2.*t127.*1.25e+3;
t132 = qd2.*t128.*1.25e+3;
t133 = t32+t127;
t134 = t33+t128;
t137 = t74+t83+t93+t101;
t138 = t72+t81+t97+t104;
t139 = t25+t30+t58+t59+t73+t80+t94+t96;
t140 = t15+t33+t53+t54+t71+t78+t99+t102;
t149 = t90+t108+t117+t118+t119+t120;
t150 = t87+t110+t123+t124+t125+t126;
t135 = qd1.*t133.*1.0e+2;
t136 = qd1.*t133.*1.25e+3;
t141 = tanh(t139);
t142 = t140.^2;
t148 = t138.*t140.*1.0e+6;
t143 = t141.^2;
t144 = t141./2.0;
t146 = t142.*5.0e+5;
t151 = t89+t107+t115+t116+t129+t135;
t154 = t86+t109+t121+t122+t131+t136;
t145 = t143-1.0;
t147 = t144-1.0./2.0;
t152 = tanh(t151);
t153 = t152.^2;
t155 = t152./2.0;
t156 = t153-1.0;
t157 = t155-1.0./2.0;
t158 = t112.*t157;
t159 = t150.*t157;
t161 = t154.*t157;
t163 = (t111.*t154.*t156)./2.0;
t166 = (t149.*t154.*t156)./2.0;
t160 = -t159;
t162 = -t161;
t164 = -t163;
t165 = t146+t162;
t167 = t158+t164;
t171 = t148+t160+t166;
t168 = (t137.*t145.*t165)./2.0;
t170 = t147.*t167;
t172 = t147.*t171;
t169 = -t168;
t173 = t169+t172;
dFn_heel2 = [-t147.*(t157.*(t87+t110+t125+t126+t132+qd1.*t134.*1.25e+3)+t140.*(t32+t51-t55-t138).*1.0e+6-(t154.*t156.*(t90+t108+t119+t120+t130+qd1.*t134.*1.0e+2))./2.0)+(t145.*t165.*(t2.*1.81008e+2+t57-t60-t137))./2.0;t147.*(-t157.*(t87+t110+t125+t126+t132+qd1.*t128.*1.25e+3)+t140.*(-t51+t55+t138).*1.0e+6+(t154.*t156.*(t90+t108+t119+t120+t130+qd1.*t128.*1.0e+2))./2.0)-(t145.*t165.*(-t57+t60+t137))./2.0;t173;t173;t147.*(t140.*(t97+t104).*1.0e+6-t157.*(t87+t110+qd1.*t106.*1.25e+3+qd2.*t106.*1.25e+3+qd3.*t106.*1.25e+3+qd4.*t106.*1.25e+3)+(t154.*t156.*(t90+t108+qd1.*t106.*1.0e+2+qd2.*t106.*1.0e+2+qd3.*t106.*1.0e+2+qd4.*t106.*1.0e+2))./2.0)-(t145.*t165.*(t93+t101))./2.0;-t147.*(t157.*(t87+qd1.*t68.*3.455930419221429e+2+qd2.*t68.*3.455930419221429e+2+qd3.*t68.*3.455930419221429e+2+qd4.*t68.*3.455930419221429e+2+qd5.*t68.*3.455930419221429e+2)-(t154.*t156.*(t90+qd1.*t68.*2.764744335377143e+1+qd2.*t68.*2.764744335377143e+1+qd3.*t68.*2.764744335377143e+1+qd4.*t68.*2.764744335377143e+1+qd5.*t68.*2.764744335377143e+1))./2.0);t147.*(t157.*(t2.*5.6565e+2+t66+t112)-(t154.*t156.*(t2.*4.5252e+1+t56+t111))./2.0);t147.*(t157.*(t66+t112)-(t154.*t156.*(t56+t111))./2.0);t170;t170;t147.*(t157.*(t36+t85)-(t154.*t156.*(t40+t88))./2.0);t147.*(t85.*t157-t67.*t154.*t156.*1.382372167688572e+1)];
