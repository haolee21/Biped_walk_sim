function dFy_heel_q2 = dFy_heel2(in1,in2,H,k,cmax,dmax,sampT)
%DFY_HEEL2
%    DFY_HEEL_Q2 = DFY_HEEL2(IN1,IN2,H,K,CMAX,DMAX,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    21-Apr-2021 15:59:21

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
t58 = atan(5.774051282051283e-1);
t59 = 1.546478599905513e+18;
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
t37 = t15.*4.4835e-1;
t38 = t20.*4.4835e-1;
t39 = t17.*4.4835e-1;
t40 = t21.*4.4835e-1;
t41 = t22.*4.4835e-1;
t42 = t24.*4.4835e-1;
t28 = sin(t26);
t30 = cos(t26);
t32 = t20+t29;
t35 = t4.*t31;
t36 = t10.*t31;
t46 = -t42;
t47 = t25.*4.4835e-1;
t48 = t27.*4.4835e-1;
t65 = q6+t26+t58;
t43 = t4.*t32;
t44 = t10.*t32;
t45 = -t36;
t49 = t30.*4.4835e-1;
t50 = t28.*4.4835e-1;
t66 = cos(t65);
t67 = sin(t65);
t51 = t35+t44;
t52 = t43+t45;
t55 = -t5.*(t36-t43);
t56 = -t11.*(t36-t43);
t63 = t5.*(t36-t43).*(-4.4835e-1);
t64 = t11.*(t36-t43).*(-4.4835e-1);
t80 = t59.*t66.*5.329070518200751e-20;
t81 = t59.*t67.*5.329070518200751e-20;
t85 = dq6.*t59.*t67.*(-5.329070518200751e-20);
t53 = t5.*t51;
t54 = t11.*t51;
t82 = -t81;
t83 = dq6.*t80;
t84 = dq6.*t81;
t86 = t50+t80;
t57 = -t54;
t60 = t53.*4.4835e-1;
t61 = t54.*4.4835e-1;
t68 = t53+t56;
t72 = -t12.*(t54+t5.*(t36-t43));
t73 = -t6.*(t54+t5.*(t36-t43));
t74 = t6.*(t54+t5.*(t36-t43));
t78 = t12.*(t54+t5.*(t36-t43)).*(-4.4835e-1);
t87 = t49+t82;
t88 = dq5.*t86;
t90 = t48+t86;
t62 = -t61;
t69 = t55+t57;
t70 = t12.*t68;
t71 = t6.*t68;
t79 = t74.*(-4.4835e-1);
t89 = dq5.*t87;
t91 = t47+t87;
t93 = dq1.*t90;
t94 = dq2.*t90;
t95 = dq3.*t90;
t96 = dq4.*t90;
t102 = t39+t90;
t75 = t70.*4.4835e-1;
t76 = t71.*4.4835e-1;
t92 = t71+t72;
t97 = t70+t74;
t98 = dq3.*t91;
t99 = dq4.*t91;
t105 = t37+t91;
t109 = dq2.*t102;
t119 = t83+t88+t93+t94+t95+t96;
t77 = -t75;
t100 = t7.*t92.*7.137e-2;
t101 = t13.*t92.*7.137e-2;
t106 = t7.*t97.*7.137e-2;
t107 = t13.*t97.*7.137e-2;
t110 = dq2.*t105;
t111 = t33+t105;
t113 = t7.*t92.*4.120940400000001e-2;
t114 = t13.*t92.*4.120940400000001e-2;
t116 = t7.*t97.*4.120940400000001e-2;
t117 = t13.*t97.*4.120940400000001e-2;
t103 = -t100;
t104 = -t101;
t108 = -t106;
t112 = dq1.*t111;
t115 = -t113;
t118 = t103+t107+t114+t116;
t121 = t85+t89+t98+t99+t110+t112;
t125 = t16+t34+t40+t41+t60+t64+t76+t78+t104+t108+t115+t117;
t120 = t77+t79+t118;
t126 = cmax.*t18.*t19.*t91.*t125;
t127 = (cmax.*t18.*t119.*t125)./2.0;
t129 = cmax.*t18.*t121.*(t61+t74.*4.4835e-1+t75+t100-t107-t114-t116+t5.*(t36-t43).*4.4835e-1).*(-1.0./2.0);
t130 = -k.*t125.*(t61+t74.*4.4835e-1+t75+t100-t107-t114-t116+t5.*(t36-t43).*4.4835e-1);
t122 = t62+t63+t120;
t128 = -t127;
t123 = t38+t46+t122;
t131 = t126+t128+t129+t130;
t124 = t33+t123;
dFy_heel_q2 = [-k.*t125.*(-t33-t38+t42+t61+t74.*4.4835e-1+t75+t100-t107-t114-t116+t5.*(t36-t43).*4.4835e-1)-(cmax.*t18.*t121.*(-t33-t38+t42+t61+t74.*4.4835e-1+t75+t100-t107-t114-t116+t5.*(t36-t43).*4.4835e-1))./2.0-(cmax.*t18.*t125.*(t83+t88+t95+t96+t109+dq1.*(t34+t102)))./2.0+cmax.*t18.*t19.*t111.*t125;-k.*t125.*(-t38+t42+t61+t74.*4.4835e-1+t75+t100-t107-t114-t116+t5.*(t36-t43).*4.4835e-1)-(cmax.*t18.*t121.*(-t38+t42+t61+t74.*4.4835e-1+t75+t100-t107-t114-t116+t5.*(t36-t43).*4.4835e-1))./2.0-(cmax.*t18.*t125.*(t83+t88+t95+t96+t109+dq1.*t102))./2.0+cmax.*t18.*t19.*t105.*t125;t131;t131;-k.*t125.*(t74.*4.4835e-1+t75+t100-t107-t114-t116)-(cmax.*t18.*t121.*(t74.*4.4835e-1+t75+t100-t107-t114-t116))./2.0-(cmax.*t18.*t125.*(t83+t88+dq1.*t86+dq2.*t86+dq3.*t86+dq4.*t86))./2.0+cmax.*t18.*t19.*t87.*t125;k.*t118.*t125+(cmax.*t18.*t118.*t121)./2.0-(cmax.*t18.*t125.*(t83+dq1.*t80+dq2.*t80+dq3.*t80+dq4.*t80+dq5.*t80))./2.0-cmax.*t18.*t19.*t59.*t67.*t125.*5.329070518200751e-20];
