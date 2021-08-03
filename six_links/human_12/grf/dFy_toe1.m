function dFy_toe_q1 = dFy_toe1(in1,in2,H,k,cmax,dmax,sampT)
%DFY_TOE1
%    DFY_TOE_Q1 = DFY_TOE1(IN1,IN2,H,K,CMAX,DMAX,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    02-Aug-2021 00:03:02

dq1 = in2(:,1);
dq2 = in2(:,2);
dq3 = in2(:,3);
dq4 = in2(:,4);
dq5 = in2(:,5);
dq6 = in2(:,6);
q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
q6 = in1(:,6);
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
t16 = -H;
t18 = 1.0./dmax;
t19 = 1.0./sampT;
t59 = atan(4.618051608502898e-1);
t60 = 1.1978829188531e+18;
t15 = cos(t14);
t17 = sin(t14);
t20 = t2.*t3;
t21 = t2.*t9;
t22 = t3.*t8;
t23 = q3+q4+t14;
t24 = t8.*t9;
t33 = t2.*4.4835e-1;
t34 = t8.*4.4835e-1;
t25 = cos(t23);
t26 = q5+t23;
t27 = sin(t23);
t29 = -t24;
t31 = t21+t22;
t37 = -t33;
t38 = t15.*4.4835e-1;
t39 = t20.*4.4835e-1;
t40 = t17.*4.4835e-1;
t41 = t21.*4.4835e-1;
t42 = t22.*4.4835e-1;
t43 = t24.*4.4835e-1;
t28 = sin(t26);
t30 = cos(t26);
t32 = t20+t29;
t35 = t4.*t31;
t36 = t10.*t31;
t47 = -t39;
t48 = t25.*4.4835e-1;
t49 = t27.*4.4835e-1;
t63 = q6+t26+t59;
t44 = t4.*t32;
t45 = t10.*t32;
t46 = -t36;
t50 = t30.*4.4835e-1;
t51 = t28.*4.4835e-1;
t64 = cos(t63);
t66 = sin(t63);
t52 = t35+t45;
t53 = t44+t46;
t56 = -t5.*(t36-t44);
t57 = -t11.*(t36-t44);
t65 = t5.*(t36-t44).*(-4.4835e-1);
t67 = t11.*(t36-t44).*(-4.4835e-1);
t68 = t5.*(t36-t44).*4.4835e-1;
t81 = (t60.*t64)./7.0368744177664e+18;
t82 = (t60.*t66)./7.0368744177664e+18;
t54 = t5.*t52;
t55 = t11.*t52;
t83 = dq6.*t81;
t84 = dq6.*t82;
t85 = t50+t81;
t86 = t51+t82;
t58 = -t55;
t61 = t54.*4.4835e-1;
t62 = t55.*4.4835e-1;
t69 = t54+t57;
t73 = -t12.*(t55+t5.*(t36-t44));
t74 = -t6.*(t55+t5.*(t36-t44));
t75 = t6.*(t55+t5.*(t36-t44));
t78 = t12.*(t55+t5.*(t36-t44)).*(-4.4835e-1);
t87 = dq5.*t85;
t88 = dq5.*t86;
t89 = t48+t85;
t90 = t49+t86;
t70 = t56+t58;
t71 = t12.*t69;
t72 = t6.*t69;
t79 = t75.*(-4.4835e-1);
t80 = t75.*4.4835e-1;
t91 = dq1.*t90;
t92 = dq2.*t90;
t93 = dq3.*t90;
t94 = dq4.*t90;
t95 = dq3.*t89;
t96 = dq4.*t89;
t99 = t38+t89;
t100 = t40+t90;
t76 = t71.*4.4835e-1;
t77 = t72.*4.4835e-1;
t97 = t72+t73;
t98 = t71+t75;
t103 = dq2.*t99;
t104 = dq2.*t100;
t110 = t33+t99;
t118 = t84+t88+t91+t92+t93+t94;
t101 = t7.*t97.*7.137e-2;
t102 = t13.*t97.*7.137e-2;
t106 = t7.*t98.*7.137e-2;
t107 = t13.*t98.*7.137e-2;
t111 = dq1.*t110;
t112 = t7.*t97.*1.54545696e-1;
t113 = t13.*t97.*1.54545696e-1;
t114 = t7.*t98.*1.54545696e-1;
t115 = t13.*t98.*1.54545696e-1;
t105 = -t102;
t108 = -t106;
t109 = -t107;
t116 = -t115;
t120 = t83+t87+t95+t96+t103+t111;
t117 = t101+t109+t113+t114;
t124 = t16+t34+t41+t42+t61+t67+t77+t78+t105+t108+t112+t116;
t119 = t76+t80+t117;
t125 = cmax.*t18.*t19.*t89.*t124;
t129 = (cmax.*t18.*t118.*t124)./2.0;
t121 = t62+t68+t119;
t126 = -t125;
t130 = -t129;
t122 = t43+t47+t121;
t127 = (cmax.*t18.*t120.*t121)./2.0;
t131 = k.*t121.*t124;
t123 = t37+t122;
t128 = -t127;
t132 = -t131;
t133 = t126+t128+t130+t132;
dFy_toe_q1 = [-k.*t123.*t124-(cmax.*t18.*t120.*t123)./2.0-(cmax.*t18.*t124.*(t84+t88+t93+t94+t104+dq1.*(t34+t100)))./2.0-cmax.*t18.*t19.*t110.*t124;-k.*t122.*t124-(cmax.*t18.*t120.*t122)./2.0-(cmax.*t18.*t124.*(t84+t88+t93+t94+t104+dq1.*t100))./2.0-cmax.*t18.*t19.*t99.*t124;t133;t133;-k.*t119.*t124-(cmax.*t18.*t119.*t120)./2.0-(cmax.*t18.*t124.*(t84+t88+dq1.*t86+dq2.*t86+dq3.*t86+dq4.*t86))./2.0-cmax.*t18.*t19.*t85.*t124;-k.*t117.*t124-(cmax.*t18.*t117.*t120)./2.0-(cmax.*t18.*t124.*(t84+dq1.*t82+dq2.*t82+dq3.*t82+dq4.*t82+dq5.*t82))./2.0-(cmax.*t18.*t19.*t60.*t64.*t124)./7.0368744177664e+18];
