function out1 = hess_grf_ceq_heel33(in1,toe_th,dmax,cmax,k,us,ud)
%HESS_GRF_CEQ_HEEL33
%    OUT1 = HESS_GRF_CEQ_HEEL33(IN1,TOE_TH,DMAX,CMAX,K,US,UD)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    23-Jun-2020 12:15:53

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
t39 = t8.*1.81008e+2;
t41 = t2.*4.5252e-1;
t42 = t8.*9.0504e-1;
t43 = t8.*4.5252e-1;
t28 = cos(t25);
t29 = q5+t25;
t30 = sin(t25);
t34 = -t26;
t38 = t23+t24;
t67 = t23.*1.752048e+2;
t68 = t24.*1.752048e+2;
t69 = t16.*4.38012e-1;
t70 = t17.*8.76024e-1;
t71 = t23.*4.38012e-1;
t72 = t24.*4.38012e-1;
t32 = q6+t29;
t33 = sin(t29);
t35 = cos(t29);
t40 = t22+t34;
t44 = t4.*t38;
t45 = t10.*t38;
t75 = t28.*4.38012e-1;
t76 = t28.*8.76024e-1;
t77 = t30.*4.38012e-1;
t78 = t30.*8.76024e-1;
t36 = cos(t32);
t37 = sin(t32);
t46 = t4.*t40;
t47 = t10.*t40;
t48 = -t45;
t49 = t35.*9.0504e-1;
t50 = t35.*4.5252e-1;
t51 = t33.*9.0504e-1;
t52 = t33.*4.5252e-1;
t74 = t32-1.290439793566535;
t53 = -t50;
t54 = t36.*4.5252e-1;
t55 = t37.*4.5252e-1;
t59 = qd6.*t37.*(-4.5252e-1);
t60 = t44+t47;
t61 = t46+t48;
t64 = -t5.*(t45-t46);
t65 = -t11.*(t45-t46);
t81 = cos(t74);
t82 = sin(t74);
t87 = t5.*(t45-t46).*(-1.752048e+2);
t88 = t11.*(t45-t46).*(-1.752048e+2);
t91 = t5.*(t45-t46).*1.752048e+2;
t92 = t5.*(t45-t46).*(-4.38012e-1);
t93 = t11.*(t45-t46).*(-4.38012e-1);
t94 = t5.*(t45-t46).*4.38012e-1;
t56 = qd6.*t54;
t57 = qd6.*t55;
t58 = -t55;
t62 = t5.*t60;
t63 = t11.*t60;
t73 = t52+t54;
t79 = t53+t55;
t101 = t81.*5.529488670754286e-1;
t102 = t82.*5.529488670754286e-1;
t66 = -t63;
t80 = qd5.*t73;
t83 = qd5.*t79;
t85 = t62.*1.752048e+2;
t86 = t63.*1.752048e+2;
t89 = t62.*4.38012e-1;
t90 = t63.*4.38012e-1;
t95 = t62+t65;
t99 = -t12.*(t63+t5.*(t45-t46));
t100 = -t6.*(t63+t5.*(t45-t46));
t103 = t6.*(t63+t5.*(t45-t46));
t104 = -t102;
t105 = t73+t77;
t106 = t50+t58+t75;
t115 = t12.*(t63+t5.*(t45-t46)).*(-1.81008e+2);
t120 = t12.*(t63+t5.*(t45-t46)).*(-4.5252e-1);
t144 = t21+t42+t51+t70+t78+t101;
t84 = -t83;
t96 = t64+t66;
t97 = t12.*t95;
t98 = t6.*t95;
t108 = qd1.*t105;
t109 = qd2.*t105;
t110 = qd3.*t105;
t111 = qd4.*t105;
t113 = qd3.*t106;
t114 = qd4.*t106;
t117 = t103.*(-1.81008e+2);
t119 = t103.*1.81008e+2;
t121 = t103.*(-4.5252e-1);
t122 = t103.*4.5252e-1;
t123 = t69+t106;
t127 = t49+t76+t104;
t145 = t18.*t144;
t107 = t97.*1.81008e+2;
t112 = t98.*1.81008e+2;
t116 = t97.*4.5252e-1;
t118 = t98.*4.5252e-1;
t124 = qd2.*t123;
t125 = t41+t123;
t128 = t98+t99;
t129 = t97+t103;
t146 = tanh(t145);
t151 = t56+t80+t108+t109+t110+t111;
t126 = qd1.*t125;
t130 = t7.*t128.*(1.53e+2./5.0);
t131 = t13.*t128.*(1.53e+2./5.0);
t133 = t7.*t129.*(1.53e+2./5.0);
t134 = t13.*t129.*(1.53e+2./5.0);
t136 = t7.*t128.*7.65e-2;
t138 = t13.*t128.*7.65e-2;
t140 = t7.*t129.*7.65e-2;
t141 = t13.*t129.*7.65e-2;
t147 = t146.^2;
t148 = t146./2.0;
t132 = -t131;
t135 = -t133;
t137 = -t134;
t139 = -t138;
t142 = -t140;
t143 = -t141;
t149 = t147-1.0;
t150 = t148-1.0./2.0;
t152 = t59+t84+t113+t114+t124+t126;
t153 = t86+t91+t107+t119+t130+t137;
t154 = t89+t93+t118+t120+t139+t142;
t155 = t90+t94+t116+t122+t136+t143;
t156 = t31+t39+t67+t68+t85+t88+t112+t115+t132+t135;
t157 = tanh(t156);
t160 = t20+t43+t71+t72+t154;
t158 = t157.^2;
t161 = t160.^2;
t163 = cmax.*t18.*t150.*t152.*t160;
t159 = t158-1.0;
t162 = k.*t161;
t164 = -t163;
t165 = t162+t164;
out1 = -(t157./2.0-1.0./2.0).*(k.*t155.^2.*-2.0-k.*t160.*(-t89-t118+t138+t140+t12.*(t63+t5.*(t45-t46)).*4.5252e-1+t11.*(t45-t46).*4.38012e-1).*2.0+cmax.*t18.*t150.*t152.*(-t89-t118+t138+t140+t12.*(t63+t5.*(t45-t46)).*4.5252e-1+t11.*(t45-t46).*4.38012e-1)+cmax.*t18.*t150.*t151.*t155.*2.0-cmax.*t18.*t150.*t160.*(t59+t84+t113+t114+qd1.*t106+qd2.*t106)+cmax.*t19.*t127.*t149.*t152.*t155+cmax.*t19.*t127.*t149.*t151.*t160+(cmax.*t19.*t149.*t152.*t160.*(t51+t78+t101))./2.0+cmax.*t18.^3.*t127.^2.*t146.*t149.*t152.*t160)+t153.*t159.*(k.*t155.*t160.*-2.0+cmax.*t18.*t150.*t152.*t155+cmax.*t18.*t150.*t151.*t160+(cmax.*t19.*t127.*t149.*t152.*t160)./2.0)-(t159.*t165.*(-t85-t112+t131+t133+t12.*(t63+t5.*(t45-t46)).*1.81008e+2+t11.*(t45-t46).*1.752048e+2))./2.0+t153.^2.*t157.*t159.*t165;
