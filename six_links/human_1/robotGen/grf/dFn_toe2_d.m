function dFs_toe2_d = dFn_toe2_d(in1,th)
%DFN_TOE2_D
%    DFS_TOE2_D = DFN_TOE2_D(IN1,TH)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    05-Jun-2020 12:39:20

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
t3 = sin(q1);
t4 = q1+q2;
t13 = atan(3.472941176470588);
t14 = 1.535969075209524e+3;
t5 = cos(t4);
t6 = sin(t4);
t7 = q3+q4+t4;
t15 = t2.*1.35756e+2;
t16 = -t13;
t17 = t2.*4.5252e-1;
t18 = t3.*4.5252e-1;
t8 = cos(t7);
t9 = q5+t7;
t10 = sin(t7);
t19 = -t18;
t28 = t5.*4.38012e-1;
t29 = t6.*4.38012e-1;
t35 = t5.*1.314036e+2;
t11 = sin(t9);
t12 = cos(t9);
t23 = q6+t9+t16;
t30 = -t29;
t33 = q6+t9-1.290439793566535;
t34 = q6+t9+2.803565332283614e-1;
t36 = t8.*4.38012e-1;
t37 = t10.*4.38012e-1;
t45 = t8.*1.314036e+2;
t20 = t12.*1.35756e+2;
t21 = t12.*4.5252e-1;
t22 = t11.*4.5252e-1;
t24 = cos(t23);
t25 = sin(t23);
t40 = -t37;
t41 = cos(t33);
t42 = sin(t33);
t43 = cos(t34);
t44 = sin(t34);
t26 = -t21;
t27 = -t22;
t31 = t14.*t24.*1.8e-4;
t32 = t14.*t25.*1.8e-4;
t46 = t43.*8.294233006131429e+1;
t48 = qd6.*t44.*8.294233006131429e+1;
t49 = t41.*2.764744335377143e-1;
t50 = t42.*2.764744335377143e-1;
t51 = t43.*2.764744335377143e-1;
t52 = t44.*2.764744335377143e-1;
t56 = qd6.*t42.*(-2.764744335377143e-1);
t38 = -t31;
t39 = -t32;
t47 = qd6.*t46;
t53 = qd6.*t49;
t54 = qd6.*t50;
t55 = -t50;
t57 = t22+t49;
t58 = t21+t51;
t59 = t22+t52;
t60 = t26+t50;
t96 = t15+t20+t35+t45+t46;
t61 = qd5.*t57;
t62 = -qd5.*(t21+t55);
t63 = t21+t36+t39;
t64 = qd5.*(t21+t55);
t65 = qd5.*t58.*3.0e+2;
t66 = qd5.*t59.*3.0e+2;
t67 = t37+t59;
t68 = t37+t57;
t69 = t36+t58;
t70 = t21+t36+t55;
t83 = t19+t27+t30+t38+t40+th;
t71 = qd3.*t68;
t72 = qd4.*t68;
t73 = qd1.*t70;
t74 = qd2.*t70;
t75 = qd3.*t70;
t76 = qd4.*t70;
t77 = qd3.*t69.*3.0e+2;
t78 = qd4.*t69.*3.0e+2;
t79 = qd1.*t67.*3.0e+2;
t80 = qd2.*t67.*3.0e+2;
t81 = qd3.*t67.*3.0e+2;
t82 = qd4.*t67.*3.0e+2;
t84 = t83.^(6.0./5.0);
t85 = t83.^(1.1e+1./5.0);
t88 = t29+t68;
t89 = t28+t69;
t90 = t29+t67;
t91 = t28+t70;
t86 = t85.*4.0e+5;
t92 = qd2.*t88;
t93 = qd2.*t91;
t94 = qd2.*t89.*3.0e+2;
t95 = qd2.*t90.*3.0e+2;
t97 = t17+t89;
t98 = t18+t88;
t101 = t63.*t84.*8.8e+5;
t103 = t56+t64+t73+t74+t75+t76;
t87 = -t86;
t99 = qd1.*t98;
t100 = qd1.*t97.*3.0e+2;
t102 = -t101;
t104 = t53+t61+t71+t72+t92+t99;
t105 = t47+t65+t77+t78+t87+t94+t100;
t107 = t48+t66+t79+t80+t81+t82+t102;
t106 = t96.*t104;
t108 = t98.*t105;
t109 = t103.*t105;
t110 = t104.*t107;
t111 = -t110;
t112 = t106+t108;
t113 = t109+t111;
dFs_toe2_d = [-t104.*(t48+t66+t81+t82+t95+qd1.*(t18+t90).*3.0e+2-t84.*(t17+t28+t63).*8.8e+5)+t105.*(t56+t64+t75+t76+t93+qd1.*(t17+t91));t105.*(t56+t64+t75+t76+t93+qd1.*t91)-t104.*(t48+t66+t81+t82+t95-t84.*(t28+t63).*8.8e+5+qd1.*t90.*3.0e+2);t113;t113;-t104.*(t48+t66-t84.*(t21+t39).*8.8e+5+qd1.*t59.*3.0e+2+qd2.*t59.*3.0e+2+qd3.*t59.*3.0e+2+qd4.*t59.*3.0e+2)+t105.*(t56+t64+qd1.*(t21+t55)+qd2.*(t21+t55)+qd3.*(t21+t55)+qd4.*(t21+t55));-t104.*(t48+qd1.*t44.*8.294233006131429e+1+qd2.*t44.*8.294233006131429e+1+qd3.*t44.*8.294233006131429e+1+qd4.*t44.*8.294233006131429e+1+qd5.*t44.*8.294233006131429e+1+t14.*t25.*t84.*(7.92e+2./5.0))-t105.*(t54+qd1.*t50+qd2.*t50+qd3.*t50+qd4.*t50+qd5.*t50);t112;t112;t112;t112;t112;t112];
