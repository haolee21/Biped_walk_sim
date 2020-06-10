function dFs_heel2_s = dFs_heel2_s(in1,th)
%DFS_HEEL2_S
%    DFS_HEEL2_S = DFS_HEEL2_S(IN1,TH)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    09-Jun-2020 12:18:07

q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
q6 = in1(:,6);
qd1 = in1(:,7);
qd2 = in1(:,8);
qd3 = in1(:,9);
qd4 = in1(:,10);
qd5 = in1(:,11);
qd6 = in1(:,12);
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
t13 = cos(t12);
t14 = sin(t12);
t15 = t2.*t3;
t16 = t2.*t8;
t17 = t3.*t7;
t18 = q3+q4+t12;
t19 = t7.*t8;
t28 = t7.*4.5252e-1;
t20 = cos(t18);
t21 = q5+t18;
t22 = sin(t18);
t24 = -t19;
t26 = t16+t17;
t31 = -t28;
t45 = t15.*4.38012e-1;
t46 = t14.*4.38012e-1;
t47 = t16.*4.38012e-1;
t48 = t17.*4.38012e-1;
t49 = t19.*4.38012e-1;
t53 = t13.*5.256144e+2;
t23 = sin(t21);
t25 = cos(t21);
t27 = t15+t24;
t29 = t4.*t26;
t30 = t9.*t26;
t50 = -t47;
t51 = -t48;
t52 = -t49;
t54 = t22.*4.38012e-1;
t55 = q6+t21+3.902467605501841e-1;
t57 = -t53;
t59 = t20.*5.256144e+2;
t32 = t4.*t27;
t33 = t9.*t27;
t34 = -t30;
t35 = t25.*5.43024e+2;
t37 = t23.*4.5252e-1;
t56 = sin(t55);
t58 = cos(t55);
t60 = -t59;
t36 = -t35;
t38 = t29+t33;
t39 = t32+t34;
t42 = -t5.*(t30-t32);
t43 = -t10.*(t30-t32);
t65 = t5.*(t30-t32).*(-4.38012e-1);
t66 = t10.*(t30-t32).*(-4.38012e-1);
t67 = t5.*(t30-t32).*4.38012e-1;
t68 = t10.*(t30-t32).*4.38012e-1;
t71 = t58.*2.413143686344433e+2;
t72 = qd6.*t56.*2.413143686344433e+2;
t73 = t56.*2.010953071953694e-1;
t40 = t5.*t38;
t41 = t10.*t38;
t74 = -t71;
t83 = t37+t73;
t44 = -t41;
t61 = t40.*4.38012e-1;
t62 = t41.*4.38012e-1;
t69 = t40+t43;
t79 = t11.*(t41+t5.*(t30-t32)).*(-5.2902e-1);
t80 = t6.*(t41+t5.*(t30-t32)).*(-5.2902e-1);
t81 = t11.*(t41+t5.*(t30-t32)).*5.2902e-1;
t82 = t6.*(t41+t5.*(t30-t32)).*5.2902e-1;
t84 = qd5.*t83.*1.2e+3;
t85 = t54+t83;
t86 = t36+t60+t74;
t63 = -t61;
t64 = -t62;
t70 = t42+t44;
t75 = t11.*t69.*5.2902e-1;
t76 = t6.*t69.*5.2902e-1;
t87 = qd1.*t85.*1.2e+3;
t88 = qd2.*t85.*1.2e+3;
t89 = qd3.*t85.*1.2e+3;
t90 = qd4.*t85.*1.2e+3;
t91 = t46+t85;
t77 = -t75;
t78 = -t76;
t92 = qd2.*t91.*1.2e+3;
t93 = t62+t67+t75+t82;
t94 = t31+t50+t51+t63+t68+t78+t81+th;
t95 = t94.^(6.0./5.0);
t96 = t93.*t95.*1.76e+7;
t97 = t72+t84+t87+t88+t89+t90+t96;
dFs_heel2_s = [t72+t84+t89+t90+t92+qd1.*(t28+t91).*1.2e+3-t95.*(t2.*4.5252e-1+t45-t49-t93).*1.76e+7;t72+t84+t89+t90+t92+qd1.*t91.*1.2e+3+t95.*(-t45+t49+t93).*1.76e+7;t97;t97;t72+t84+t95.*(t75+t82).*1.76e+7+qd1.*t83.*1.2e+3+qd2.*t83.*1.2e+3+qd3.*t83.*1.2e+3+qd4.*t83.*1.2e+3;t72+qd1.*t56.*2.413143686344433e+2+qd2.*t56.*2.413143686344433e+2+qd3.*t56.*2.413143686344433e+2+qd4.*t56.*2.413143686344433e+2+qd5.*t56.*2.413143686344433e+2;t2.*(-5.43024e+2)+t57+t86;t57+t86;t86;t86;t36+t74;t74];
