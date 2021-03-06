function out1 = hess_grf_ceq_heel18(in1,toe_th,dmax,cmax,k,us,ud)
%HESS_GRF_CEQ_HEEL18
%    OUT1 = HESS_GRF_CEQ_HEEL18(IN1,TOE_TH,DMAX,CMAX,K,US,UD)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    23-Jun-2020 09:39:15

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
t39 = t8.*9.0504e-1;
t40 = t8.*4.5252e-1;
t27 = cos(t24);
t28 = q5+t24;
t29 = sin(t24);
t33 = -t25;
t36 = t22+t23;
t57 = t22.*1.752048e+2;
t58 = t23.*1.752048e+2;
t59 = t16.*4.38012e-1;
t60 = t17.*8.76024e-1;
t61 = t22.*4.38012e-1;
t62 = t23.*4.38012e-1;
t31 = q6+t28;
t32 = sin(t28);
t34 = cos(t28);
t38 = t21+t33;
t41 = t4.*t36;
t42 = t10.*t36;
t64 = t27.*4.38012e-1;
t65 = t29.*8.76024e-1;
t35 = sin(t31);
t43 = t4.*t38;
t44 = t10.*t38;
t45 = -t42;
t46 = t34.*4.5252e-1;
t47 = t32.*9.0504e-1;
t63 = t31-1.290439793566535;
t48 = t35.*4.5252e-1;
t50 = t41+t44;
t51 = t43+t45;
t54 = -t5.*(t42-t43);
t55 = -t11.*(t42-t43);
t66 = cos(t63);
t68 = t11.*(t42-t43).*(-1.752048e+2);
t70 = t11.*(t42-t43).*(-4.38012e-1);
t49 = -t48;
t52 = t5.*t50;
t53 = t11.*t50;
t77 = t66.*5.529488670754286e-1;
t56 = -t53;
t67 = t52.*1.752048e+2;
t69 = t52.*4.38012e-1;
t71 = t52+t55;
t75 = -t12.*(t53+t5.*(t42-t43));
t76 = -t6.*(t53+t5.*(t42-t43));
t78 = t6.*(t53+t5.*(t42-t43));
t80 = t12.*(t53+t5.*(t42-t43)).*(-1.81008e+2);
t82 = t12.*(t53+t5.*(t42-t43)).*(-4.5252e-1);
t83 = t46+t49+t59+t64;
t94 = t20+t39+t47+t60+t65+t77;
t72 = t54+t56;
t73 = t12.*t71;
t74 = t6.*t71;
t95 = t18.*t94;
t79 = t74.*1.81008e+2;
t81 = t74.*4.5252e-1;
t84 = t74+t75;
t85 = t73+t78;
t96 = tanh(t95);
t86 = t13.*t84.*(1.53e+2./5.0);
t88 = t7.*t85.*(1.53e+2./5.0);
t90 = t13.*t84.*7.65e-2;
t92 = t7.*t85.*7.65e-2;
t97 = t96./2.0;
t87 = -t86;
t89 = -t88;
t91 = -t90;
t93 = -t92;
t98 = t97-1.0./2.0;
t99 = t30+t37+t57+t58+t67+t68+t79+t80+t87+t89;
t101 = t19+t40+t61+t62+t69+t70+t81+t82+t91+t93;
t100 = tanh(t99);
out1 = (t100./2.0-1.0./2.0).*(cmax.*t18.*t98.*t101.*(t17.*4.38012e-1+t29.*4.38012e-1+t32.*4.5252e-1+cos(t31).*4.5252e-1)+cmax.*t18.*t83.*t98.*(t2.*(-4.5252e-1)-t21.*4.38012e-1+t25.*4.38012e-1+t53.*4.38012e-1+t73.*4.5252e-1+t78.*4.5252e-1+t7.*t84.*7.65e-2-t13.*t85.*7.65e-2+t5.*(t42-t43).*4.38012e-1)+(cmax.*t18.^2.*t83.*t101.*(t96.^2-1.0).*(t2.*9.0504e-1+t16.*8.76024e-1+t27.*8.76024e-1+t34.*9.0504e-1-sin(t63).*5.529488670754286e-1))./2.0)-(cmax.*t18.*t83.*t98.*t101.*(t100.^2-1.0).*(t2.*(-1.81008e+2)-t21.*1.752048e+2+t25.*1.752048e+2+t53.*1.752048e+2+t73.*1.81008e+2+t78.*1.81008e+2+t7.*t84.*(1.53e+2./5.0)-t13.*t85.*(1.53e+2./5.0)+t5.*(t42-t43).*1.752048e+2))./2.0;
