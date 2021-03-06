function out1 = hess_grf_ceq_heel55(in1,toe_th,dmax,cmax,k,us,ud)
%HESS_GRF_CEQ_HEEL55
%    OUT1 = HESS_GRF_CEQ_HEEL55(IN1,TOE_TH,DMAX,CMAX,K,US,UD)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    23-Jun-2020 11:18:33

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
t68 = t23.*1.752048e+2;
t69 = t24.*1.752048e+2;
t70 = t16.*4.38012e-1;
t71 = t17.*8.76024e-1;
t72 = t23.*4.38012e-1;
t73 = t24.*4.38012e-1;
t32 = q6+t29;
t33 = sin(t29);
t35 = cos(t29);
t40 = t22+t34;
t44 = t4.*t38;
t45 = t10.*t38;
t76 = t28.*4.38012e-1;
t77 = t30.*8.76024e-1;
t36 = cos(t32);
t37 = sin(t32);
t46 = t4.*t40;
t47 = t10.*t40;
t48 = -t45;
t49 = t35.*9.0504e-1;
t50 = t35.*4.5252e-1;
t51 = t33.*9.0504e-1;
t52 = t33.*4.5252e-1;
t75 = t32-1.290439793566535;
t53 = -t49;
t54 = -t50;
t55 = t36.*4.5252e-1;
t56 = t37.*4.5252e-1;
t60 = qd6.*t37.*(-4.5252e-1);
t61 = t44+t47;
t62 = t46+t48;
t65 = -t5.*(t45-t46);
t66 = -t11.*(t45-t46);
t84 = cos(t75);
t85 = sin(t75);
t89 = t11.*(t45-t46).*(-1.752048e+2);
t91 = t11.*(t45-t46).*(-4.38012e-1);
t57 = qd6.*t55;
t58 = qd6.*t56;
t59 = -t56;
t63 = t5.*t61;
t64 = t11.*t61;
t74 = t52+t55;
t78 = t54+t56;
t98 = t84.*5.529488670754286e-1;
t99 = t85.*5.529488670754286e-1;
t67 = -t64;
t79 = qd1.*t74;
t80 = qd2.*t74;
t81 = qd3.*t74;
t82 = qd4.*t74;
t83 = qd5.*t74;
t86 = qd5.*t78;
t88 = t63.*1.752048e+2;
t90 = t63.*4.38012e-1;
t92 = t63+t66;
t96 = -t12.*(t64+t5.*(t45-t46));
t97 = -t6.*(t64+t5.*(t45-t46));
t100 = t6.*(t64+t5.*(t45-t46));
t101 = t50+t59+t76;
t106 = t12.*(t64+t5.*(t45-t46)).*(-1.81008e+2);
t111 = t12.*(t64+t5.*(t45-t46)).*(-4.5252e-1);
t114 = t53+t99;
t135 = t21+t42+t51+t71+t77+t98;
t87 = -t86;
t93 = t65+t67;
t94 = t12.*t92;
t95 = t6.*t92;
t104 = qd3.*t101;
t105 = qd4.*t101;
t108 = t100.*(-1.81008e+2);
t110 = t100.*1.81008e+2;
t112 = t100.*(-4.5252e-1);
t113 = t100.*4.5252e-1;
t115 = t70+t101;
t136 = t18.*t135;
t142 = t57+t79+t80+t81+t82+t83;
t102 = t94.*1.81008e+2;
t103 = t95.*1.81008e+2;
t107 = t94.*4.5252e-1;
t109 = t95.*4.5252e-1;
t116 = qd2.*t115;
t117 = t41+t115;
t119 = t95+t96;
t120 = t94+t100;
t137 = tanh(t136);
t118 = qd1.*t117;
t121 = t7.*t119.*(1.53e+2./5.0);
t122 = t13.*t119.*(1.53e+2./5.0);
t124 = t7.*t120.*(1.53e+2./5.0);
t125 = t13.*t120.*(1.53e+2./5.0);
t127 = t7.*t119.*7.65e-2;
t129 = t13.*t119.*7.65e-2;
t131 = t7.*t120.*7.65e-2;
t132 = t13.*t120.*7.65e-2;
t138 = t137.^2;
t139 = t137./2.0;
t123 = -t122;
t126 = -t124;
t128 = -t125;
t130 = -t129;
t133 = -t131;
t134 = -t132;
t140 = t138-1.0;
t141 = t139-1.0./2.0;
t144 = t60+t87+t104+t105+t116+t118;
t143 = t102+t110+t121+t128;
t145 = t107+t113+t127+t134;
t146 = t109+t111+t130+t133;
t147 = t31+t39+t68+t69+t88+t89+t103+t106+t123+t126;
t148 = tanh(t147);
t151 = t20+t43+t72+t73+t90+t91+t146;
t149 = t148.^2;
t152 = t151.^2;
t154 = cmax.*t18.*t141.*t144.*t151;
t150 = t149-1.0;
t153 = k.*t152;
t155 = -t154;
t156 = t153+t155;
out1 = -(t148./2.0-1.0./2.0).*(k.*t145.^2.*-2.0-k.*t151.*(-t109+t129+t131+t12.*(t64+t5.*(t45-t46)).*4.5252e-1).*2.0+cmax.*t18.*t141.*t144.*(-t109+t129+t131+t12.*(t64+t5.*(t45-t46)).*4.5252e-1)+cmax.*t18.*t141.*t151.*(t58+t86+qd1.*t78+qd2.*t78+qd3.*t78+qd4.*t78)+cmax.*t18.*t141.*t142.*t145.*2.0+cmax.*t19.*t140.*t144.*t145.*(t49-t99)+cmax.*t19.*t140.*t142.*t151.*(t49-t99)+(cmax.*t19.*t140.*t144.*t151.*(t51+t98))./2.0+cmax.*t18.^3.*t137.*t140.*t144.*t151.*(t49-t99).^2)-(t150.*t156.*(-t103+t122+t124+t12.*(t64+t5.*(t45-t46)).*1.81008e+2))./2.0+t143.*t150.*(k.*t145.*t151.*-2.0+cmax.*t18.*t141.*t144.*t145+cmax.*t18.*t141.*t142.*t151+(cmax.*t19.*t140.*t144.*t151.*(t49-t99))./2.0)+t143.^2.*t148.*t150.*t156;
