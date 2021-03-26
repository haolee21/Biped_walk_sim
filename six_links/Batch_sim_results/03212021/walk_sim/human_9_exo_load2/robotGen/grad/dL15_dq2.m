function dL15_dq2 = dL15_dq2(in1,in2,sampT)
%DL15_DQ2
%    DL15_DQ2 = DL15_DQ2(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    18-Feb-2021 20:19:20

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
t17 = 1.0./sampT;
t15 = cos(t14);
t16 = sin(t14);
t18 = t2.*t3;
t19 = t2.*t9;
t20 = t3.*t8;
t21 = q_t3+q_t4+t14;
t22 = t8.*t9;
t34 = t2.*4.5018e-1;
t35 = t8.*4.5018e-1;
t23 = cos(t21);
t24 = q_t5+t21;
t25 = sin(t21);
t28 = -t22;
t32 = t19+t20;
t38 = qd_t1.*t34;
t39 = qd_t1.*t35;
t40 = t15.*4.4835e-1;
t41 = t16.*4.4835e-1;
t26 = q_t6+t24;
t27 = sin(t24);
t29 = cos(t24);
t33 = t18+t28;
t36 = t4.*t32;
t37 = t10.*t32;
t45 = qd_t1.*t40;
t46 = qd_t2.*t40;
t47 = qd_t1.*t41;
t48 = qd_t2.*t41;
t49 = t23.*4.4835e-1;
t50 = t25.*4.4835e-1;
t30 = cos(t26);
t31 = sin(t26);
t42 = t4.*t33;
t43 = t10.*t33;
t44 = -t37;
t51 = t29.*4.5018e-1;
t52 = qd_t1.*t49;
t53 = qd_t2.*t49;
t54 = qd_t3.*t49;
t55 = qd_t4.*t49;
t56 = t27.*4.5018e-1;
t57 = qd_t1.*t50;
t58 = qd_t2.*t50;
t59 = qd_t3.*t50;
t60 = qd_t4.*t50;
t78 = t29.*1.9492794e-1;
t79 = t27.*1.9492794e-1;
t61 = qd_t1.*t51;
t62 = qd_t2.*t51;
t63 = qd_t3.*t51;
t64 = qd_t4.*t51;
t65 = qd_t5.*t51;
t66 = qd_t1.*t56;
t67 = qd_t2.*t56;
t68 = qd_t3.*t56;
t69 = qd_t4.*t56;
t70 = qd_t5.*t56;
t71 = t36+t43;
t72 = t42+t44;
t75 = -t5.*(t37-t42);
t76 = -t11.*(t37-t42);
t80 = qd_t1.*t78;
t81 = qd_t2.*t78;
t82 = qd_t3.*t78;
t83 = qd_t4.*t78;
t84 = qd_t5.*t78;
t85 = qd_t1.*t79;
t86 = qd_t2.*t79;
t87 = qd_t3.*t79;
t88 = qd_t4.*t79;
t89 = qd_t5.*t79;
t90 = t30.*3.6063444e-2;
t91 = t31.*3.6063444e-2;
t104 = t49+t78;
t105 = t50+t79;
t73 = t5.*t71;
t74 = t11.*t71;
t92 = qd_t1.*t90;
t93 = qd_t2.*t90;
t94 = qd_t3.*t90;
t95 = qd_t4.*t90;
t96 = qd_t5.*t90;
t97 = qd_t6.*t90;
t98 = qd_t1.*t91;
t99 = qd_t2.*t91;
t100 = qd_t3.*t91;
t101 = qd_t4.*t91;
t102 = qd_t5.*t91;
t103 = qd_t6.*t91;
t106 = t51+t90;
t107 = t56+t91;
t115 = t40+t104;
t116 = t41+t105;
t123 = t29.*t104.*9.205471966500001e-1;
t124 = t27.*t105.*9.205471966500001e-1;
t133 = t85+t86+t87+t88+t89;
t134 = t80+t81+t82+t83+t84;
t77 = -t74;
t108 = t73+t76;
t112 = -t6.*(t74+t5.*(t37-t42));
t113 = -t12.*(t74+t5.*(t37-t42));
t117 = t49+t106;
t118 = t50+t107;
t119 = t34+t115;
t120 = t35+t116;
t128 = t12.*(t74+t5.*(t37-t42)).*(-4.181477788909126);
t137 = t92+t93+t94+t95+t96+t97;
t138 = t98+t99+t100+t101+t102+t103;
t139 = t105.*t134.*2.36125;
t140 = t104.*t133.*2.36125;
t142 = t52+t53+t54+t55+t134;
t143 = t57+t58+t59+t60+t133;
t109 = t75+t77;
t110 = t6.*t108;
t111 = t12.*t108;
t121 = t40+t117;
t122 = t41+t118;
t130 = t106.*t117.*(6.97e+2./4.0e+2);
t132 = t107.*t118.*(6.97e+2./4.0e+2);
t141 = -t139;
t144 = t45+t46+t142;
t145 = t47+t48+t143;
t146 = t29.*t143.*9.205471966500001e-1;
t147 = t27.*t142.*9.205471966500001e-1;
t151 = t61+t62+t63+t64+t65+t137;
t152 = t66+t67+t68+t69+t70+t138;
t171 = t133.*t143.*1.180625;
t172 = t134.*t142.*1.180625;
t114 = -t111;
t125 = t35+t122;
t126 = t34+t121;
t127 = t110.*4.181477788909126;
t129 = t110+t113;
t136 = t13.*(t111+t6.*(t74+t5.*(t37-t42))).*(-1.54116451744425e-1);
t148 = -t146;
t149 = t39+t145;
t150 = t38+t144;
t159 = t57+t58+t59+t60+t152;
t160 = t52+t53+t54+t55+t151;
t161 = t118.*t151.*(6.97e+2./8.0e+2);
t162 = t117.*t152.*(6.97e+2./8.0e+2);
t173 = t123+t124+t130+t132+1.177080545281428e-1;
t131 = t112+t114;
t135 = t7.*t129.*1.54116451744425e-1;
t153 = t27.*t150.*4.602735983250001e-1;
t154 = t27.*t150.*9.205471966500001e-1;
t155 = t29.*t149.*4.602735983250001e-1;
t156 = t29.*t149.*9.205471966500001e-1;
t163 = -t161;
t164 = t45+t46+t160;
t165 = t47+t48+t159;
t168 = t106.*t159.*(6.97e+2./4.0e+2);
t169 = t107.*t160.*(6.97e+2./4.0e+2);
t180 = t17.*t173;
t181 = t134.*t150.*1.180625;
t182 = t133.*t149.*1.180625;
t185 = t152.*t159.*4.35625e-1;
t186 = t151.*t160.*4.35625e-1;
t157 = -t154;
t158 = -t155;
t166 = t39+t165;
t167 = t38+t164;
t170 = -t168;
t183 = -t181;
t184 = -t182;
t174 = t106.*t166.*(6.97e+2./4.0e+2);
t175 = t107.*t167.*(6.97e+2./4.0e+2);
t176 = t106.*t166.*(6.97e+2./8.0e+2);
t178 = t107.*t167.*(6.97e+2./8.0e+2);
t187 = t152.*t166.*4.35625e-1;
t188 = t151.*t167.*4.35625e-1;
t177 = -t175;
t179 = -t176;
t189 = -t187;
t190 = -t188;
t192 = t17.*(t146-t147+t154-t156+t168-t169-t174+t175).*(-1.0./2.0);
t193 = (t17.*(t146-t147+t154-t156+t168-t169-t174+t175))./2.0;
t191 = t147+t148+t156+t157+t169+t170+t174+t177;
t194 = t140+t141+t153+t158+t162+t163+t178+t179+t180;
t195 = t17.*t194;
t196 = -t195;
t197 = t127+t128+t135+t136+t171+t172+t183+t184+t185+t186+t189+t190+t193+t196;
dL15_dq2 = [t127+t128+t135+t136-t17.*(t153+t158+t178+t179+t119.*t133.*2.36125-t120.*t134.*2.36125-t125.*t151.*(6.97e+2./8.0e+2)+t126.*t152.*(6.97e+2./8.0e+2)+t17.*(t27.*t120.*9.205471966500001e-1+t29.*t119.*9.205471966500001e-1+t106.*t126.*(6.97e+2./4.0e+2)+t107.*t125.*(6.97e+2./4.0e+2)+1.177080545281428e-1));t127+t128+t135+t136+t183+t184+t189+t190+t133.*t145.*1.180625+t134.*t144.*1.180625+t151.*t164.*4.35625e-1+t152.*t165.*4.35625e-1+(t17.*(t154-t156-t174+t175-t27.*t144.*9.205471966500001e-1+t29.*t145.*9.205471966500001e-1+t106.*t165.*(6.97e+2./4.0e+2)-t107.*t164.*(6.97e+2./4.0e+2)))./2.0-t17.*(t153+t158+t178+t179+t115.*t133.*2.36125-t116.*t134.*2.36125+t121.*t152.*(6.97e+2./8.0e+2)-t122.*t151.*(6.97e+2./8.0e+2)+t17.*(t27.*t116.*9.205471966500001e-1+t29.*t115.*9.205471966500001e-1+t106.*t121.*(6.97e+2./4.0e+2)+t107.*t122.*(6.97e+2./4.0e+2)+1.177080545281428e-1));t197;t197;t127+t128+t135+t136+t183+t184+t189+t190-t17.*(t153+t158+t178+t179-t27.*t134.*4.602735983250001e-1+t29.*t133.*4.602735983250001e-1+t106.*t152.*(6.97e+2./8.0e+2)-t107.*t151.*(6.97e+2./8.0e+2)+t17.*(t27.^2.*1.794403687157594e-1+t29.^2.*1.794403687157594e-1+t106.^2.*(6.97e+2./4.0e+2)+t107.^2.*(6.97e+2./4.0e+2)+1.177080545281428e-1))+(t17.*(t154-t156-t174+t175-t27.*t134.*9.205471966500001e-1+t29.*t133.*9.205471966500001e-1+t106.*t152.*(6.97e+2./4.0e+2)-t107.*t151.*(6.97e+2./4.0e+2)))./2.0+t133.^2.*1.180625+t134.^2.*1.180625+t151.^2.*4.35625e-1+t152.^2.*4.35625e-1;t135+t136+t137.*t151.*4.35625e-1+t138.*t152.*4.35625e-1-t137.*t167.*4.35625e-1-t138.*t166.*4.35625e-1-(t17.*(t30.*t166.*6.284055117e-2-t31.*t167.*6.284055117e-2-t106.*t138.*(6.97e+2./4.0e+2)+t107.*t137.*(6.97e+2./4.0e+2)))./2.0-t17.*(t17.*(t30.*t106.*6.284055117e-2+t31.*t107.*6.284055117e-2+3.041931018393e-2)+t30.*t152.*3.1420275585e-2-t31.*t151.*3.1420275585e-2-t30.*t166.*3.1420275585e-2+t31.*t167.*3.1420275585e-2)];
