function Tau_toe = Tau_toe(in1,in2,Fx,H,k,cmax,dmax,sampT)
%TAU_TOE
%    TAU_TOE = TAU_TOE(IN1,IN2,FX,H,K,CMAX,DMAX,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    26-Jan-2021 13:16:07

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
t54 = atan(4.618051608502899e-1);
t55 = atan(2.165415384615384);
t56 = 4.451149643825727e+17;
t15 = cos(t14);
t17 = sin(t14);
t19 = t2.*t3;
t20 = t2.*t9;
t21 = t3.*t8;
t22 = q_t3+q_t4+t14;
t23 = t8.*t9;
t31 = t2.*4.182e-1;
t32 = t8.*4.182e-1;
t57 = -t55;
t24 = cos(t22);
t25 = q_t5+t22;
t26 = sin(t22);
t28 = -t23;
t30 = t20+t21;
t34 = t15.*4.165e-1;
t35 = t17.*4.165e-1;
t36 = t20.*4.165e-1;
t37 = t21.*4.165e-1;
t27 = sin(t25);
t29 = cos(t25);
t33 = t19+t28;
t38 = t4.*t30;
t39 = t10.*t30;
t43 = t24.*4.165e-1;
t44 = t26.*4.165e-1;
t60 = q_t6+t25+t54;
t62 = q_t6+t25+t57;
t40 = t4.*t33;
t41 = t10.*t33;
t42 = -t39;
t45 = t29.*4.182e-1;
t46 = t27.*4.182e-1;
t61 = cos(t60);
t63 = cos(t62);
t47 = t38+t41;
t48 = t40+t42;
t51 = -t5.*(t39-t40);
t52 = -t11.*(t39-t40);
t59 = t11.*(t39-t40).*(-4.165e-1);
t73 = (t56.*t61)./2.81474976710656e+18;
t75 = (t56.*t63)./2.81474976710656e+18;
t49 = t5.*t47;
t50 = t11.*t47;
t74 = qd_t6.*t73;
t76 = t45+t73;
t81 = t44+t46+t75;
t53 = -t50;
t58 = t49.*4.165e-1;
t64 = t49+t52;
t68 = -t6.*(t50+t5.*(t39-t40));
t69 = -t12.*(t50+t5.*(t39-t40));
t72 = t12.*(t50+t5.*(t39-t40)).*(-4.182e-1);
t77 = qd_t5.*t76;
t78 = t43+t76;
t82 = Fx.*t81;
t65 = t51+t53;
t66 = t6.*t64;
t67 = t12.*t64;
t79 = qd_t3.*t78;
t80 = qd_t4.*t78;
t83 = -t82;
t86 = t34+t78;
t70 = -t67;
t71 = t66.*4.182e-1;
t84 = t66+t69;
t87 = qd_t2.*t86;
t90 = t7.*(t67+t6.*(t50+t5.*(t39-t40))).*(-6.63e-2);
t91 = t31+t86;
t94 = t13.*(t67+t6.*(t50+t5.*(t39-t40))).*(-1.4356704e-1);
t85 = t68+t70;
t88 = t13.*t84.*6.63e-2;
t92 = qd_t1.*t91;
t93 = t7.*t84.*1.4356704e-1;
t89 = -t88;
t95 = t74+t77+t79+t80+t87+t92;
t96 = t16+t32+t36+t37+t58+t59+t71+t72+t89+t90+t93+t94;
t97 = t96.^2;
t99 = cmax.*t18.*t95.*t96;
t98 = k.*t97;
t100 = t98+t99;
t101 = t78.*t100;
t102 = t83+t101;
Tau_toe = [t91.*t100-Fx.*(t32+t35+t81);t86.*t100-Fx.*(t35+t81);t102;t102;t76.*t100-Fx.*(t46+t75);t73.*t100-(Fx.*t56.*t63)./2.81474976710656e+18];
