function dL22_dq2 = dL22_dq2(in1,in2,sampT)
%DL22_DQ2
%    DL22_DQ2 = DL22_DQ2(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    22-Jan-2021 01:39:40

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
t15 = q_t2+q_t3;
t16 = qd_t1.^2;
t21 = 1.0./sampT;
t17 = cos(t14);
t18 = cos(t15);
t19 = sin(t14);
t20 = sin(t15);
t22 = t2.*t3;
t23 = t2.*t9;
t24 = t3.*t8;
t25 = q_t3+q_t4+t14;
t26 = t8.*t9;
t38 = t2.*4.5018e-1;
t39 = t8.*4.5018e-1;
t75 = t2.*5.068576200624125e+19;
t76 = t8.*5.068576200624125e+19;
t128 = t4.*1.960498462814307e+1;
t141 = qd_t1.*t9.*1.36756483633665e+1;
t27 = cos(t25);
t28 = q_t5+t25;
t29 = sin(t25);
t32 = -t26;
t36 = t23+t24;
t42 = qd_t1.*t38;
t43 = qd_t1.*t39;
t44 = t17.*4.4835e-1;
t45 = t19.*4.4835e-1;
t77 = qd_t1.*t75;
t78 = qd_t1.*t76;
t79 = t17.*5.047972232328905e+19;
t80 = t19.*5.047972232328905e+19;
t129 = t23.*8.60095702816875e+1;
t130 = t24.*8.60095702816875e+1;
t133 = qd_t1.*t20.*4.921251243391016;
t134 = qd_t1.*t20.*9.842502486782032;
t135 = qd_t1.*qd_t2.*t18.*2.460625621695508;
t136 = qd_t1.*qd_t3.*t18.*2.460625621695508;
t137 = t16.*t18.*2.460625621695508;
t30 = q_t6+t28;
t31 = sin(t28);
t33 = cos(t28);
t37 = t22+t32;
t40 = t4.*t36;
t41 = t10.*t36;
t49 = qd_t1.*t44;
t50 = qd_t2.*t44;
t51 = qd_t1.*t45;
t52 = qd_t2.*t45;
t53 = t27.*4.4835e-1;
t54 = t29.*4.4835e-1;
t81 = qd_t1.*t79;
t82 = qd_t2.*t79;
t83 = qd_t1.*t80;
t84 = qd_t2.*t80;
t85 = t27.*2.185771976598416e+19;
t86 = t29.*2.185771976598416e+19;
t138 = -t135;
t139 = -t136;
t140 = -t137;
t34 = cos(t30);
t35 = sin(t30);
t46 = t4.*t37;
t47 = t10.*t37;
t48 = -t41;
t55 = t33.*4.5018e-1;
t56 = qd_t1.*t53;
t57 = qd_t2.*t53;
t58 = qd_t3.*t53;
t59 = qd_t4.*t53;
t60 = t31.*4.5018e-1;
t61 = qd_t1.*t54;
t62 = qd_t2.*t54;
t63 = qd_t3.*t54;
t64 = qd_t4.*t54;
t87 = qd_t1.*t85;
t88 = qd_t2.*t85;
t89 = qd_t3.*t85;
t90 = qd_t4.*t85;
t91 = qd_t1.*t86;
t92 = qd_t2.*t86;
t93 = qd_t3.*t86;
t94 = qd_t4.*t86;
t102 = t33.*1.9492794e-1;
t103 = t31.*1.9492794e-1;
t131 = t79+t85;
t132 = t80+t86;
t157 = t40.*5.362019047677137e+1;
t65 = qd_t1.*t55;
t66 = qd_t2.*t55;
t67 = qd_t3.*t55;
t68 = qd_t4.*t55;
t69 = qd_t5.*t55;
t70 = qd_t1.*t60;
t71 = qd_t2.*t60;
t72 = qd_t3.*t60;
t73 = qd_t4.*t60;
t74 = qd_t5.*t60;
t95 = t40+t47;
t96 = t46+t48;
t99 = -t5.*(t41-t46);
t100 = -t11.*(t41-t46);
t104 = qd_t1.*t102;
t105 = qd_t2.*t102;
t106 = qd_t3.*t102;
t107 = qd_t4.*t102;
t108 = qd_t5.*t102;
t109 = qd_t1.*t103;
t110 = qd_t2.*t103;
t111 = qd_t3.*t103;
t112 = qd_t4.*t103;
t113 = qd_t5.*t103;
t114 = t34.*3.6063444e-2;
t115 = t35.*3.6063444e-2;
t142 = t53+t102;
t143 = t54+t103;
t153 = t75+t131;
t154 = t76+t132;
t159 = t47.*5.362019047677137e+1;
t160 = t11.*(t41-t46).*(-7.4545915933125);
t169 = t87+t88+t89+t90;
t170 = t91+t92+t93+t94;
t171 = t27.*t131.*1.120775539042995e-20;
t172 = t29.*t132.*1.120775539042995e-20;
t97 = t5.*t95;
t98 = t11.*t95;
t116 = qd_t1.*t114;
t117 = qd_t2.*t114;
t118 = qd_t3.*t114;
t119 = qd_t4.*t114;
t120 = qd_t5.*t114;
t121 = qd_t6.*t114;
t122 = qd_t1.*t115;
t123 = qd_t2.*t115;
t124 = qd_t3.*t115;
t125 = qd_t4.*t115;
t126 = qd_t5.*t115;
t127 = qd_t6.*t115;
t144 = t55+t114;
t145 = t60+t115;
t155 = t44+t142;
t156 = t45+t143;
t179 = t81+t82+t169;
t180 = t83+t84+t170;
t185 = t132.*t169.*5.127595883936577e-40;
t186 = t131.*t170.*5.127595883936577e-40;
t189 = t109+t110+t111+t112+t113;
t190 = t104+t105+t106+t107+t108;
t101 = -t98;
t146 = t97+t100;
t150 = -t6.*(t98+t5.*(t41-t46));
t151 = -t12.*(t98+t5.*(t41-t46));
t158 = t97.*7.4545915933125;
t161 = t53+t144;
t162 = t54+t145;
t163 = t38+t155;
t164 = t39+t156;
t174 = t142.*t155.*3.0225;
t175 = t12.*(t98+t5.*(t41-t46)).*(-2.485521315064125);
t176 = t143.*t156.*3.0225;
t183 = t77+t179;
t184 = t78+t180;
t187 = -t185;
t192 = t27.*t180.*5.603877695214977e-21;
t193 = t29.*t179.*5.603877695214977e-21;
t199 = t116+t117+t118+t119+t120+t121;
t200 = t122+t123+t124+t125+t126+t127;
t204 = t56+t57+t58+t59+t190;
t205 = t61+t62+t63+t64+t189;
t206 = t169.*t179.*1.281898970984144e-40;
t207 = t170.*t180.*1.281898970984144e-40;
t147 = t99+t101;
t148 = t6.*t146;
t149 = t12.*t146;
t165 = t44+t161;
t166 = t45+t162;
t194 = t29.*t183.*5.603877695214977e-21;
t195 = t29.*t183.*1.120775539042995e-20;
t196 = t27.*t184.*5.603877695214977e-21;
t197 = t27.*t184.*1.120775539042995e-20;
t201 = t131.*t184.*2.563797941968288e-40;
t202 = t132.*t183.*2.563797941968288e-40;
t208 = t49+t50+t204;
t209 = t51+t52+t205;
t212 = t170.*t184.*1.281898970984144e-40;
t213 = t169.*t183.*1.281898970984144e-40;
t216 = t65+t66+t67+t68+t69+t199;
t217 = t70+t71+t72+t73+t74+t200;
t218 = t156.*t204.*3.0225;
t219 = t155.*t205.*3.0225;
t152 = -t149;
t167 = t39+t166;
t168 = t38+t165;
t173 = t148.*2.485521315064125;
t177 = t148+t151;
t181 = t161.*t165.*(3.77e+2./4.0e+2);
t182 = t162.*t166.*(3.77e+2./4.0e+2);
t191 = t13.*(t149+t6.*(t98+t5.*(t41-t46))).*(-8.3359974616425e-2);
t198 = -t197;
t203 = -t201;
t210 = t43+t209;
t211 = t42+t208;
t214 = -t212;
t215 = -t213;
t220 = -t218;
t221 = t142.*t209.*1.51125;
t222 = t143.*t208.*1.51125;
t231 = t61+t62+t63+t64+t217;
t232 = t56+t57+t58+t59+t216;
t250 = t205.*t209.*7.55625e-1;
t251 = t204.*t208.*7.55625e-1;
t178 = t150+t152;
t188 = t7.*t177.*8.3359974616425e-2;
t223 = t142.*t210.*3.0225;
t224 = t143.*t211.*3.0225;
t226 = t142.*t210.*1.51125;
t227 = t143.*t211.*1.51125;
t228 = t155.*t210.*1.51125;
t229 = t156.*t211.*1.51125;
t233 = t49+t50+t232;
t234 = t51+t52+t231;
t237 = t165.*t231.*(3.77e+2./4.0e+2);
t238 = t166.*t232.*(3.77e+2./4.0e+2);
t252 = t204.*t211.*7.55625e-1;
t253 = t205.*t210.*7.55625e-1;
t225 = -t223;
t230 = -t228;
t235 = t43+t234;
t236 = t42+t233;
t239 = -t238;
t240 = t161.*t234.*(3.77e+2./8.0e+2);
t241 = t162.*t233.*(3.77e+2./8.0e+2);
t254 = -t252;
t255 = -t253;
t256 = t231.*t234.*2.35625e-1;
t257 = t232.*t233.*2.35625e-1;
t242 = t162.*t236.*(3.77e+2./4.0e+2);
t243 = t161.*t235.*(3.77e+2./4.0e+2);
t244 = t162.*t236.*(3.77e+2./8.0e+2);
t246 = t161.*t235.*(3.77e+2./8.0e+2);
t247 = t166.*t236.*(3.77e+2./8.0e+2);
t248 = t165.*t235.*(3.77e+2./8.0e+2);
t258 = t232.*t236.*2.35625e-1;
t259 = t231.*t235.*2.35625e-1;
t245 = -t243;
t249 = -t248;
t260 = -t258;
t261 = -t259;
dL22_dq2 = [t129+t130+t157+t158+t159+t160+t173+t175+t188+t191-t21.*(t134+t141+t202+t203+t229+t230+t247+t249+qd_t2.*t9.*6.83782418168325+qd_t2.*t20.*4.921251243391016+qd_t3.*t20.*4.921251243391016+t153.*t180.*2.563797941968288e-40-t154.*t179.*2.563797941968288e-40+t163.*t209.*1.51125-t164.*t208.*1.51125-t167.*t233.*(3.77e+2./8.0e+2)+t168.*t234.*(3.77e+2./8.0e+2)-t21.*(t3.*1.36756483633665e+1+t18.*9.842502486782032+t128+t131.*t153.*5.127595883936577e-40+t132.*t154.*5.127595883936577e-40+t155.*t163.*3.0225+t156.*t164.*3.0225+t165.*t168.*(3.77e+2./4.0e+2)+t166.*t167.*(3.77e+2./4.0e+2)+2.719062807063214e+1));t129+t130+t138+t139+t140+t157+t158+t159+t160+t173+t175+t188+t191-t3.*t16.*3.418912090841625-t179.*t183.*1.281898970984144e-40-t180.*t184.*1.281898970984144e-40-t208.*t211.*7.55625e-1-t209.*t210.*7.55625e-1-t233.*t236.*2.35625e-1-t234.*t235.*2.35625e-1-(t21.*(t134+t141+t131.*t180.*5.127595883936577e-40-t132.*t179.*5.127595883936577e-40-t131.*t184.*5.127595883936577e-40+t132.*t183.*5.127595883936577e-40+t155.*t209.*3.0225-t156.*t208.*3.0225-t155.*t210.*3.0225+t156.*t211.*3.0225+t165.*t234.*(3.77e+2./4.0e+2)-t166.*t233.*(3.77e+2./4.0e+2)-t165.*t235.*(3.77e+2./4.0e+2)+t166.*t236.*(3.77e+2./4.0e+2)))./2.0-t21.*(t133+t202+t203+t229+t230+t247+t249+qd_t1.*t9.*6.83782418168325+t131.*t180.*2.563797941968288e-40-t132.*t179.*2.563797941968288e-40+t155.*t209.*1.51125-t156.*t208.*1.51125+t165.*t234.*(3.77e+2./8.0e+2)-t166.*t233.*(3.77e+2./8.0e+2)-t21.*(t128+t131.^2.*5.127595883936577e-40+t132.^2.*5.127595883936577e-40+t155.^2.*3.0225+t156.^2.*3.0225+t165.^2.*(3.77e+2./4.0e+2)+t166.^2.*(3.77e+2./4.0e+2)+2.719062807063214e+1))+t179.^2.*1.281898970984144e-40+t180.^2.*1.281898970984144e-40+t208.^2.*7.55625e-1+t209.^2.*7.55625e-1+t233.^2.*2.35625e-1+t234.^2.*2.35625e-1-qd_t1.*qd_t2.*t3.*3.418912090841625;t138+t139+t140+t157+t158+t159+t160+t173+t175+t188+t191+t206+t207+t214+t215+t250+t251+t254+t255+t256+t257+t260+t261-t21.*(t133+t192-t193+t194-t196+t221-t222-t226+t227+t240-t241+t244-t246-t21.*(t4.*9.802492314071536+t171+t172+t174+t176+t181+t182+1.375504232042036e+1))-(t21.*(t134+t186+t187+t195+t198+t219+t220+t224+t225+t237+t239+t242+t245+qd_t1.*t10.*1.960498462814307e+1+qd_t2.*t10.*1.960498462814307e+1+qd_t3.*t10.*9.802492314071536))./2.0;t158+t160+t173+t175+t188+t191+t206+t207+t214+t215+t250+t251+t254+t255+t256+t257+t260+t261+t21.*(-t192+t193-t194+t196-t221+t222+t226-t227-t240+t241-t244+t246+t21.*(t171+t172+t174+t176+t181+t182+1.921845015486628e-1))+(t21.*(t185-t186-t195+t197+t218-t219+t223-t224-t237+t238-t242+t243))./2.0;t173+t175+t188+t191+t189.*t209.*7.55625e-1+t190.*t208.*7.55625e-1-t189.*t210.*7.55625e-1-t190.*t211.*7.55625e-1+t216.*t233.*2.35625e-1+t217.*t234.*2.35625e-1-t216.*t236.*2.35625e-1-t217.*t235.*2.35625e-1-(t21.*(t31.*t211.*5.891696986500001e-1-t33.*t210.*5.891696986500001e-1+t155.*t189.*3.0225-t156.*t190.*3.0225-t144.*t235.*(3.77e+2./4.0e+2)+t145.*t236.*(3.77e+2./4.0e+2)+t165.*t217.*(3.77e+2./4.0e+2)-t166.*t216.*(3.77e+2./4.0e+2)))./2.0+t21.*(t31.*t208.*2.94584849325e-1-t31.*t211.*2.94584849325e-1-t33.*t209.*2.94584849325e-1+t33.*t210.*2.94584849325e-1-t144.*t234.*(3.77e+2./8.0e+2)+t145.*t233.*(3.77e+2./8.0e+2)+t144.*t235.*(3.77e+2./8.0e+2)-t145.*t236.*(3.77e+2./8.0e+2)+t21.*(t31.*t156.*5.891696986500001e-1+t33.*t155.*5.891696986500001e-1+t144.*t165.*(3.77e+2./4.0e+2)+t145.*t166.*(3.77e+2./4.0e+2)+5.586664473909651e-2));t188+t191+(t21.*(t34.*t235.*3.398979597e-2-t35.*t236.*3.398979597e-2-t165.*t200.*(3.77e+2./4.0e+2)+t166.*t199.*(3.77e+2./4.0e+2)))./2.0+t199.*t233.*2.35625e-1+t200.*t234.*2.35625e-1-t199.*t236.*2.35625e-1-t200.*t235.*2.35625e-1+t21.*(t34.*t234.*(-1.6994897985e-2)+t35.*t233.*1.6994897985e-2+t34.*t235.*1.6994897985e-2-t35.*t236.*1.6994897985e-2+t21.*(t34.*t165.*3.398979597e-2+t35.*t166.*3.398979597e-2))];
