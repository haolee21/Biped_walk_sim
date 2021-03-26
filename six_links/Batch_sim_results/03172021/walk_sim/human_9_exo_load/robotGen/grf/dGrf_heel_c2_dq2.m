function dGrf_heel_c2_dq2 = dGrf_heel_c2_dq2(in1,in2,Fx,H,k,cmax,dmax,us,sampT)
%DGRF_HEEL_C2_DQ2
%    DGRF_HEEL_C2_DQ2 = DGRF_HEEL_C2_DQ2(IN1,IN2,FX,H,K,CMAX,DMAX,US,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    04-Feb-2021 17:12:56

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
t15 = us.^2;
t17 = -H;
t19 = 1.0./dmax;
t20 = 1.0./sampT;
t60 = atan(5.774051282051283e-1);
t61 = 1.546478599905513e+18;
t16 = cos(t14);
t18 = sin(t14);
t21 = t2.*t3;
t22 = t2.*t9;
t23 = t3.*t8;
t24 = q_t3+q_t4+t14;
t25 = t8.*t9;
t34 = t2.*4.5018e-1;
t35 = t8.*4.5018e-1;
t26 = cos(t24);
t27 = q_t5+t24;
t28 = sin(t24);
t30 = -t25;
t32 = t22+t23;
t38 = -t34;
t39 = t16.*4.4835e-1;
t40 = t21.*4.4835e-1;
t41 = t18.*4.4835e-1;
t42 = t22.*4.4835e-1;
t43 = t23.*4.4835e-1;
t44 = t25.*4.4835e-1;
t29 = sin(t27);
t31 = cos(t27);
t33 = t21+t30;
t36 = t4.*t32;
t37 = t10.*t32;
t48 = -t40;
t49 = t26.*4.4835e-1;
t50 = t28.*4.4835e-1;
t66 = q_t6+t27+t60;
t45 = t4.*t33;
t46 = t10.*t33;
t47 = -t37;
t51 = t31.*4.5018e-1;
t52 = t29.*4.5018e-1;
t67 = cos(t66);
t69 = sin(t66);
t53 = t36+t46;
t54 = t45+t47;
t57 = -t5.*(t37-t45);
t58 = -t11.*(t37-t45);
t64 = t5.*(t37-t45).*(-4.4835e-1);
t65 = t11.*(t37-t45).*(-4.4835e-1);
t68 = t5.*(t37-t45).*4.4835e-1;
t82 = t61.*t67.*5.329070518200751e-20;
t83 = t61.*t69.*5.329070518200751e-20;
t87 = qd_t6.*t61.*t69.*(-5.329070518200751e-20);
t55 = t5.*t53;
t56 = t11.*t53;
t84 = -t83;
t85 = qd_t6.*t82;
t86 = qd_t6.*t83;
t88 = t52+t82;
t59 = -t56;
t62 = t55.*4.4835e-1;
t63 = t56.*4.4835e-1;
t70 = t55+t58;
t74 = -t6.*(t56+t5.*(t37-t45));
t75 = -t12.*(t56+t5.*(t37-t45));
t79 = t6.*(t56+t5.*(t37-t45)).*(-4.5018e-1);
t80 = t12.*(t56+t5.*(t37-t45)).*(-4.5018e-1);
t81 = t6.*(t56+t5.*(t37-t45)).*4.5018e-1;
t89 = t51+t84;
t90 = qd_t5.*t88;
t92 = t50+t88;
t71 = t57+t59;
t72 = t6.*t70;
t73 = t12.*t70;
t91 = qd_t5.*t89;
t93 = t49+t89;
t95 = qd_t1.*t92;
t96 = qd_t2.*t92;
t97 = qd_t3.*t92;
t98 = qd_t4.*t92;
t104 = t41+t92;
t76 = -t73;
t77 = t72.*4.5018e-1;
t78 = t73.*4.5018e-1;
t94 = t72+t75;
t100 = qd_t3.*t93;
t101 = qd_t4.*t93;
t106 = t39+t93;
t107 = t7.*(t73+t6.*(t56+t5.*(t37-t45))).*(-7.137e-2);
t108 = t13.*(t73+t6.*(t56+t5.*(t37-t45))).*(-7.137e-2);
t109 = qd_t2.*t104;
t117 = t7.*(t73+t6.*(t56+t5.*(t37-t45))).*(-4.120940400000001e-2);
t118 = t13.*(t73+t6.*(t56+t5.*(t37-t45))).*(-4.120940400000001e-2);
t119 = t13.*(t73+t6.*(t56+t5.*(t37-t45))).*4.120940400000001e-2;
t121 = t85+t90+t95+t96+t97+t98;
t99 = t74+t76;
t102 = t7.*t94.*7.137e-2;
t103 = t13.*t94.*7.137e-2;
t110 = qd_t2.*t106;
t111 = t34+t106;
t113 = t7.*t94.*4.120940400000001e-2;
t114 = t13.*t94.*4.120940400000001e-2;
t105 = -t103;
t112 = qd_t1.*t111;
t115 = -t113;
t116 = -t114;
t120 = t102+t108+t116+t117;
t123 = t87+t91+t100+t101+t110+t112;
t127 = t17+t35+t42+t43+t62+t65+t77+t80+t105+t107+t115+t119;
t122 = t78+t81+t120;
t128 = t127.^2;
t130 = cmax.*t19.*t121.*t127;
t132 = cmax.*t19.*t123.*t127;
t124 = t63+t68+t122;
t129 = k.*t128;
t125 = t44+t48+t124;
t131 = cmax.*t19.*t123.*t124;
t133 = k.*t124.*t127.*2.0;
t134 = t129+t132;
t126 = t38+t125;
t135 = cmax.*t15.*t19.*t20.*t93.*t127.*t134.*2.0;
t137 = t130+t131+t133;
t136 = -t135;
t138 = t15.*t134.*t137;
t139 = t136+t138;
dGrf_heel_c2_dq2 = [t15.*t134.*(k.*t126.*t127.*2.0+cmax.*t19.*t123.*t126+cmax.*t19.*t127.*(t85+t90+t97+t98+t109+qd_t1.*(t35+t104)))-cmax.*t15.*t19.*t20.*t111.*t127.*t134.*2.0;t15.*t134.*(k.*t125.*t127.*2.0+cmax.*t19.*t123.*t125+cmax.*t19.*t127.*(t85+t90+t97+t98+t109+qd_t1.*t104))-cmax.*t15.*t19.*t20.*t106.*t127.*t134.*2.0;t139;t139;t15.*t134.*(k.*t122.*t127.*2.0+cmax.*t19.*t127.*(t85+t90+qd_t1.*t88+qd_t2.*t88+qd_t3.*t88+qd_t4.*t88)+cmax.*t19.*t122.*t123)-cmax.*t15.*t19.*t20.*t89.*t127.*t134.*2.0;-t15.*t134.*(k.*t127.*(-t102+t114+t7.*(t73+t6.*(t56+t5.*(t37-t45))).*4.120940400000001e-2+t13.*(t73+t6.*(t56+t5.*(t37-t45))).*7.137e-2).*2.0+cmax.*t19.*t123.*(-t102+t114+t7.*(t73+t6.*(t56+t5.*(t37-t45))).*4.120940400000001e-2+t13.*(t73+t6.*(t56+t5.*(t37-t45))).*7.137e-2)-cmax.*t19.*t127.*(t85+qd_t1.*t82+qd_t2.*t82+qd_t3.*t82+qd_t4.*t82+qd_t5.*t82))+cmax.*t15.*t19.*t20.*t61.*t69.*t127.*t134.*1.06581410364015e-19];
