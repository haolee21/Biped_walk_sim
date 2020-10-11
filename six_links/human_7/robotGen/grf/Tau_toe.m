function Tau_toe = Tau_toe(in1,in2,Fx,H,k,cmax,dmax,sampT)
%TAU_TOE
%    TAU_TOE = TAU_TOE(IN1,IN2,FX,H,K,CMAX,DMAX,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    04-Oct-2020 16:29:55

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
t15 = cos(t14);
t17 = sin(t14);
t19 = t2.*t3;
t20 = t2.*t9;
t21 = t3.*t8;
t22 = q_t3+q_t4+t14;
t23 = t8.*t9;
t44 = t2.*4.60062e-1;
t45 = t8.*4.60062e-1;
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
t50 = t24.*4.453122e-1;
t51 = t26.*4.453122e-1;
t52 = q_t6+t25-1.092654576325972;
t53 = q_t6+t25+4.781417504689244e-1;
t34 = t4.*t31;
t35 = t10.*t31;
t36 = -t33;
t54 = t29.*4.60062e-1;
t55 = cos(t52);
t56 = t27.*4.60062e-1;
t57 = cos(t53);
t37 = t32+t35;
t38 = t34+t36;
t41 = -t5.*(t33-t34);
t42 = -t11.*(t33-t34);
t59 = t11.*(t33-t34).*(-4.453122e-1);
t67 = t55.*1.690282735215953e-1;
t68 = t57.*1.690282735215953e-1;
t39 = t5.*t37;
t40 = t11.*t37;
t69 = qd_t6.*t68;
t72 = t54+t68;
t77 = t51+t56+t67;
t43 = -t40;
t58 = t39.*4.453122e-1;
t60 = t39+t42;
t64 = -t6.*(t40+t5.*(t33-t34));
t65 = -t12.*(t40+t5.*(t33-t34));
t71 = t12.*(t40+t5.*(t33-t34)).*(-4.60062e-1);
t73 = qd_t5.*t72;
t76 = t50+t72;
t78 = Fx.*t77;
t61 = t41+t43;
t62 = t6.*t60;
t63 = t12.*t60;
t79 = qd_t3.*t76;
t80 = qd_t4.*t76;
t82 = -t78;
t87 = t46+t76;
t66 = -t63;
t70 = t62.*4.60062e-1;
t74 = t62+t65;
t84 = t7.*(t63+t6.*(t40+t5.*(t33-t34))).*(-7.7775e-2);
t86 = t13.*(t63+t6.*(t40+t5.*(t33-t34))).*(-1.500720048e-1);
t88 = qd_t2.*t87;
t89 = t44+t87;
t75 = t64+t66;
t81 = t13.*t74.*7.7775e-2;
t85 = t7.*t74.*1.500720048e-1;
t90 = qd_t1.*t89;
t83 = -t81;
t91 = t69+t73+t79+t80+t88+t90;
t92 = t16+t45+t48+t49+t58+t59+t70+t71+t83+t84+t85+t86;
t93 = t92.^2;
t95 = cmax.*t18.*t91.*t92;
t94 = k.*t93;
t96 = t94+t95;
t97 = t76.*t96;
t98 = t82+t97;
Tau_toe = [t89.*t96-Fx.*(t45+t47+t77);t87.*t96-Fx.*(t47+t77);t98;t98;t72.*t96-Fx.*(t56+t67);Fx.*t55.*(-1.690282735215953e-1)+t68.*t96];
