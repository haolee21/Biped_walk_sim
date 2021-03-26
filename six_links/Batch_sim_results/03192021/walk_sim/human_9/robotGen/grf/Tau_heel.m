function Tau_heel = Tau_heel(in1,in2,Fx,H,k,cmax,dmax,sampT)
%TAU_HEEL
%    TAU_HEEL = TAU_HEEL(IN1,IN2,FX,H,K,CMAX,DMAX,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    30-Jan-2021 00:30:31

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
t16 = -H;
t18 = 1.0./dmax;
t54 = atan(5.774051282051283e-1);
t55 = 1.546478599905513e+18;
t15 = cos(t14);
t17 = sin(t14);
t19 = t2.*t3;
t20 = t2.*t9;
t21 = t3.*t8;
t22 = q_t3+q_t4+t14;
t23 = t8.*t9;
t32 = t2.*4.5018e-1;
t33 = t8.*4.5018e-1;
t24 = cos(t22);
t25 = q_t5+t22;
t26 = sin(t22);
t28 = -t23;
t30 = t20+t21;
t36 = t15.*4.4835e-1;
t37 = t17.*4.4835e-1;
t38 = t20.*4.4835e-1;
t39 = t21.*4.4835e-1;
t27 = sin(t25);
t29 = cos(t25);
t31 = t19+t28;
t34 = t4.*t30;
t35 = t10.*t30;
t43 = t24.*4.4835e-1;
t44 = t26.*4.4835e-1;
t58 = q_t6+t25+t54;
t40 = t4.*t31;
t41 = t10.*t31;
t42 = -t35;
t45 = t29.*4.5018e-1;
t46 = t27.*4.5018e-1;
t59 = cos(t58);
t60 = sin(t58);
t47 = t34+t41;
t48 = t40+t42;
t51 = -t5.*(t35-t40);
t52 = -t11.*(t35-t40);
t57 = t11.*(t35-t40).*(-4.4835e-1);
t70 = t55.*t59.*5.329070518200751e-20;
t71 = t55.*t60.*5.329070518200751e-20;
t74 = qd_t6.*t55.*t60.*(-5.329070518200751e-20);
t49 = t5.*t47;
t50 = t11.*t47;
t72 = -t71;
t73 = qd_t6.*t71;
t77 = t44+t46+t70;
t53 = -t50;
t56 = t49.*4.4835e-1;
t61 = t49+t52;
t65 = -t6.*(t50+t5.*(t35-t40));
t66 = -t12.*(t50+t5.*(t35-t40));
t69 = t12.*(t50+t5.*(t35-t40)).*(-4.5018e-1);
t75 = t45+t72;
t80 = Fx.*t77;
t62 = t51+t53;
t63 = t6.*t61;
t64 = t12.*t61;
t76 = qd_t5.*t75;
t78 = t43+t75;
t84 = -t80;
t67 = -t64;
t68 = t63.*4.5018e-1;
t79 = t63+t66;
t82 = qd_t3.*t78;
t83 = qd_t4.*t78;
t87 = t36+t78;
t88 = t7.*(t64+t6.*(t50+t5.*(t35-t40))).*(-7.137e-2);
t94 = t13.*(t64+t6.*(t50+t5.*(t35-t40))).*(-4.120940400000001e-2);
t95 = t13.*(t64+t6.*(t50+t5.*(t35-t40))).*4.120940400000001e-2;
t81 = t65+t67;
t85 = t13.*t79.*7.137e-2;
t89 = qd_t2.*t87;
t90 = t32+t87;
t92 = t7.*t79.*4.120940400000001e-2;
t86 = -t85;
t91 = qd_t1.*t90;
t93 = -t92;
t96 = t74+t76+t82+t83+t89+t91;
t97 = t16+t33+t38+t39+t56+t57+t68+t69+t86+t88+t93+t95;
t98 = t97.^2;
t100 = cmax.*t18.*t96.*t97;
t99 = k.*t98;
t101 = t99+t100;
t102 = t78.*t101;
t103 = t84+t102;
Tau_heel = [t90.*t101-Fx.*(t33+t37+t77);t87.*t101-Fx.*(t37+t77);t103;t103;t75.*t101-Fx.*(t46+t70);Fx.*t55.*t59.*(-5.329070518200751e-20)-t55.*t60.*t101.*5.329070518200751e-20];
