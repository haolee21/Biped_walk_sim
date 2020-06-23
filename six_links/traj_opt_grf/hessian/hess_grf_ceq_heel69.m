function out1 = hess_grf_ceq_heel69(in1,toe_th,dmax,cmax,k,us,ud)
%HESS_GRF_CEQ_HEEL69
%    OUT1 = HESS_GRF_CEQ_HEEL69(IN1,TOE_TH,DMAX,CMAX,K,US,UD)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    23-Jun-2020 09:59:12

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
t15 = toe_th.*2.0;
t17 = 1.0./dmax;
t18 = -toe_th;
t25 = toe_th.*4.0e+2;
t16 = sin(t14);
t19 = -t15;
t20 = t2.*t3;
t21 = t2.*t9;
t22 = t3.*t8;
t23 = q3+q4+t14;
t24 = t8.*t9;
t29 = -t25;
t36 = t8.*1.81008e+2;
t38 = t8.*9.0504e-1;
t39 = t8.*4.5252e-1;
t26 = cos(t23);
t27 = q5+t23;
t28 = sin(t23);
t32 = -t24;
t35 = t21+t22;
t56 = t21.*1.752048e+2;
t57 = t22.*1.752048e+2;
t58 = t16.*8.76024e-1;
t59 = t21.*4.38012e-1;
t60 = t22.*4.38012e-1;
t30 = q6+t27;
t31 = sin(t27);
t33 = cos(t27);
t37 = t20+t32;
t40 = t4.*t35;
t41 = t10.*t35;
t62 = t26.*4.38012e-1;
t63 = t28.*8.76024e-1;
t34 = sin(t30);
t42 = t4.*t37;
t43 = t10.*t37;
t44 = -t41;
t45 = t33.*4.5252e-1;
t46 = t31.*9.0504e-1;
t61 = t30-1.290439793566535;
t47 = t34.*4.5252e-1;
t49 = t40+t43;
t50 = t42+t44;
t53 = -t5.*(t41-t42);
t54 = -t11.*(t41-t42);
t64 = cos(t61);
t66 = t11.*(t41-t42).*(-1.752048e+2);
t68 = t11.*(t41-t42).*(-4.38012e-1);
t48 = -t47;
t51 = t5.*t49;
t52 = t11.*t49;
t75 = t64.*5.529488670754286e-1;
t55 = -t52;
t65 = t51.*1.752048e+2;
t67 = t51.*4.38012e-1;
t69 = t51+t54;
t73 = -t12.*(t52+t5.*(t41-t42));
t74 = -t6.*(t52+t5.*(t41-t42));
t76 = t6.*(t52+t5.*(t41-t42));
t77 = t45+t48+t62;
t79 = t12.*(t52+t5.*(t41-t42)).*(-1.81008e+2);
t81 = t12.*(t52+t5.*(t41-t42)).*(-4.5252e-1);
t92 = t19+t38+t46+t58+t63+t75;
t70 = t53+t55;
t71 = t12.*t69;
t72 = t6.*t69;
t93 = t17.*t92;
t78 = t72.*1.81008e+2;
t80 = t72.*4.5252e-1;
t82 = t72+t73;
t83 = t71+t76;
t94 = tanh(t93);
t84 = t13.*t82.*(1.53e+2./5.0);
t86 = t7.*t83.*(1.53e+2./5.0);
t88 = t13.*t82.*7.65e-2;
t90 = t7.*t83.*7.65e-2;
t95 = t94./2.0;
t85 = -t84;
t87 = -t86;
t89 = -t88;
t91 = -t90;
t96 = t95-1.0./2.0;
t97 = t29+t36+t56+t57+t65+t66+t78+t79+t85+t87;
t99 = t18+t39+t59+t60+t67+t68+t80+t81+t89+t91;
t98 = tanh(t97);
out1 = (t98./2.0-1.0./2.0).*(cmax.*t17.*t77.*t96.*(t7.*t82.*7.65e-2-t13.*t83.*7.65e-2)+cmax.*t17.*t96.*t99.*cos(t30).*4.5252e-1-cmax.*t17.^2.*t77.*t99.*sin(t61).*(t94.^2-1.0).*2.764744335377143e-1)-(cmax.*t17.*t77.*t96.*t99.*(t98.^2-1.0).*(t7.*t82.*(1.53e+2./5.0)-t13.*t83.*(1.53e+2./5.0)))./2.0;
