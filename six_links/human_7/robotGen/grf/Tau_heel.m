function Tau_heel = Tau_heel(in1,in2,Fx,H,k,cmax,dmax,sampT)
%TAU_HEEL
%    TAU_HEEL = TAU_HEEL(IN1,IN2,FX,H,K,CMAX,DMAX,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    17-Oct-2020 02:55:34

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
t50 = atan(5.145162352941177e-1);
t51 = atan(1.943573266309781);
t56 = 7.878221328233238e+18;
t15 = cos(t14);
t17 = sin(t14);
t19 = t2.*t3;
t20 = t2.*t9;
t21 = t3.*t8;
t22 = q_t3+q_t4+t14;
t23 = t8.*t9;
t44 = t2.*4.60062e-1;
t45 = t8.*4.60062e-1;
t57 = -t51;
t24 = cos(t22);
t25 = q_t5+t22;
t26 = sin(t22);
t28 = -t23;
t30 = t20+t21;
t46 = t15.*4.453122e-1;
t47 = t17.*4.453122e-1;
t48 = t20.*4.453122e-1;
t49 = t21.*4.453122e-1;
t27 = sin(t25);
t29 = cos(t25);
t31 = t19+t28;
t32 = t4.*t30;
t33 = t10.*t30;
t52 = t24.*4.453122e-1;
t53 = t26.*4.453122e-1;
t58 = q_t6+t25+t50;
t60 = q_t6+t25+t57;
t34 = t4.*t31;
t35 = t10.*t31;
t36 = -t33;
t54 = t29.*4.60062e-1;
t55 = t27.*4.60062e-1;
t59 = cos(t58);
t61 = cos(t60);
t37 = t32+t35;
t38 = t34+t36;
t41 = -t5.*(t33-t34);
t42 = -t11.*(t33-t34);
t63 = t11.*(t33-t34).*(-4.453122e-1);
t73 = (t56.*t59)./9.007199254740992e+19;
t74 = (t56.*t61)./9.007199254740992e+19;
t77 = qd_t6.*t56.*t61.*(-1.110223024625157e-20);
t39 = t5.*t37;
t40 = t11.*t37;
t75 = qd_t6.*t74;
t76 = -t74;
t89 = t53+t55+t73;
t43 = -t40;
t62 = t39.*4.453122e-1;
t64 = t39+t42;
t68 = -t6.*(t40+t5.*(t33-t34));
t69 = -t12.*(t40+t5.*(t33-t34));
t72 = t12.*(t40+t5.*(t33-t34)).*(-4.60062e-1);
t80 = t54+t76;
t90 = Fx.*t89;
t65 = t41+t43;
t66 = t6.*t64;
t67 = t12.*t64;
t81 = qd_t5.*t80;
t91 = t52+t80;
t92 = -t90;
t70 = -t67;
t71 = t66.*4.60062e-1;
t78 = t66+t69;
t84 = t7.*(t67+t6.*(t40+t5.*(t33-t34))).*(-7.7775e-2);
t87 = t13.*(t67+t6.*(t40+t5.*(t33-t34))).*(-4.001650020000001e-2);
t88 = t13.*(t67+t6.*(t40+t5.*(t33-t34))).*4.001650020000001e-2;
t93 = qd_t3.*t91;
t94 = qd_t4.*t91;
t95 = t46+t91;
t79 = t68+t70;
t82 = t13.*t78.*7.7775e-2;
t85 = t7.*t78.*4.001650020000001e-2;
t96 = qd_t2.*t95;
t97 = t44+t95;
t83 = -t82;
t86 = -t85;
t98 = qd_t1.*t97;
t99 = t16+t45+t48+t49+t62+t63+t71+t72+t83+t84+t86+t88;
t102 = t77+t81+t93+t94+t96+t98;
t100 = t99.^2;
t103 = cmax.*t18.*t99.*t102;
t101 = k.*t100;
t104 = t101+t103;
t105 = t91.*t104;
t106 = t92+t105;
Tau_heel = [t97.*t104-Fx.*(t45+t47+t89);t95.*t104-Fx.*(t47+t89);t106;t106;t80.*t104-Fx.*(t55+t73);Fx.*t56.*t59.*(-1.110223024625157e-20)-(t56.*t61.*t104)./9.007199254740992e+19];
