function dFs_heel1_d = dFs_heel1_d(in1,th,k,cmax,dmax,us,ud)
%DFS_HEEL1_D
%    DFS_HEEL1_D = DFS_HEEL1_D(IN1,TH,K,CMAX,DMAX,US,UD)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    13-Jun-2020 13:10:19

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
t15 = 1.0./dmax;
t16 = -th;
t22 = th.*4.0e+2;
t13 = cos(t12);
t14 = sin(t12);
t17 = t2.*t3;
t18 = t2.*t8;
t19 = t3.*t7;
t20 = q3+q4+t12;
t21 = t7.*t8;
t26 = -t22;
t31 = t7.*1.81008e+2;
t33 = t2.*4.5252e-1;
t34 = t7.*4.5252e-1;
t23 = cos(t20);
t24 = q5+t20;
t25 = sin(t20);
t28 = -t21;
t30 = t18+t19;
t49 = t13.*4.38012e-1;
t50 = t17.*4.38012e-1;
t51 = t14.*4.38012e-1;
t52 = t18.*4.38012e-1;
t53 = t19.*4.38012e-1;
t54 = t21.*4.38012e-1;
t55 = t17.*1.752048e+2;
t56 = t18.*1.752048e+2;
t57 = t19.*1.752048e+2;
t58 = t21.*1.752048e+2;
t27 = sin(t24);
t29 = cos(t24);
t32 = t17+t28;
t35 = t4.*t30;
t36 = t9.*t30;
t59 = -t54;
t60 = -t58;
t61 = q6+t24+2.803565332283614e-1;
t62 = t23.*4.38012e-1;
t63 = t25.*4.38012e-1;
t37 = t4.*t32;
t38 = t9.*t32;
t39 = -t36;
t40 = t29.*4.5252e-1;
t41 = t27.*4.5252e-1;
t64 = cos(t61);
t65 = sin(t61);
t42 = t35+t38;
t43 = t37+t39;
t46 = -t5.*(t36-t37);
t47 = -t10.*(t36-t37);
t72 = t5.*(t36-t37).*(-4.38012e-1);
t73 = t10.*(t36-t37).*(-4.38012e-1);
t74 = t5.*(t36-t37).*(-1.752048e+2);
t75 = t10.*(t36-t37).*(-1.752048e+2);
t76 = t5.*(t36-t37).*4.38012e-1;
t78 = t5.*(t36-t37).*1.752048e+2;
t80 = t64.*2.764744335377143e-1;
t81 = t65.*2.764744335377143e-1;
t44 = t5.*t42;
t45 = t10.*t42;
t82 = qd6.*t80;
t83 = qd6.*t81;
t96 = t40+t80;
t97 = t41+t81;
t48 = -t45;
t66 = t44.*4.38012e-1;
t67 = t45.*4.38012e-1;
t68 = t44.*1.752048e+2;
t69 = t45.*1.752048e+2;
t77 = t44+t47;
t87 = t11.*(t45+t5.*(t36-t37)).*(-2.11608e+2);
t89 = t6.*(t45+t5.*(t36-t37)).*(-2.11608e+2);
t92 = t6.*(t45+t5.*(t36-t37)).*2.11608e+2;
t93 = t11.*(t45+t5.*(t36-t37)).*(-5.2902e-1);
t94 = t6.*(t45+t5.*(t36-t37)).*(-5.2902e-1);
t95 = t6.*(t45+t5.*(t36-t37)).*5.2902e-1;
t98 = qd5.*t96;
t99 = qd5.*t97;
t100 = t63+t97;
t101 = t62+t96;
t70 = -t67;
t71 = -t69;
t79 = t46+t48;
t84 = t11.*t77.*2.11608e+2;
t85 = t6.*t77.*2.11608e+2;
t88 = t11.*t77.*5.2902e-1;
t90 = t6.*t77.*5.2902e-1;
t102 = qd3.*t101;
t103 = qd4.*t101;
t104 = qd1.*t100;
t105 = qd2.*t100;
t106 = qd3.*t100;
t107 = qd4.*t100;
t109 = t49+t101;
t110 = t51+t100;
t86 = -t84;
t91 = -t88;
t108 = t88+t95;
t111 = qd2.*t109;
t112 = qd2.*t110;
t113 = t33+t109;
t115 = t69+t78+t84+t92;
t119 = t26+t31+t56+t57+t68+t75+t85+t87;
t120 = t16+t34+t52+t53+t66+t73+t90+t93;
t129 = t83+t99+t104+t105+t106+t107;
t114 = qd1.*t113;
t116 = t67+t76+t108;
t117 = t50+t59+t70+t72+t91+t94;
t121 = tanh(t119);
t122 = t120.^2;
t134 = cmax.*t15.*t120.*t129;
t118 = t33+t117;
t123 = t121.^2;
t124 = k.*t122;
t125 = t121./2.0;
t128 = k.*t116.*t120.*2.0;
t130 = t82+t98+t102+t103+t111+t114;
t126 = t123-1.0;
t127 = t125-1.0./2.0;
t133 = cmax.*t15.*t116.*t130;
t135 = cmax.*t15.*t120.*t130;
t131 = cmax.*t15.*t101.*t120.*t127.*ud;
t136 = t124+t135;
t139 = t128+t133+t134;
t132 = -t131;
t137 = (t115.*t126.*t136.*ud)./2.0;
t140 = t127.*t139.*ud;
t138 = -t137;
t141 = t138+t140;
dFs_heel1_d = [-t127.*ud.*(k.*t120.*(t33+t50-t54-t116).*2.0-cmax.*t15.*t120.*(t83+t99+t106+t107+t112+qd1.*(t34+t110))+cmax.*t15.*t130.*(t33+t50-t54-t116))+(t126.*t136.*ud.*(t2.*1.81008e+2+t55-t58-t115))./2.0;t127.*ud.*(k.*t120.*(-t50+t54+t116).*2.0+cmax.*t15.*t120.*(t83+t99+t106+t107+t112+qd1.*t110)+cmax.*t15.*t130.*(-t50+t54+t116))-(t126.*t136.*ud.*(-t55+t58+t115))./2.0;t141;t141;t127.*ud.*(k.*t108.*t120.*2.0+cmax.*t15.*t120.*(t83+t99+qd1.*t97+qd2.*t97+qd3.*t97+qd4.*t97)+cmax.*t15.*t108.*t130)-(t126.*t136.*ud.*(t84+t92))./2.0;cmax.*t15.*t120.*t127.*ud.*(t83+qd1.*t81+qd2.*t81+qd3.*t81+qd4.*t81+qd5.*t81);-cmax.*t15.*t113.*t120.*t127.*ud;-cmax.*t15.*t109.*t120.*t127.*ud;t132;t132;-cmax.*t15.*t96.*t120.*t127.*ud;cmax.*t15.*t64.*t120.*t127.*ud.*(-2.764744335377143e-1)];
