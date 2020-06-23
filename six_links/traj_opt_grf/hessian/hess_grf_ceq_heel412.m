function out1 = hess_grf_ceq_heel412(in1,toe_th,dmax,cmax,k,us,ud)
%HESS_GRF_CEQ_HEEL412
%    OUT1 = HESS_GRF_CEQ_HEEL412(IN1,TOE_TH,DMAX,CMAX,K,US,UD)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    23-Jun-2020 09:49:44

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
t28 = -t25;
t34 = t8.*1.81008e+2;
t36 = t8.*9.0504e-1;
t37 = t8.*4.5252e-1;
t26 = q5+t23;
t27 = sin(t23);
t31 = -t24;
t33 = t21+t22;
t51 = t21.*1.752048e+2;
t52 = t22.*1.752048e+2;
t53 = t16.*8.76024e-1;
t54 = t21.*4.38012e-1;
t55 = t22.*4.38012e-1;
t29 = q6+t26;
t30 = sin(t26);
t35 = t20+t31;
t38 = t4.*t33;
t39 = t10.*t33;
t57 = t27.*8.76024e-1;
t32 = sin(t29);
t40 = t4.*t35;
t41 = t10.*t35;
t42 = -t39;
t43 = t30.*9.0504e-1;
t56 = t29-1.290439793566535;
t44 = t38+t41;
t45 = t40+t42;
t48 = -t5.*(t39-t40);
t49 = -t11.*(t39-t40);
t58 = cos(t56);
t60 = t11.*(t39-t40).*(-1.752048e+2);
t62 = t11.*(t39-t40).*(-4.38012e-1);
t46 = t5.*t44;
t47 = t11.*t44;
t69 = t58.*5.529488670754286e-1;
t50 = -t47;
t59 = t46.*1.752048e+2;
t61 = t46.*4.38012e-1;
t63 = t46+t49;
t67 = -t12.*(t47+t5.*(t39-t40));
t68 = -t6.*(t47+t5.*(t39-t40));
t70 = t6.*(t47+t5.*(t39-t40));
t72 = t12.*(t47+t5.*(t39-t40)).*(-1.81008e+2);
t74 = t12.*(t47+t5.*(t39-t40)).*(-4.5252e-1);
t85 = t19+t36+t43+t53+t57+t69;
t64 = t48+t50;
t65 = t12.*t63;
t66 = t6.*t63;
t86 = t17.*t85;
t71 = t66.*1.81008e+2;
t73 = t66.*4.5252e-1;
t75 = t66+t67;
t76 = t65+t70;
t87 = tanh(t86);
t77 = t13.*t75.*(1.53e+2./5.0);
t79 = t7.*t76.*(1.53e+2./5.0);
t81 = t13.*t75.*7.65e-2;
t83 = t7.*t76.*7.65e-2;
t88 = t87./2.0;
t78 = -t77;
t80 = -t79;
t82 = -t81;
t84 = -t83;
t89 = t88-1.0./2.0;
t90 = t28+t34+t51+t52+t59+t60+t71+t72+t78+t80;
t92 = t18+t37+t54+t55+t61+t62+t73+t74+t82+t84;
t91 = tanh(t90);
out1 = -(t91./2.0-1.0./2.0).*(cmax.*t17.*t89.*t92.*cos(t29).*(-4.5252e-1)+cmax.*t17.*t32.*t89.*(t47.*4.38012e-1+t65.*4.5252e-1+t70.*4.5252e-1+t7.*t75.*7.65e-2-t13.*t76.*7.65e-2+t5.*(t39-t40).*4.38012e-1).*4.5252e-1+cmax.*t17.^2.*t32.*t92.*(t87.^2-1.0).*(cos(t23).*8.76024e-1+cos(t26).*9.0504e-1-sin(t56).*5.529488670754286e-1).*2.2626e-1)+cmax.*t17.*t32.*t89.*t92.*(t91.^2-1.0).*(t47.*1.752048e+2+t65.*1.81008e+2+t70.*1.81008e+2+t7.*t75.*(1.53e+2./5.0)-t13.*t76.*(1.53e+2./5.0)+t5.*(t39-t40).*1.752048e+2).*2.2626e-1;
