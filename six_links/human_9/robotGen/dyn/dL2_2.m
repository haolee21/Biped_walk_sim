function out1 = dL2_2(in1,in2,sampT)
%DL2_2
%    OUT1 = DL2_2(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    15-Dec-2020 00:29:18

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
t13 = cos(t12);
t14 = q_t3+t12;
t15 = sin(t12);
t16 = t2.*t3;
t18 = t2.*t8;
t19 = t3.*t7;
t22 = t7.*t8;
t39 = qd_t1.*t2.*8.287740207069301e+15;
t40 = qd_t1.*t7.*8.287740207069301e+15;
t41 = qd_t1.*t2.*1.65754804141386e+16;
t42 = qd_t1.*t7.*1.65754804141386e+16;
t43 = qd_t1.*t2.*6.630192165655441e+16;
t45 = qd_t1.*t7.*6.630192165655441e+16;
t17 = cos(t14);
t20 = q_t4+t14;
t21 = sin(t14);
t28 = -t22;
t32 = t18+t19;
t44 = t13.*8.022031431934143e+15;
t46 = t15.*8.022031431934143e+15;
t51 = qd_t1.*t15.*1.604406286386829e+16;
t52 = qd_t2.*t15.*1.604406286386829e+16;
t53 = qd_t1.*t13.*6.417625145547314e+16;
t54 = qd_t2.*t13.*6.417625145547314e+16;
t55 = qd_t1.*t15.*6.417625145547314e+16;
t56 = qd_t2.*t15.*6.417625145547314e+16;
t63 = qd_t1.*t13.*1.604406286386829e+16;
t64 = qd_t2.*t13.*1.604406286386829e+16;
t23 = cos(t20);
t24 = q_t5+t20;
t25 = sin(t20);
t33 = t16+t28;
t34 = t4.*t32;
t35 = t9.*t32;
t47 = qd_t1.*t44;
t48 = qd_t2.*t44;
t49 = qd_t1.*t46;
t50 = qd_t2.*t46;
t57 = qd_t1.*t17.*7.197500932690077e+15;
t58 = qd_t2.*t17.*7.197500932690077e+15;
t59 = qd_t3.*t17.*7.197500932690077e+15;
t60 = qd_t1.*t21.*7.197500932690077e+15;
t61 = qd_t2.*t21.*7.197500932690077e+15;
t62 = qd_t3.*t21.*7.197500932690077e+15;
t26 = q_t6+t24;
t27 = sin(t24);
t29 = cos(t24);
t36 = t4.*t33;
t37 = t9.*t33;
t38 = -t35;
t65 = qd_t1.*t23.*3.473539610027484e+15;
t66 = qd_t2.*t23.*3.473539610027484e+15;
t67 = qd_t3.*t23.*3.473539610027484e+15;
t68 = qd_t4.*t23.*3.473539610027484e+15;
t69 = qd_t1.*t25.*3.473539610027484e+15;
t70 = qd_t2.*t25.*3.473539610027484e+15;
t71 = qd_t3.*t25.*3.473539610027484e+15;
t72 = qd_t4.*t25.*3.473539610027484e+15;
t73 = qd_t1.*t23.*6.417625145547314e+16;
t74 = qd_t2.*t23.*6.417625145547314e+16;
t75 = qd_t3.*t23.*6.417625145547314e+16;
t76 = qd_t4.*t23.*6.417625145547314e+16;
t77 = qd_t1.*t25.*6.417625145547314e+16;
t78 = qd_t2.*t25.*6.417625145547314e+16;
t79 = qd_t3.*t25.*6.417625145547314e+16;
t80 = qd_t4.*t25.*6.417625145547314e+16;
t81 = qd_t1.*t23.*1.604406286386829e+16;
t82 = qd_t2.*t23.*1.604406286386829e+16;
t83 = qd_t3.*t23.*1.604406286386829e+16;
t84 = qd_t4.*t23.*1.604406286386829e+16;
t85 = qd_t1.*t25.*1.604406286386829e+16;
t86 = qd_t2.*t25.*1.604406286386829e+16;
t87 = qd_t3.*t25.*1.604406286386829e+16;
t88 = qd_t4.*t25.*1.604406286386829e+16;
t130 = t39+t47+t48+t57+t58+t59;
t131 = t40+t49+t50+t60+t61+t62;
t30 = cos(t26);
t31 = sin(t26);
t89 = qd_t1.*t29.*7.177183019322015e+15;
t90 = qd_t2.*t29.*7.177183019322015e+15;
t91 = qd_t3.*t29.*7.177183019322015e+15;
t92 = qd_t4.*t29.*7.177183019322015e+15;
t93 = qd_t5.*t29.*7.177183019322015e+15;
t94 = qd_t1.*t27.*7.177183019322015e+15;
t95 = qd_t2.*t27.*7.177183019322015e+15;
t96 = qd_t3.*t27.*7.177183019322015e+15;
t97 = qd_t4.*t27.*7.177183019322015e+15;
t98 = qd_t5.*t27.*7.177183019322015e+15;
t111 = qd_t1.*t29.*6.630192165655441e+16;
t112 = qd_t2.*t29.*6.630192165655441e+16;
t113 = qd_t3.*t29.*6.630192165655441e+16;
t114 = qd_t4.*t29.*6.630192165655441e+16;
t115 = qd_t5.*t29.*6.630192165655441e+16;
t116 = qd_t1.*t27.*6.630192165655441e+16;
t117 = qd_t2.*t27.*6.630192165655441e+16;
t118 = qd_t3.*t27.*6.630192165655441e+16;
t119 = qd_t4.*t27.*6.630192165655441e+16;
t120 = qd_t5.*t27.*6.630192165655441e+16;
t121 = t34+t37;
t122 = t36+t38;
t125 = -t5.*(t35-t36);
t126 = -t10.*(t35-t36);
t132 = t39+t47+t48+t65+t66+t67+t68;
t133 = t40+t49+t50+t69+t70+t71+t72;
t99 = qd_t1.*t30.*3.781624316870491e+15;
t100 = qd_t2.*t30.*3.781624316870491e+15;
t101 = qd_t3.*t30.*3.781624316870491e+15;
t102 = qd_t4.*t30.*3.781624316870491e+15;
t103 = qd_t5.*t30.*3.781624316870491e+15;
t104 = qd_t6.*t30.*3.781624316870491e+15;
t105 = qd_t1.*t31.*3.781624316870491e+15;
t106 = qd_t2.*t31.*3.781624316870491e+15;
t107 = qd_t3.*t31.*3.781624316870491e+15;
t108 = qd_t4.*t31.*3.781624316870491e+15;
t109 = qd_t5.*t31.*3.781624316870491e+15;
t110 = qd_t6.*t31.*3.781624316870491e+15;
t123 = t5.*t121;
t124 = t10.*t121;
t134 = t42+t51+t52+t85+t86+t87+t88+t94+t95+t96+t97+t98;
t135 = t41+t63+t64+t81+t82+t83+t84+t89+t90+t91+t92+t93;
t127 = -t124;
t128 = t123+t126;
t136 = t43+t53+t54+t73+t74+t75+t76+t99+t100+t101+t102+t103+t104+t111+t112+t113+t114+t115;
t137 = t45+t55+t56+t77+t78+t79+t80+t105+t106+t107+t108+t109+t110+t116+t117+t118+t119+t120;
t129 = t125+t127;
out1 = t16.*(-1.444373143033901e+2)+t22.*1.444373143033901e+2+t35.*8.860035922729406e+1-t36.*8.860035922729406e+1+t124.*1.938191127160986e+1-sin(q_t6).*(t11.*(t124+t5.*(t35-t36))-t6.*t128).*1.32248109160152e-1+(qd_t1.*7.821829961622444+qd_t2.*7.821829961622444+qd_t3.*6.925066882611204+qd_t4.*2.824041542309381e-1+qd_t5.*6.26896394143647e-2+t130.*(t17.*7.197500932690077e+15+t44).*1.393140684571951e-31+t131.*(t21.*7.197500932690077e+15+t46).*1.393140684571951e-31+qd_t1.*t3.*1.233640254246417+t136.*(t13.*6.417625145547314e+16+t23.*6.417625145547314e+16+t29.*6.630192165655441e+16+t30.*3.781624316870491e+15).*4.947232544644712e-35+t137.*(t15.*6.417625145547314e+16+t25.*6.417625145547314e+16+t27.*6.630192165655441e+16+t31.*3.781624316870491e+15).*4.947232544644712e-35+t135.*(t13.*1.604406286386829e+16+t23.*1.604406286386829e+16+t29.*7.177183019322015e+15).*2.501782997759019e-33+t134.*(t15.*1.604406286386829e+16+t25.*1.604406286386829e+16+t27.*7.177183019322015e+15).*2.501782997759019e-33+t132.*(t23.*3.473539610027484e+15+t44).*3.272540161502791e-32+t133.*(t25.*3.473539610027484e+15+t46).*3.272540161502791e-32)./sampT+t6.*(t124+t5.*(t35-t36)).*5.491824082873426+t134.*(t63+t64+t81+t82+t83+t84+t89+t90+t91+t92+t93).*1.25089149887951e-33-t135.*(t51+t52+t85+t86+t87+t88+t94+t95+t96+t97+t98).*1.25089149887951e-33+t11.*t128.*5.491824082873426+t131.*(t47+t48+t57+t58+t59).*6.965703422859755e-32-t130.*(t49+t50+t60+t61+t62).*6.965703422859755e-32+t5.*(t35-t36).*1.938191127160986e+1-qd_t1.^2.*t8.*6.168201271232084e-1+t137.*(t53+t54+t73+t74+t75+t76+t99+t100+t101+t102+t103+t104+t111+t112+t113+t114+t115).*2.473616272322356e-35-t136.*(t55+t56+t77+t78+t79+t80+t105+t106+t107+t108+t109+t110+t116+t117+t118+t119+t120).*2.473616272322356e-35+t133.*(t47+t48+t65+t66+t67+t68).*1.636270080751396e-32-t132.*(t49+t50+t69+t70+t71+t72).*1.636270080751396e-32+cos(q_t6).*(t6.*(t124+t5.*(t35-t36))+t11.*t128).*1.32248109160152e-1-qd_t1.*qd_t2.*t8.*6.168201271232084e-1;
