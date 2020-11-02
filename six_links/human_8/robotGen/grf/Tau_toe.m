function Tau_toe = Tau_toe(in1,in2,Fx,H,k,cmax,dmax,sampT)
%TAU_TOE
%    TAU_TOE = TAU_TOE(IN1,IN2,FX,H,K,CMAX,DMAX,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    30-Oct-2020 13:39:49

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
t50 = atan(5.18251222829003e-1);
t51 = atan(1.929566117647059);
t52 = 1.903089174117337e+18;
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
t53 = t24.*4.453122e-1;
t54 = t26.*4.453122e-1;
t58 = q_t6+t25+t50;
t60 = q_t6+t25+t57;
t34 = t4.*t31;
t35 = t10.*t31;
t36 = -t33;
t55 = t29.*4.60062e-1;
t56 = t27.*4.60062e-1;
t59 = cos(t58);
t61 = cos(t60);
t37 = t32+t35;
t38 = t34+t36;
t41 = -t5.*(t33-t34);
t42 = -t11.*(t33-t34);
t63 = t11.*(t33-t34).*(-4.453122e-1);
t73 = (t52.*t59)./1.125899906842624e+19;
t75 = (t52.*t61)./1.125899906842624e+19;
t39 = t5.*t37;
t40 = t11.*t37;
t74 = qd_t6.*t73;
t78 = t55+t73;
t88 = t54+t56+t75;
t43 = -t40;
t62 = t39.*4.453122e-1;
t64 = t39+t42;
t68 = -t6.*(t40+t5.*(t33-t34));
t69 = -t12.*(t40+t5.*(t33-t34));
t72 = t12.*(t40+t5.*(t33-t34)).*(-4.60062e-1);
t79 = qd_t5.*t78;
t85 = t53+t78;
t89 = Fx.*t88;
t65 = t41+t43;
t66 = t6.*t64;
t67 = t12.*t64;
t86 = qd_t3.*t85;
t87 = qd_t4.*t85;
t90 = -t89;
t91 = t46+t85;
t70 = -t67;
t71 = t66.*4.60062e-1;
t76 = t66+t69;
t82 = t7.*(t67+t6.*(t40+t5.*(t33-t34))).*(-7.7775e-2);
t84 = t13.*(t67+t6.*(t40+t5.*(t33-t34))).*(-1.500720048e-1);
t92 = qd_t2.*t91;
t93 = t44+t91;
t77 = t68+t70;
t80 = t13.*t76.*7.7775e-2;
t83 = t7.*t76.*1.500720048e-1;
t94 = qd_t1.*t93;
t81 = -t80;
t95 = t74+t79+t86+t87+t92+t94;
t96 = t16+t45+t48+t49+t62+t63+t71+t72+t81+t82+t83+t84;
t97 = t96.^2;
t99 = cmax.*t18.*t95.*t96;
t98 = k.*t97;
t100 = t98+t99;
t101 = t85.*t100;
t102 = t90+t101;
Tau_toe = [t93.*t100-Fx.*(t45+t47+t88);t91.*t100-Fx.*(t47+t88);t102;t102;t78.*t100-Fx.*(t56+t75);t73.*t100-(Fx.*t52.*t61)./1.125899906842624e+19];
