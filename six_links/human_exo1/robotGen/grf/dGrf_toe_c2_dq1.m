function dGrf_toe_c2_dq1 = dGrf_toe_c2_dq1(in1,in2,Fx,H,k,cmax,dmax,us,sampT)
%DGRF_TOE_C2_DQ1
%    DGRF_TOE_C2_DQ1 = DGRF_TOE_C2_DQ1(IN1,IN2,FX,H,K,CMAX,DMAX,US,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    04-Dec-2020 18:34:07

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
t55 = atan(5.18251222829003e-1);
t57 = 1.903089174117337e+18;
t16 = cos(t14);
t18 = sin(t14);
t21 = t2.*t3;
t22 = t2.*t9;
t23 = t3.*t8;
t24 = q_t3+q_t4+t14;
t25 = t8.*t9;
t46 = t2.*4.60062e-1;
t47 = t8.*4.60062e-1;
t26 = cos(t24);
t27 = q_t5+t24;
t28 = sin(t24);
t30 = -t25;
t32 = t22+t23;
t48 = -t46;
t49 = t16.*4.453122e-1;
t50 = t21.*4.453122e-1;
t51 = t18.*4.453122e-1;
t52 = t22.*4.453122e-1;
t53 = t23.*4.453122e-1;
t54 = t25.*4.453122e-1;
t29 = sin(t27);
t31 = cos(t27);
t33 = t21+t30;
t34 = t4.*t32;
t35 = t10.*t32;
t56 = -t50;
t58 = t26.*4.453122e-1;
t59 = t28.*4.453122e-1;
t62 = q_t6+t27+t55;
t36 = t4.*t33;
t37 = t10.*t33;
t38 = -t35;
t60 = t31.*4.60062e-1;
t61 = t29.*4.60062e-1;
t63 = cos(t62);
t64 = sin(t62);
t39 = t34+t37;
t40 = t36+t38;
t43 = -t5.*(t35-t36);
t44 = -t11.*(t35-t36);
t67 = t5.*(t35-t36).*(-4.453122e-1);
t68 = t11.*(t35-t36).*(-4.453122e-1);
t70 = t5.*(t35-t36).*4.453122e-1;
t82 = (t57.*t63)./1.125899906842624e+19;
t83 = (t57.*t64)./1.125899906842624e+19;
t41 = t5.*t39;
t42 = t11.*t39;
t84 = qd_t6.*t82;
t85 = qd_t6.*t83;
t88 = t60+t82;
t89 = t61+t83;
t45 = -t42;
t65 = t41.*4.453122e-1;
t66 = t42.*4.453122e-1;
t69 = t41+t44;
t74 = -t6.*(t42+t5.*(t35-t36));
t75 = -t12.*(t42+t5.*(t35-t36));
t79 = t6.*(t42+t5.*(t35-t36)).*(-4.60062e-1);
t80 = t12.*(t42+t5.*(t35-t36)).*(-4.60062e-1);
t81 = t6.*(t42+t5.*(t35-t36)).*4.60062e-1;
t90 = qd_t5.*t88;
t91 = qd_t5.*t89;
t102 = t58+t88;
t103 = t59+t89;
t71 = t43+t45;
t72 = t6.*t69;
t73 = t12.*t69;
t104 = qd_t1.*t103;
t105 = qd_t2.*t103;
t106 = qd_t3.*t103;
t107 = qd_t4.*t103;
t108 = qd_t3.*t102;
t109 = qd_t4.*t102;
t110 = t51+t103;
t111 = t49+t102;
t76 = -t73;
t77 = t72.*4.60062e-1;
t78 = t73.*4.60062e-1;
t86 = t72+t75;
t95 = t7.*(t73+t6.*(t42+t5.*(t35-t36))).*(-7.7775e-2);
t96 = t13.*(t73+t6.*(t42+t5.*(t35-t36))).*(-7.7775e-2);
t99 = t7.*(t73+t6.*(t42+t5.*(t35-t36))).*(-1.500720048e-1);
t100 = t13.*(t73+t6.*(t42+t5.*(t35-t36))).*(-1.500720048e-1);
t101 = t7.*(t73+t6.*(t42+t5.*(t35-t36))).*1.500720048e-1;
t112 = qd_t2.*t111;
t113 = qd_t2.*t110;
t114 = t46+t111;
t118 = t85+t91+t104+t105+t106+t107;
t87 = t74+t76;
t92 = t7.*t86.*7.7775e-2;
t93 = t13.*t86.*7.7775e-2;
t97 = t7.*t86.*1.500720048e-1;
t98 = t13.*t86.*1.500720048e-1;
t115 = qd_t1.*t114;
t94 = -t93;
t116 = t92+t96+t98+t101;
t121 = t84+t90+t108+t109+t112+t115;
t117 = t78+t81+t116;
t122 = t17+t47+t52+t53+t65+t68+t77+t80+t94+t95+t97+t100;
t119 = t66+t70+t117;
t124 = t122.^2;
t127 = cmax.*t19.*t118.*t122;
t129 = cmax.*t19.*t121.*t122;
t120 = t54+t56+t119;
t125 = k.*t124;
t126 = cmax.*t19.*t119.*t121;
t128 = k.*t119.*t122.*2.0;
t123 = t48+t120;
t130 = t125+t129;
t132 = t126+t127+t128;
t131 = cmax.*t15.*t19.*t20.*t102.*t122.*t130.*2.0;
t133 = t15.*t130.*t132;
t134 = t131+t133;
dGrf_toe_c2_dq1 = [t15.*t130.*(k.*t122.*t123.*2.0+cmax.*t19.*t121.*t123+cmax.*t19.*t122.*(t85+t91+t106+t107+t113+qd_t1.*(t47+t110)))+cmax.*t15.*t19.*t20.*t114.*t122.*t130.*2.0;t15.*t130.*(k.*t120.*t122.*2.0+cmax.*t19.*t120.*t121+cmax.*t19.*t122.*(t85+t91+t106+t107+t113+qd_t1.*t110))+cmax.*t15.*t19.*t20.*t111.*t122.*t130.*2.0;t134;t134;t15.*t130.*(k.*t117.*t122.*2.0+cmax.*t19.*t122.*(t85+t91+qd_t1.*t89+qd_t2.*t89+qd_t3.*t89+qd_t4.*t89)+cmax.*t19.*t117.*t121)+cmax.*t15.*t19.*t20.*t88.*t122.*t130.*2.0;t15.*t130.*(k.*t116.*t122.*2.0+cmax.*t19.*t116.*t121+cmax.*t19.*t122.*(t85+qd_t1.*t83+qd_t2.*t83+qd_t3.*t83+qd_t4.*t83+qd_t5.*t83))+(cmax.*t15.*t19.*t20.*t57.*t63.*t122.*t130)./5.62949953421312e+18];
