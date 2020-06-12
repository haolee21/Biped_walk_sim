function dFn_toe2 = dFn_toe2(in1,th)
%DFN_TOE2
%    DFN_TOE2 = DFN_TOE2(IN1,TH)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    11-Jun-2020 22:32:18

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
t3 = sin(q1);
t4 = q1+q2;
t7 = -th;
t9 = th.*4.0e+2;
t16 = atan(3.472941176470588);
t17 = 1.535969075209524e+3;
t5 = cos(t4);
t6 = sin(t4);
t8 = q3+q4+t4;
t13 = -t9;
t18 = t3.*1.81008e+2;
t19 = -t16;
t20 = t2.*4.5252e-1;
t21 = t3.*4.5252e-1;
t10 = cos(t8);
t11 = q5+t8;
t12 = sin(t8);
t33 = t5.*4.38012e-1;
t34 = t6.*4.38012e-1;
t36 = t5.*4.38012e+1;
t37 = t5.*1.752048e+2;
t38 = t6.*1.752048e+2;
t46 = t5.*5.47515e+2;
t14 = sin(t11);
t15 = cos(t11);
t28 = q6+t11+t19;
t41 = q6+t11+2.803565332283614e-1;
t42 = t10.*4.38012e-1;
t43 = t12.*4.38012e-1;
t45 = t12.*1.752048e+2;
t49 = t10.*4.38012e+1;
t50 = t10.*1.752048e+2;
t51 = t10.*5.47515e+2;
t22 = t15.*5.6565e+2;
t23 = t15.*4.5252e+1;
t24 = t15.*1.81008e+2;
t25 = t14.*1.81008e+2;
t26 = t15.*4.5252e-1;
t27 = t14.*4.5252e-1;
t29 = cos(t28);
t30 = sin(t28);
t47 = cos(t41);
t48 = sin(t41);
t31 = t17.*t29.*(9.0./1.25e+2);
t32 = t17.*t30.*(9.0./1.25e+2);
t39 = t17.*t29.*1.8e-4;
t40 = t17.*t30.*1.8e-4;
t52 = t47.*3.455930419221429e+2;
t54 = qd6.*t48.*3.455930419221429e+2;
t55 = t47.*2.764744335377143e+1;
t57 = qd6.*t48.*2.764744335377143e+1;
t58 = t47.*2.764744335377143e-1;
t59 = t48.*2.764744335377143e-1;
t35 = -t32;
t44 = -t40;
t53 = qd6.*t52;
t56 = qd6.*t55;
t60 = t26+t58;
t61 = t27+t59;
t68 = t23+t49+t55;
t69 = t22+t51+t52;
t84 = t13+t18+t25+t31+t38+t45;
t86 = t7+t21+t27+t34+t39+t43;
t62 = t24+t35+t50;
t63 = t26+t42+t44;
t64 = qd5.*t60.*1.0e+2;
t65 = qd5.*t61.*1.0e+2;
t66 = qd5.*t60.*1.25e+3;
t67 = qd5.*t61.*1.25e+3;
t70 = t43+t61;
t71 = t42+t60;
t85 = tanh(t84);
t88 = t86.^2;
t72 = qd3.*t71.*1.0e+2;
t73 = qd4.*t71.*1.0e+2;
t74 = qd1.*t70.*1.0e+2;
t75 = qd2.*t70.*1.0e+2;
t76 = qd3.*t70.*1.0e+2;
t77 = qd4.*t70.*1.0e+2;
t78 = qd3.*t71.*1.25e+3;
t79 = qd4.*t71.*1.25e+3;
t80 = qd1.*t70.*1.25e+3;
t81 = qd2.*t70.*1.25e+3;
t82 = qd3.*t70.*1.25e+3;
t83 = qd4.*t70.*1.25e+3;
t87 = t85.^2;
t89 = t85./2.0;
t92 = t88.*5.0e+5;
t93 = t33+t71;
t94 = t34+t70;
t103 = t63.*t86.*1.0e+6;
t90 = t87-1.0;
t91 = t89-1.0./2.0;
t95 = qd2.*t93.*1.0e+2;
t96 = qd2.*t94.*1.0e+2;
t97 = qd2.*t93.*1.25e+3;
t98 = qd2.*t94.*1.25e+3;
t99 = t20+t93;
t100 = t21+t94;
t104 = t57+t65+t74+t75+t76+t77;
t105 = t54+t67+t80+t81+t82+t83;
t101 = qd1.*t99.*1.0e+2;
t102 = qd1.*t99.*1.25e+3;
t106 = t56+t64+t72+t73+t95+t101;
t109 = t53+t66+t78+t79+t97+t102;
t107 = tanh(t106);
t108 = t107.^2;
t110 = t107./2.0;
t111 = t108-1.0;
t112 = t110-1.0./2.0;
t113 = t69.*t112;
t114 = t105.*t112;
t115 = t109.*t112;
t117 = (t68.*t109.*t111)./2.0;
t121 = (t104.*t109.*t111)./2.0;
t116 = -t115;
t118 = -t117;
t122 = -t121;
t119 = t92+t116;
t123 = t113+t118;
t125 = t103+t114+t122;
t120 = (t62.*t90.*t119)./2.0;
t124 = t91.*t123;
t126 = t91.*t125;
t127 = -t126;
t128 = t120+t127;
dFn_toe2 = [-t91.*(t86.*(t20+t33+t63).*1.0e+6+t112.*(t54+t67+t82+t83+t98+qd1.*t100.*1.25e+3)-(t109.*t111.*(t57+t65+t76+t77+t96+qd1.*t100.*1.0e+2))./2.0)+(t90.*t119.*(t2.*1.81008e+2+t37+t62))./2.0;-t91.*(t86.*(t33+t63).*1.0e+6+t112.*(t54+t67+t82+t83+t98+qd1.*t94.*1.25e+3)-(t109.*t111.*(t57+t65+t76+t77+t96+qd1.*t94.*1.0e+2))./2.0)+(t90.*t119.*(t37+t62))./2.0;t128;t128;-t91.*(t86.*(t26+t44).*1.0e+6+t112.*(t54+t67+qd1.*t61.*1.25e+3+qd2.*t61.*1.25e+3+qd3.*t61.*1.25e+3+qd4.*t61.*1.25e+3)-(t109.*t111.*(t57+t65+qd1.*t61.*1.0e+2+qd2.*t61.*1.0e+2+qd3.*t61.*1.0e+2+qd4.*t61.*1.0e+2))./2.0)+(t90.*t119.*(t24+t35))./2.0;t91.*(-t112.*(t54+qd1.*t48.*3.455930419221429e+2+qd2.*t48.*3.455930419221429e+2+qd3.*t48.*3.455930419221429e+2+qd4.*t48.*3.455930419221429e+2+qd5.*t48.*3.455930419221429e+2)+(t109.*t111.*(t57+qd1.*t48.*2.764744335377143e+1+qd2.*t48.*2.764744335377143e+1+qd3.*t48.*2.764744335377143e+1+qd4.*t48.*2.764744335377143e+1+qd5.*t48.*2.764744335377143e+1))./2.0+t17.*t30.*t86.*1.8e+2)-t17.*t30.*t90.*t119.*(9.0./2.5e+2);t91.*(t112.*(t2.*5.6565e+2+t46+t69)-(t109.*t111.*(t2.*4.5252e+1+t36+t68))./2.0);t91.*(t112.*(t46+t69)-(t109.*t111.*(t36+t68))./2.0);t124;t124;t91.*(t112.*(t22+t52)-(t109.*t111.*(t23+t55))./2.0);t91.*(t52.*t112-t47.*t109.*t111.*1.382372167688572e+1)];
