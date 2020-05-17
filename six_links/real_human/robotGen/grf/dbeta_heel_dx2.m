function dbeta_heel_dx2 = dbeta_heel_dx2(in1,th)
%DBETA_HEEL_DX2
%    DBETA_HEEL_DX2 = DBETA_HEEL_DX2(IN1,TH)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    16-May-2020 14:45:33

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
t7 = sin(q1);
t8 = sin(q2);
t9 = sin(q3);
t10 = sin(q4);
t11 = sin(q5);
t12 = q1+q2;
t20 = th.*4.0e+2;
t22 = sqrt(2.9e+1);
t13 = cos(t12);
t14 = sin(t12);
t15 = t2.*t3;
t16 = t2.*t8;
t17 = t3.*t7;
t18 = q3+q4+t12;
t19 = t7.*t8;
t21 = t7.*1.72e+2;
t26 = -t20;
t23 = cos(t18);
t24 = q5+t18;
t25 = sin(t18);
t28 = -t19;
t30 = t13.*(2.0./5.0);
t31 = t15.*1.6e+2;
t32 = t14.*(2.0./5.0);
t33 = t16.*1.6e+2;
t34 = t17.*1.6e+2;
t35 = t19.*1.6e+2;
t39 = t16+t17;
t27 = sin(t24);
t29 = cos(t24);
t36 = -t35;
t37 = t23.*(2.0./5.0);
t38 = t25.*(2.0./5.0);
t40 = t15+t28;
t43 = t4.*t39;
t44 = t9.*t39;
t60 = q6+t24-1.307801595113977;
t61 = q6+t24+2.629947316809195e-1;
t41 = t29.*(4.3e+1./1.0e+2);
t42 = t27.*(4.3e+1./1.0e+2);
t45 = t4.*t40;
t46 = t9.*t40;
t47 = -t44;
t62 = cos(t61);
t63 = sin(t61);
t48 = t43+t46;
t49 = t45+t47;
t52 = -t5.*(t44-t45);
t53 = -t10.*(t44-t45);
t58 = t5.*(t44-t45).*-1.6e+2;
t59 = t10.*(t44-t45).*-1.6e+2;
t64 = (t22.*t62)./2.0e+1;
t65 = (t22.*t63)./2.0e+1;
t50 = t5.*t48;
t51 = t10.*t48;
t66 = t41+t64;
t67 = t42+t65;
t54 = -t51;
t55 = t50.*1.6e+2;
t56 = t51.*1.6e+2;
t68 = t50+t53;
t73 = t37+t66;
t74 = t38+t67;
t75 = t11.*(t51+t5.*(t44-t45)).*-2.0e+2;
t76 = t6.*(t51+t5.*(t44-t45)).*-2.0e+2;
t57 = -t56;
t69 = t52+t54;
t70 = t11.*t68.*2.0e+2;
t71 = t6.*t68.*2.0e+2;
t77 = t30+t73;
t78 = t32+t74;
t72 = -t70;
t80 = t21+t26+t33+t34+t55+t59+t71+t75;
t79 = t31+t36+t57+t58+t72+t76;
t81 = tanh(t80);
t82 = t81.^2;
t83 = t81./2.0;
t84 = t82-1.0;
t85 = t83-1.0./2.0;
t86 = t73.*t85;
t87 = t74.*t85;
t88 = t77.*t85;
t89 = t78.*t85;
t90 = t73.*t84.*(-t31+t35+t56+t70+t6.*(t51+t5.*(t44-t45)).*2.0e+2+t5.*(t44-t45).*1.6e+2).*(-1.0./2.0);
t91 = t74.*t84.*(-t31+t35+t56+t70+t6.*(t51+t5.*(t44-t45)).*2.0e+2+t5.*(t44-t45).*1.6e+2).*(-1.0./2.0);
t92 = (t74.*t84.*(-t31+t35+t56+t70+t6.*(t51+t5.*(t44-t45)).*2.0e+2+t5.*(t44-t45).*1.6e+2))./2.0;
t93 = t87+t90;
t94 = t86+t92;
dbeta_heel_dx2 = reshape([t88+(t84.*(t7.*(4.3e+1./1.0e+2)+t78).*(-t31+t35+t56+t70+t6.*(t51+t5.*(t44-t45)).*2.0e+2+t5.*(t44-t45).*1.6e+2))./2.0,t88+(t78.*t84.*(-t31+t35+t56+t70+t6.*(t51+t5.*(t44-t45)).*2.0e+2+t5.*(t44-t45).*1.6e+2))./2.0,t94,t94,t66.*t85+(t67.*t84.*(-t31+t35+t56+t70+t6.*(t51+t5.*(t44-t45)).*2.0e+2+t5.*(t44-t45).*1.6e+2))./2.0,t22.*t85.*sin(t60).*(-1.0./2.0e+1)+(t22.*t84.*cos(t60).*(-t31+t35+t56+t70+t6.*(t51+t5.*(t44-t45)).*2.0e+2+t5.*(t44-t45).*1.6e+2))./4.0e+1,t89-(t84.*(t2.*(4.3e+1./1.0e+2)+t77).*(-t31+t35+t56+t70+t6.*(t51+t5.*(t44-t45)).*2.0e+2+t5.*(t44-t45).*1.6e+2))./2.0,t89-(t77.*t84.*(-t31+t35+t56+t70+t6.*(t51+t5.*(t44-t45)).*2.0e+2+t5.*(t44-t45).*1.6e+2))./2.0,t93,t93,t67.*t85-(t66.*t84.*(-t31+t35+t56+t70+t6.*(t51+t5.*(t44-t45)).*2.0e+2+t5.*(t44-t45).*1.6e+2))./2.0,t65.*t85-(t22.*t62.*t84.*(-t31+t35+t56+t70+t6.*(t51+t5.*(t44-t45)).*2.0e+2+t5.*(t44-t45).*1.6e+2))./4.0e+1],[6,2]);
