function dGrf_toe_c1_q1 = dGrf_toe_c1_q1(in1,in2,Fy,s,sampT,H,k,cmax,dmax)
%DGRF_TOE_C1_Q1
%    DGRF_TOE_C1_Q1 = DGRF_TOE_C1_Q1(IN1,IN2,FY,S,SAMPT,H,K,CMAX,DMAX)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    22-Sep-2020 01:08:09

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
t15 = H.*2.0;
t17 = -H;
t20 = 1.0./dmax;
t21 = 1.0./sampT;
t16 = cos(t14);
t18 = -t15;
t19 = sin(t14);
t22 = t2.*t3;
t23 = t2.*t9;
t24 = t3.*t8;
t25 = q_t3+q_t4+t14;
t26 = t8.*t9;
t47 = t2.*4.60062e-1;
t48 = t8.*4.60062e-1;
t49 = t8.*9.201240000000001e-1;
t27 = cos(t25);
t28 = q_t5+t25;
t29 = sin(t25);
t31 = -t26;
t33 = t23+t24;
t50 = t16.*4.453122e-1;
t51 = t22.*4.453122e-1;
t52 = t22.*8.906244e-1;
t53 = t19.*4.453122e-1;
t54 = t23.*4.453122e-1;
t55 = t23.*8.906244e-1;
t56 = t24.*4.453122e-1;
t57 = t24.*8.906244e-1;
t58 = t26.*4.453122e-1;
t59 = t26.*8.906244e-1;
t30 = sin(t28);
t32 = cos(t28);
t34 = t22+t31;
t35 = t4.*t33;
t36 = t10.*t33;
t60 = -t52;
t61 = -t51;
t62 = t27.*4.453122e-1;
t63 = t29.*4.453122e-1;
t64 = q_t6+t28+4.781417504689244e-1;
t37 = t4.*t34;
t38 = t10.*t34;
t39 = -t36;
t65 = t32.*4.60062e-1;
t66 = t30.*4.60062e-1;
t67 = cos(t64);
t68 = sin(t64);
t40 = t35+t38;
t41 = t37+t39;
t44 = -t5.*(t36-t37);
t45 = -t11.*(t36-t37);
t73 = t5.*(t36-t37).*(-4.453122e-1);
t74 = t5.*(t36-t37).*(-8.906244e-1);
t75 = t11.*(t36-t37).*(-4.453122e-1);
t76 = t11.*(t36-t37).*(-8.906244e-1);
t78 = t5.*(t36-t37).*8.906244e-1;
t79 = t5.*(t36-t37).*4.453122e-1;
t86 = t67.*1.690282735215953e-1;
t87 = t68.*1.690282735215953e-1;
t42 = t5.*t40;
t43 = t11.*t40;
t88 = qd_t6.*t86;
t89 = qd_t6.*t87;
t100 = t65+t86;
t101 = t66+t87;
t46 = -t43;
t69 = t42.*4.453122e-1;
t70 = t42.*8.906244e-1;
t71 = t43.*4.453122e-1;
t72 = t43.*8.906244e-1;
t77 = t42+t45;
t83 = -t6.*(t43+t5.*(t36-t37));
t84 = -t12.*(t43+t5.*(t36-t37));
t94 = t6.*(t43+t5.*(t36-t37)).*(-4.60062e-1);
t95 = t6.*(t43+t5.*(t36-t37)).*(-9.201240000000001e-1);
t96 = t12.*(t43+t5.*(t36-t37)).*(-4.60062e-1);
t97 = t12.*(t43+t5.*(t36-t37)).*(-9.201240000000001e-1);
t98 = t6.*(t43+t5.*(t36-t37)).*9.201240000000001e-1;
t99 = t6.*(t43+t5.*(t36-t37)).*4.60062e-1;
t102 = qd_t5.*t100;
t103 = qd_t5.*t101;
t106 = t62+t100;
t107 = t63+t101;
t80 = t44+t46;
t81 = t6.*t77;
t82 = t12.*t77;
t108 = qd_t1.*t107;
t109 = qd_t2.*t107;
t110 = qd_t3.*t107;
t111 = qd_t4.*t107;
t112 = qd_t3.*t106;
t113 = qd_t4.*t106;
t134 = t53+t107;
t135 = t50+t106;
t85 = -t82;
t90 = t81.*4.60062e-1;
t91 = t81.*9.201240000000001e-1;
t92 = t82.*4.60062e-1;
t93 = t82.*9.201240000000001e-1;
t104 = t81+t84;
t120 = t7.*(t82+t6.*(t43+t5.*(t36-t37))).*(-1.5555e-1);
t121 = t7.*(t82+t6.*(t43+t5.*(t36-t37))).*(-7.7775e-2);
t122 = t13.*(t82+t6.*(t43+t5.*(t36-t37))).*(-1.5555e-1);
t123 = t13.*(t82+t6.*(t43+t5.*(t36-t37))).*(-7.7775e-2);
t128 = t7.*(t82+t6.*(t43+t5.*(t36-t37))).*(-1.500720048e-1);
t129 = t7.*(t82+t6.*(t43+t5.*(t36-t37))).*(-3.001440096e-1);
t130 = t13.*(t82+t6.*(t43+t5.*(t36-t37))).*(-1.500720048e-1);
t131 = t13.*(t82+t6.*(t43+t5.*(t36-t37))).*(-3.001440096e-1);
t132 = t7.*(t82+t6.*(t43+t5.*(t36-t37))).*3.001440096e-1;
t133 = t7.*(t82+t6.*(t43+t5.*(t36-t37))).*1.500720048e-1;
t136 = qd_t2.*t135;
t137 = qd_t2.*t134;
t138 = t47+t135;
t140 = t89+t103+t108+t109+t110+t111;
t105 = t83+t85;
t114 = t7.*t104.*1.5555e-1;
t115 = t7.*t104.*7.7775e-2;
t116 = t13.*t104.*1.5555e-1;
t117 = t13.*t104.*7.7775e-2;
t124 = t7.*t104.*1.500720048e-1;
t125 = t7.*t104.*3.001440096e-1;
t126 = t13.*t104.*1.500720048e-1;
t127 = t13.*t104.*3.001440096e-1;
t139 = qd_t1.*t138;
t118 = -t116;
t119 = -t117;
t141 = t88+t102+t112+t113+t136+t139;
t142 = t72+t78+t93+t98+t114+t122+t127+t132;
t143 = t71+t79+t92+t99+t115+t123+t126+t133;
t144 = t18+t49+t55+t57+t70+t76+t91+t97+t118+t120+t125+t131;
t145 = t17+t48+t54+t56+t69+t75+t90+t96+t119+t121+t124+t130;
t146 = t20.*t144;
t156 = k.*t143.*t145.*2.0;
t147 = tanh(t146);
t148 = t147.^2;
t149 = t147./2.0;
t150 = t148-1.0;
t151 = t149-1.0./2.0;
t152 = cmax.*s.*t21.*t106.*t151;
t154 = cmax.*t140.*t151;
t157 = (cmax.*t20.*t141.*t142.*t150)./2.0;
t153 = -t152;
t155 = -t154;
t158 = t155+t156+t157;
t159 = (s.*t158)./2.0;
t160 = t153+t159;
dGrf_toe_c1_q1 = [(s.*(k.*t145.*(-t47+t58+t61+t143).*2.0-cmax.*t151.*(t89+t103+t110+t111+t137+qd_t1.*(t48+t134))+(cmax.*t20.*t141.*t150.*(t2.*(-9.201240000000001e-1)+t59+t60+t142))./2.0))./2.0-cmax.*s.*t21.*t138.*t151;(s.*(-cmax.*t151.*(t89+t103+t110+t111+t137+qd_t1.*t134)+k.*t145.*(t58+t61+t143).*2.0+(cmax.*t20.*t141.*t150.*(t59+t60+t142))./2.0))./2.0-cmax.*s.*t21.*t135.*t151;t160;t160;(s.*(k.*t145.*(t92+t99+t115+t123+t126+t133).*2.0-cmax.*t151.*(t89+t103+qd_t1.*t101+qd_t2.*t101+qd_t3.*t101+qd_t4.*t101)+(cmax.*t20.*t141.*t150.*(t93+t98+t114+t122+t127+t132))./2.0))./2.0-cmax.*s.*t21.*t100.*t151;(s.*(-cmax.*t151.*(t89+qd_t1.*t87+qd_t2.*t87+qd_t3.*t87+qd_t4.*t87+qd_t5.*t87)+k.*t145.*(t115+t123+t126+t133).*2.0+(cmax.*t20.*t141.*t150.*(t114+t122+t127+t132))./2.0))./2.0-cmax.*s.*t21.*t67.*t151.*1.690282735215953e-1];
