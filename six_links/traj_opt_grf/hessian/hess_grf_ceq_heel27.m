function out1 = hess_grf_ceq_heel27(in1,toe_th,dmax,cmax,k,us,ud)
%HESS_GRF_CEQ_HEEL27
%    OUT1 = HESS_GRF_CEQ_HEEL27(IN1,TOE_TH,DMAX,CMAX,K,US,UD)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    23-Jun-2020 11:01:02

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
t18 = 1.0./dmax;
t19 = -toe_th;
t26 = toe_th.*4.0e+2;
t16 = cos(t14);
t17 = sin(t14);
t20 = -t15;
t21 = t2.*t3;
t22 = t2.*t9;
t23 = t3.*t8;
t24 = q3+q4+t14;
t25 = t8.*t9;
t30 = -t26;
t37 = t8.*1.81008e+2;
t39 = t2.*4.5252e-1;
t40 = t8.*9.0504e-1;
t41 = t8.*4.5252e-1;
t27 = cos(t24);
t28 = q5+t24;
t29 = sin(t24);
t33 = -t25;
t36 = t22+t23;
t58 = t22.*1.752048e+2;
t59 = t23.*1.752048e+2;
t60 = t16.*4.38012e-1;
t61 = t17.*8.76024e-1;
t62 = t22.*4.38012e-1;
t63 = t23.*4.38012e-1;
t31 = q6+t28;
t32 = sin(t28);
t34 = cos(t28);
t38 = t21+t33;
t42 = t4.*t36;
t43 = t10.*t36;
t65 = t27.*4.38012e-1;
t66 = t29.*8.76024e-1;
t35 = sin(t31);
t44 = t4.*t38;
t45 = t10.*t38;
t46 = -t43;
t47 = t34.*4.5252e-1;
t48 = t32.*9.0504e-1;
t64 = t31-1.290439793566535;
t49 = t35.*4.5252e-1;
t51 = t42+t45;
t52 = t44+t46;
t55 = -t5.*(t43-t44);
t56 = -t11.*(t43-t44);
t67 = cos(t64);
t69 = t11.*(t43-t44).*(-1.752048e+2);
t71 = t11.*(t43-t44).*(-4.38012e-1);
t50 = -t49;
t53 = t5.*t51;
t54 = t11.*t51;
t78 = t67.*5.529488670754286e-1;
t57 = -t54;
t68 = t53.*1.752048e+2;
t70 = t53.*4.38012e-1;
t72 = t53+t56;
t76 = -t12.*(t54+t5.*(t43-t44));
t77 = -t6.*(t54+t5.*(t43-t44));
t79 = t6.*(t54+t5.*(t43-t44));
t81 = t12.*(t54+t5.*(t43-t44)).*(-1.81008e+2);
t83 = t12.*(t54+t5.*(t43-t44)).*(-4.5252e-1);
t84 = t39+t47+t50+t60+t65;
t95 = t20+t40+t48+t61+t66+t78;
t73 = t55+t57;
t74 = t12.*t72;
t75 = t6.*t72;
t96 = t18.*t95;
t80 = t75.*1.81008e+2;
t82 = t75.*4.5252e-1;
t85 = t75+t76;
t86 = t74+t79;
t97 = tanh(t96);
t87 = t13.*t85.*(1.53e+2./5.0);
t89 = t7.*t86.*(1.53e+2./5.0);
t91 = t13.*t85.*7.65e-2;
t93 = t7.*t86.*7.65e-2;
t98 = t97./2.0;
t88 = -t87;
t90 = -t89;
t92 = -t91;
t94 = -t93;
t99 = t98-1.0./2.0;
t100 = t30+t37+t58+t59+t68+t69+t80+t81+t88+t90;
t102 = t19+t41+t62+t63+t70+t71+t82+t83+t92+t94;
t101 = tanh(t100);
out1 = (t101./2.0-1.0./2.0).*(cmax.*t18.*t99.*t102.*(t17.*4.38012e-1+t29.*4.38012e-1+t32.*4.5252e-1+cos(t31).*4.5252e-1)+cmax.*t18.*t84.*t99.*(t21.*(-4.38012e-1)+t25.*4.38012e-1+t54.*4.38012e-1+t74.*4.5252e-1+t79.*4.5252e-1+t7.*t85.*7.65e-2-t13.*t86.*7.65e-2+t5.*(t43-t44).*4.38012e-1)+(cmax.*t18.^2.*t84.*t102.*(t97.^2-1.0).*(t16.*8.76024e-1+t27.*8.76024e-1+t34.*9.0504e-1-sin(t64).*5.529488670754286e-1))./2.0)-(cmax.*t18.*t84.*t99.*t102.*(t101.^2-1.0).*(t21.*(-1.752048e+2)+t25.*1.752048e+2+t54.*1.752048e+2+t74.*1.81008e+2+t79.*1.81008e+2+t7.*t85.*(1.53e+2./5.0)-t13.*t86.*(1.53e+2./5.0)+t5.*(t43-t44).*1.752048e+2))./2.0;
