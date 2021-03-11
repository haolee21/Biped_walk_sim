function out1 = dL1_3(in1,in2,sampT)
%DL1_3
%    OUT1 = DL1_3(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    04-Feb-2021 02:45:31

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
t7 = sin(q_t1);
t8 = sin(q_t2);
t9 = sin(q_t3);
t10 = sin(q_t4);
t11 = sin(q_t5);
t12 = q_t1+q_t2;
t13 = q_t2+q_t3;
t14 = qd_t1.^2;
t15 = cos(t12);
t16 = sin(t12);
t17 = sin(t13);
t18 = t2.*t3;
t19 = t2.*t8;
t20 = t3.*t7;
t21 = q_t3+q_t4+t12;
t22 = t7.*t8;
t36 = qd_t1.*t2.*4.5018e-1;
t37 = qd_t1.*t7.*4.5018e-1;
t65 = qd_t1.*t2.*5.068576200624125e+19;
t66 = qd_t1.*t7.*5.068576200624125e+19;
t23 = cos(t21);
t24 = q_t5+t21;
t25 = sin(t21);
t28 = -t22;
t32 = t19+t20;
t41 = qd_t1.*t15.*4.4835e-1;
t42 = qd_t2.*t15.*4.4835e-1;
t43 = qd_t1.*t16.*4.4835e-1;
t44 = qd_t2.*t16.*4.4835e-1;
t67 = qd_t1.*t15.*5.047972232328905e+19;
t68 = qd_t2.*t15.*5.047972232328905e+19;
t69 = qd_t1.*t16.*5.047972232328905e+19;
t70 = qd_t2.*t16.*5.047972232328905e+19;
t26 = q_t6+t24;
t27 = sin(t24);
t29 = cos(t24);
t33 = t18+t28;
t34 = t4.*t32;
t35 = t9.*t32;
t45 = t23.*4.4835e-1;
t46 = t25.*4.4835e-1;
t71 = qd_t1.*t23.*2.185771976598416e+19;
t72 = qd_t2.*t23.*2.185771976598416e+19;
t73 = qd_t3.*t23.*2.185771976598416e+19;
t74 = qd_t4.*t23.*2.185771976598416e+19;
t75 = qd_t1.*t25.*2.185771976598416e+19;
t76 = qd_t2.*t25.*2.185771976598416e+19;
t77 = qd_t3.*t25.*2.185771976598416e+19;
t78 = qd_t4.*t25.*2.185771976598416e+19;
t30 = cos(t26);
t31 = sin(t26);
t38 = t4.*t33;
t39 = t9.*t33;
t40 = -t35;
t47 = qd_t1.*t45;
t48 = qd_t2.*t45;
t49 = qd_t3.*t45;
t50 = qd_t4.*t45;
t51 = qd_t1.*t46;
t52 = qd_t2.*t46;
t53 = qd_t3.*t46;
t54 = qd_t4.*t46;
t55 = qd_t1.*t29.*4.5018e-1;
t56 = qd_t2.*t29.*4.5018e-1;
t57 = qd_t3.*t29.*4.5018e-1;
t58 = qd_t4.*t29.*4.5018e-1;
t59 = qd_t5.*t29.*4.5018e-1;
t60 = qd_t1.*t27.*4.5018e-1;
t61 = qd_t2.*t27.*4.5018e-1;
t62 = qd_t3.*t27.*4.5018e-1;
t63 = qd_t4.*t27.*4.5018e-1;
t64 = qd_t5.*t27.*4.5018e-1;
t86 = qd_t1.*t29.*1.9492794e-1;
t87 = qd_t2.*t29.*1.9492794e-1;
t88 = qd_t3.*t29.*1.9492794e-1;
t89 = qd_t4.*t29.*1.9492794e-1;
t90 = qd_t5.*t29.*1.9492794e-1;
t91 = qd_t1.*t27.*1.9492794e-1;
t92 = qd_t2.*t27.*1.9492794e-1;
t93 = qd_t3.*t27.*1.9492794e-1;
t94 = qd_t4.*t27.*1.9492794e-1;
t95 = qd_t5.*t27.*1.9492794e-1;
t110 = t65+t67+t68+t71+t72+t73+t74;
t111 = t66+t69+t70+t75+t76+t77+t78;
t79 = t34+t39;
t80 = t38+t40;
t83 = -t5.*(t35-t38);
t84 = -t10.*(t35-t38);
t96 = qd_t1.*t30.*3.6063444e-2;
t97 = qd_t2.*t30.*3.6063444e-2;
t98 = qd_t3.*t30.*3.6063444e-2;
t99 = qd_t4.*t30.*3.6063444e-2;
t100 = qd_t5.*t30.*3.6063444e-2;
t101 = qd_t6.*t30.*3.6063444e-2;
t102 = qd_t1.*t31.*3.6063444e-2;
t103 = qd_t2.*t31.*3.6063444e-2;
t104 = qd_t3.*t31.*3.6063444e-2;
t105 = qd_t4.*t31.*3.6063444e-2;
t106 = qd_t5.*t31.*3.6063444e-2;
t107 = qd_t6.*t31.*3.6063444e-2;
t112 = t37+t43+t44+t51+t52+t53+t54+t91+t92+t93+t94+t95;
t113 = t36+t41+t42+t47+t48+t49+t50+t86+t87+t88+t89+t90;
t81 = t5.*t79;
t82 = t10.*t79;
t114 = t37+t43+t44+t51+t52+t53+t54+t60+t61+t62+t63+t64+t102+t103+t104+t105+t106+t107;
t115 = t36+t41+t42+t47+t48+t49+t50+t55+t56+t57+t58+t59+t96+t97+t98+t99+t100+t101;
t85 = -t82;
t108 = t81+t84;
t109 = t83+t85;
out1 = t35.*1.072403809535427e+2-t38.*1.072403809535427e+2+t82.*2.20258743453e+1+t111.*(t71+t72+t73+t74).*3.234329711406148e-40-t110.*(t75+t76+t77+t78).*3.234329711406148e-40-sin(q_t6).*(t11.*(t82+t5.*(t35-t38))-t6.*t108).*3.0823290348885e-1+t6.*(t82+t5.*(t35-t38)).*8.362955577818251+t112.*(t47+t48+t49+t50+t86+t87+t88+t89+t90).*2.36125-t113.*(t51+t52+t53+t54+t91+t92+t93+t94+t95).*2.36125-t9.*t14.*4.901246157035768-t14.*t17.*4.921251243391016+t11.*t108.*8.362955577818251-(qd_t1.*1.38525360927596e+1+qd_t2.*1.38525360927596e+1+qd_t3.*1.38525360927596e+1+qd_t4.*2.896782738879034e-1+qd_t5.*1.177080545281428e-1+qd_t6.*3.041931018393e-2+qd_t1.*t4.*9.802492314071536+qd_t2.*t4.*9.802492314071536+t23.*t110.*1.41390144925424e-20+t25.*t111.*1.41390144925424e-20+t114.*(t27.*4.5018e-1+t31.*3.6063444e-2+t46).*(6.97e+2./4.0e+2)+t115.*(t29.*4.5018e-1+t30.*3.6063444e-2+t45).*(6.97e+2./4.0e+2)+qd_t1.*cos(t13).*9.842502486782032+t112.*(t27.*1.9492794e-1+t46).*4.7225+t113.*(t29.*1.9492794e-1+t45).*4.7225)./sampT+t5.*(t35-t38).*2.20258743453e+1-qd_t2.^2.*t9.*4.901246157035768+cos(q_t6).*(t6.*(t82+t5.*(t35-t38))+t11.*t108).*3.0823290348885e-1+t114.*(t47+t48+t49+t50+t55+t56+t57+t58+t59+t96+t97+t98+t99+t100+t101).*(6.97e+2./8.0e+2)-t115.*(t51+t52+t53+t54+t60+t61+t62+t63+t64+t102+t103+t104+t105+t106+t107).*(6.97e+2./8.0e+2)-qd_t1.*qd_t2.*t9.*9.802492314071536-qd_t1.*qd_t3.*t9.*4.901246157035768-qd_t2.*qd_t3.*t9.*4.901246157035768-qd_t1.*qd_t2.*t17.*4.921251243391016-qd_t1.*qd_t3.*t17.*4.921251243391016;
