function dL21_dq2 = dL21_dq2(in1,in2,sampT)
%DL21_DQ2
%    DL21_DQ2 = DL21_DQ2(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    30-Oct-2020 12:39:34

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
t18 = 1.0./sampT;
t15 = cos(t14);
t16 = q_t3+t14;
t17 = sin(t14);
t19 = t18.^2;
t20 = t2.*t3;
t22 = t2.*t9;
t23 = t3.*t8;
t26 = t8.*t9;
t43 = t2.*8.287740207069301e+15;
t44 = t8.*8.287740207069301e+15;
t45 = t8.*1.65754804141386e+16;
t46 = t2.*6.630192165655441e+16;
t47 = t8.*6.630192165655441e+16;
t50 = t2.*1.65754804141386e+16;
t21 = cos(t16);
t24 = q_t4+t16;
t25 = sin(t16);
t32 = -t26;
t36 = t22+t23;
t48 = qd_t1.*t43;
t49 = qd_t1.*t44;
t51 = qd_t1.*t50;
t52 = qd_t1.*t45;
t53 = qd_t1.*t46;
t54 = t15.*8.022031431934143e+15;
t55 = qd_t1.*t47;
t56 = t17.*8.022031431934143e+15;
t57 = t17.*6.417625145547314e+16;
t64 = t15.*1.604406286386829e+16;
t65 = t17.*1.604406286386829e+16;
t66 = t15.*6.417625145547314e+16;
t171 = t22.*7.221865715169507e+1;
t172 = t23.*7.221865715169507e+1;
t27 = cos(t24);
t28 = q_t5+t24;
t29 = sin(t24);
t37 = t20+t32;
t38 = t4.*t36;
t39 = t10.*t36;
t58 = qd_t1.*t54;
t59 = qd_t2.*t54;
t60 = t21.*7.197500932690077e+15;
t61 = qd_t1.*t56;
t62 = qd_t2.*t56;
t63 = t25.*7.197500932690077e+15;
t67 = qd_t1.*t65;
t68 = qd_t2.*t65;
t70 = qd_t1.*t66;
t71 = qd_t2.*t66;
t73 = qd_t1.*t57;
t74 = qd_t2.*t57;
t81 = qd_t1.*t64;
t82 = qd_t2.*t64;
t30 = q_t6+t28;
t31 = sin(t28);
t33 = cos(t28);
t40 = t4.*t37;
t41 = t10.*t37;
t42 = -t39;
t69 = t27.*3.473539610027484e+15;
t72 = t29.*3.473539610027484e+15;
t75 = qd_t1.*t60;
t76 = qd_t2.*t60;
t77 = qd_t3.*t60;
t78 = qd_t1.*t63;
t79 = qd_t2.*t63;
t80 = qd_t3.*t63;
t83 = t27.*1.604406286386829e+16;
t84 = t29.*1.604406286386829e+16;
t91 = t27.*6.417625145547314e+16;
t96 = t29.*6.417625145547314e+16;
t156 = t54+t60;
t157 = t56+t63;
t181 = t38.*4.430017961364703e+1;
t34 = cos(t30);
t35 = sin(t30);
t85 = t33.*7.177183019322015e+15;
t86 = t31.*7.177183019322015e+15;
t87 = qd_t1.*t69;
t88 = qd_t2.*t69;
t89 = qd_t3.*t69;
t90 = qd_t4.*t69;
t92 = qd_t1.*t72;
t93 = qd_t2.*t72;
t94 = qd_t3.*t72;
t95 = qd_t4.*t72;
t97 = qd_t1.*t91;
t98 = qd_t2.*t91;
t99 = qd_t3.*t91;
t100 = qd_t4.*t91;
t101 = qd_t1.*t96;
t102 = qd_t2.*t96;
t103 = qd_t3.*t96;
t104 = qd_t4.*t96;
t105 = t33.*6.630192165655441e+16;
t106 = t31.*6.630192165655441e+16;
t108 = qd_t1.*t83;
t109 = qd_t2.*t83;
t110 = qd_t3.*t83;
t111 = qd_t4.*t83;
t113 = qd_t1.*t84;
t114 = qd_t2.*t84;
t115 = qd_t3.*t84;
t116 = qd_t4.*t84;
t149 = t38+t41;
t150 = t40+t42;
t153 = -t5.*(t39-t40);
t154 = -t11.*(t39-t40);
t158 = t54+t69;
t159 = t56+t72;
t164 = t43+t156;
t165 = t44+t157;
t182 = t41.*4.430017961364703e+1;
t190 = t11.*(t39-t40).*(-9.690955635804931);
t195 = t48+t58+t59+t75+t76+t77;
t196 = t49+t61+t62+t78+t79+t80;
t107 = t34.*3.781624316870491e+15;
t112 = t35.*3.781624316870491e+15;
t117 = qd_t1.*t85;
t118 = qd_t2.*t85;
t119 = qd_t3.*t85;
t120 = qd_t4.*t85;
t121 = qd_t5.*t85;
t122 = qd_t1.*t86;
t123 = qd_t2.*t86;
t124 = qd_t3.*t86;
t125 = qd_t4.*t86;
t126 = qd_t5.*t86;
t139 = qd_t1.*t105;
t140 = qd_t2.*t105;
t141 = qd_t3.*t105;
t142 = qd_t4.*t105;
t143 = qd_t5.*t105;
t144 = qd_t1.*t106;
t145 = qd_t2.*t106;
t146 = qd_t3.*t106;
t147 = qd_t4.*t106;
t148 = qd_t5.*t106;
t151 = t5.*t149;
t152 = t11.*t149;
t160 = t83+t85;
t161 = t84+t86;
t166 = t43+t158;
t167 = t44+t159;
t186 = t87+t88+t89+t90;
t188 = t92+t93+t94+t95;
t127 = qd_t1.*t107;
t128 = qd_t2.*t107;
t129 = qd_t3.*t107;
t130 = qd_t4.*t107;
t131 = qd_t5.*t107;
t132 = qd_t6.*t107;
t133 = qd_t1.*t112;
t134 = qd_t2.*t112;
t135 = qd_t3.*t112;
t136 = qd_t4.*t112;
t137 = qd_t5.*t112;
t138 = qd_t6.*t112;
t155 = -t152;
t162 = t105+t107;
t163 = t106+t112;
t168 = t64+t160;
t169 = t151+t154;
t170 = t65+t161;
t178 = -t6.*(t152+t5.*(t39-t40));
t179 = -t12.*(t152+t5.*(t39-t40));
t189 = t151.*9.690955635804931;
t193 = t27.*t166.*1.136729787638568e-16;
t194 = t29.*t167.*1.136729787638568e-16;
t198 = t12.*(t152+t5.*(t39-t40)).*(-2.745912041436713);
t201 = t48+t58+t59+t186;
t202 = t49+t61+t62+t188;
t205 = t167.*t186.*3.272540161502791e-32;
t206 = t166.*t188.*3.272540161502791e-32;
t213 = t108+t109+t110+t111+t117+t118+t119+t120+t121;
t214 = t113+t114+t115+t116+t122+t123+t124+t125+t126;
t173 = t153+t155;
t174 = t6.*t169;
t175 = t12.*t169;
t176 = t91+t162;
t177 = t96+t163;
t183 = t50+t168;
t184 = t45+t170;
t207 = -t205;
t209 = t29.*t201.*1.136729787638568e-16;
t210 = t27.*t202.*1.136729787638568e-16;
t217 = t52+t67+t68+t214;
t218 = t51+t81+t82+t213;
t225 = t101+t102+t103+t104+t133+t134+t135+t136+t137+t138+t144+t145+t146+t147+t148;
t226 = t97+t98+t99+t100+t127+t128+t129+t130+t131+t132+t139+t140+t141+t142+t143;
t180 = -t175;
t185 = t66+t176;
t187 = t57+t177;
t197 = t174.*2.745912041436713;
t199 = t174+t179;
t203 = t160.*t183.*2.501782997759019e-33;
t204 = t161.*t184.*2.501782997759019e-33;
t211 = t13.*(t175+t6.*(t152+t5.*(t39-t40))).*(-6.612405458007602e-2);
t212 = -t210;
t219 = t183.*t214.*2.501782997759019e-33;
t220 = t184.*t213.*2.501782997759019e-33;
t222 = t160.*t217.*2.501782997759019e-33;
t223 = t161.*t218.*2.501782997759019e-33;
t227 = t53+t70+t71+t226;
t228 = t55+t73+t74+t225;
t191 = t47+t187;
t192 = t46+t185;
t200 = t178+t180;
t208 = t7.*t199.*6.612405458007602e-2;
t221 = -t220;
t224 = -t222;
t232 = t177.*t227.*4.947232544644712e-35;
t233 = t176.*t228.*4.947232544644712e-35;
t215 = t177.*t191.*4.947232544644712e-35;
t216 = t176.*t192.*4.947232544644712e-35;
t229 = t192.*t225.*4.947232544644712e-35;
t230 = t191.*t226.*4.947232544644712e-35;
t234 = -t233;
t231 = -t230;
dL21_dq2 = [t8.*8.187674208356329e+1+t171+t172+t181+t182+t189+t190+t197+t198+t208+t211+t19.*(t3.*2.467280508492834+t164.^2.*1.393140684571951e-31+t165.^2.*1.393140684571951e-31+t166.^2.*3.272540161502791e-32+t167.^2.*3.272540161502791e-32+t183.^2.*2.501782997759019e-33+t184.^2.*2.501782997759019e-33+t191.^2.*4.947232544644712e-35+t192.^2.*4.947232544644712e-35+1.035329488007885e+1);t171+t172+t181+t182+t189+t190+t197+t198+t208+t211-(t18.*(qd_t1.*t9.*2.467280508492834+qd_t2.*t9.*1.233640254246417-t156.*t196.*1.393140684571951e-31+t157.*t195.*1.393140684571951e-31-t158.*t202.*3.272540161502791e-32+t159.*t201.*3.272540161502791e-32-t168.*t217.*2.501782997759019e-33+t170.*t218.*2.501782997759019e-33-t185.*t228.*4.947232544644712e-35+t187.*t227.*4.947232544644712e-35-t165.*(t58+t59+t75+t76+t77).*1.393140684571951e-31+t164.*(t61+t62+t78+t79+t80).*1.393140684571951e-31-t167.*(t58+t59+t186).*3.272540161502791e-32+t166.*(t61+t62+t188).*3.272540161502791e-32+t183.*(t67+t68+t214).*2.501782997759019e-33-t191.*(t70+t71+t226).*4.947232544644712e-35-t184.*(t81+t82+t213).*2.501782997759019e-33+t192.*(t73+t74+t225).*4.947232544644712e-35))./2.0+t19.*(t3.*1.233640254246417+t156.*t164.*1.393140684571951e-31+t157.*t165.*1.393140684571951e-31+t158.*t166.*3.272540161502791e-32+t159.*t167.*3.272540161502791e-32+t168.*t183.*2.501782997759019e-33+t170.*t184.*2.501782997759019e-33+t185.*t192.*4.947232544644712e-35+t187.*t191.*4.947232544644712e-35+7.821829961622444);t181+t182+t189+t190+t197+t198+t208+t211+t19.*(t193+t194+t203+t204+t215+t216+t21.*t164.*1.002713137657511e-15+t25.*t165.*1.002713137657511e-15+6.925066882611204)+(t18.*(t205-t206-t209+t210-t219+t220+t222-t223-t229+t230-t232+t233+t21.*t196.*1.002713137657511e-15-t25.*t195.*1.002713137657511e-15+t165.*(t75+t76+t77).*1.393140684571951e-31-t164.*(t78+t79+t80).*1.393140684571951e-31))./2.0;t189+t190+t197+t198+t208+t211+t19.*(t193+t194+t203+t204+t215+t216+2.824041542309381e-1)+(t18.*(t205-t206-t209+t210-t219+t220+t222-t223-t229+t230-t232+t233))./2.0;t197+t198+t208+t211+(t18.*(t191.*(t127+t128+t129+t130+t131+t132+t139+t140+t141+t142+t143).*4.947232544644712e-35-t192.*(t133+t134+t135+t136+t137+t138+t144+t145+t146+t147+t148).*4.947232544644712e-35-t31.*t218.*1.795575444954456e-17+t33.*t217.*1.795575444954456e-17+t162.*t228.*4.947232544644712e-35-t163.*t227.*4.947232544644712e-35+t184.*(t117+t118+t119+t120+t121).*2.501782997759019e-33-t183.*(t122+t123+t124+t125+t126).*2.501782997759019e-33))./2.0+t19.*(t31.*t184.*1.795575444954456e-17+t33.*t183.*1.795575444954456e-17+t162.*t192.*4.947232544644712e-35+t163.*t191.*4.947232544644712e-35+6.26896394143647e-2);t208+t211+(t18.*(t34.*t228.*1.870857489204152e-19-t35.*t227.*1.870857489204152e-19+t191.*(t127+t128+t129+t130+t131+t132).*4.947232544644712e-35-t192.*(t133+t134+t135+t136+t137+t138).*4.947232544644712e-35))./2.0+t19.*(t34.*t192.*1.870857489204152e-19+t35.*t191.*1.870857489204152e-19)];
