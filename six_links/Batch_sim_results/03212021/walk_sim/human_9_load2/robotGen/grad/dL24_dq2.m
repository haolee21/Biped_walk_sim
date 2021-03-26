function dL24_dq2 = dL24_dq2(in1,in2,sampT)
%DL24_DQ2
%    DL24_DQ2 = DL24_DQ2(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    18-Feb-2021 20:18:31

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
t36 = t2.*4.5018e-1;
t37 = t8.*4.5018e-1;
t73 = t2.*5.068576200624125e+19;
t74 = t8.*5.068576200624125e+19;
t23 = cos(t21);
t24 = q_t5+t21;
t25 = sin(t21);
t28 = -t22;
t34 = t19+t20;
t40 = qd_t1.*t36;
t41 = qd_t1.*t37;
t42 = t15.*4.4835e-1;
t43 = t16.*4.4835e-1;
t75 = qd_t1.*t73;
t76 = qd_t1.*t74;
t77 = t15.*5.047972232328905e+19;
t78 = t16.*5.047972232328905e+19;
t26 = q_t6+t24;
t27 = sin(t24);
t29 = cos(t24);
t32 = t23.^2;
t33 = t25.^2;
t35 = t18+t28;
t38 = t4.*t34;
t39 = t10.*t34;
t47 = qd_t1.*t42;
t48 = qd_t2.*t42;
t49 = qd_t1.*t43;
t50 = qd_t2.*t43;
t51 = t23.*4.4835e-1;
t52 = t25.*4.4835e-1;
t79 = qd_t1.*t77;
t80 = qd_t2.*t77;
t81 = qd_t1.*t78;
t82 = qd_t2.*t78;
t83 = t23.*2.185771976598416e+19;
t84 = t25.*2.185771976598416e+19;
t30 = cos(t26);
t31 = sin(t26);
t44 = t4.*t35;
t45 = t10.*t35;
t46 = -t39;
t53 = t29.*4.5018e-1;
t54 = qd_t1.*t51;
t55 = qd_t2.*t51;
t56 = qd_t3.*t51;
t57 = qd_t4.*t51;
t58 = t27.*4.5018e-1;
t59 = qd_t1.*t52;
t60 = qd_t2.*t52;
t61 = qd_t3.*t52;
t62 = qd_t4.*t52;
t85 = qd_t1.*t83;
t86 = qd_t2.*t83;
t87 = qd_t3.*t83;
t88 = qd_t4.*t83;
t89 = qd_t1.*t84;
t90 = qd_t2.*t84;
t91 = qd_t3.*t84;
t92 = qd_t4.*t84;
t100 = t29.*1.9492794e-1;
t101 = t27.*1.9492794e-1;
t126 = t77+t83;
t127 = t78+t84;
t147 = t32.*2.449759765297163e-1;
t148 = t33.*2.449759765297163e-1;
t63 = qd_t1.*t53;
t64 = qd_t2.*t53;
t65 = qd_t3.*t53;
t66 = qd_t4.*t53;
t67 = qd_t5.*t53;
t68 = qd_t1.*t58;
t69 = qd_t2.*t58;
t70 = qd_t3.*t58;
t71 = qd_t4.*t58;
t72 = qd_t5.*t58;
t93 = t38+t45;
t94 = t44+t46;
t97 = -t5.*(t39-t44);
t98 = -t11.*(t39-t44);
t102 = qd_t1.*t100;
t103 = qd_t2.*t100;
t104 = qd_t3.*t100;
t105 = qd_t4.*t100;
t106 = qd_t5.*t100;
t107 = qd_t1.*t101;
t108 = qd_t2.*t101;
t109 = qd_t3.*t101;
t110 = qd_t4.*t101;
t111 = qd_t5.*t101;
t112 = t30.*3.6063444e-2;
t113 = t31.*3.6063444e-2;
t128 = t51+t100;
t129 = t52+t101;
t143 = t73+t126;
t144 = t74+t127;
t150 = t11.*(t39-t44).*(-7.4545915933125);
t163 = t85+t86+t87+t88;
t164 = t89+t90+t91+t92;
t95 = t5.*t93;
t96 = t11.*t93;
t114 = qd_t1.*t112;
t115 = qd_t2.*t112;
t116 = qd_t3.*t112;
t117 = qd_t4.*t112;
t118 = qd_t5.*t112;
t119 = qd_t6.*t112;
t120 = qd_t1.*t113;
t121 = qd_t2.*t113;
t122 = qd_t3.*t113;
t123 = qd_t4.*t113;
t124 = qd_t5.*t113;
t125 = qd_t6.*t113;
t130 = t128.^2;
t131 = t53+t112;
t132 = t129.^2;
t133 = t58+t113;
t145 = t42+t128;
t146 = t43+t129;
t165 = t164.^2;
t166 = t163.^2;
t173 = t79+t80+t163;
t174 = t81+t82+t164;
t175 = t25.*t163.*5.603877695214977e-21;
t176 = t25.*t163.*1.120775539042995e-20;
t177 = t23.*t164.*5.603877695214977e-21;
t178 = t23.*t164.*1.120775539042995e-20;
t184 = t107+t108+t109+t110+t111;
t185 = t102+t103+t104+t105+t106;
t99 = -t96;
t134 = t95+t98;
t135 = t132.*3.0225;
t136 = t130.*3.0225;
t140 = -t6.*(t96+t5.*(t39-t44));
t141 = -t12.*(t96+t5.*(t39-t44));
t149 = t95.*7.4545915933125;
t151 = t51+t131;
t152 = t52+t133;
t156 = t36+t145;
t158 = t37+t146;
t168 = t12.*(t96+t5.*(t39-t44)).*(-2.485521315064125);
t171 = t166.*1.281898970984144e-40;
t172 = t165.*1.281898970984144e-40;
t179 = -t176;
t180 = -t177;
t181 = t75+t173;
t182 = t76+t174;
t193 = t114+t115+t116+t117+t118+t119;
t194 = t120+t121+t122+t123+t124+t125;
t195 = t54+t55+t56+t57+t185;
t196 = t59+t60+t61+t62+t184;
t137 = t97+t99;
t138 = t6.*t134;
t139 = t12.*t134;
t153 = t152.^2;
t154 = t151.^2;
t159 = t42+t151;
t160 = t43+t152;
t187 = t25.*t181.*5.603877695214977e-21;
t188 = t25.*t181.*1.120775539042995e-20;
t189 = t23.*t182.*5.603877695214977e-21;
t190 = t23.*t182.*1.120775539042995e-20;
t197 = t196.^2;
t198 = t195.^2;
t201 = t47+t48+t195;
t202 = t49+t50+t196;
t205 = t164.*t182.*1.281898970984144e-40;
t206 = t163.*t181.*1.281898970984144e-40;
t209 = t128.*t196.*3.0225;
t210 = t129.*t195.*3.0225;
t211 = t128.*t196.*1.51125;
t213 = t129.*t195.*1.51125;
t215 = t63+t64+t65+t66+t67+t193;
t216 = t68+t69+t70+t71+t72+t194;
t142 = -t139;
t155 = t154.*(3.77e+2./4.0e+2);
t157 = t153.*(3.77e+2./4.0e+2);
t161 = t37+t160;
t162 = t36+t159;
t167 = t138.*2.485521315064125;
t169 = t138+t141;
t186 = t13.*(t139+t6.*(t96+t5.*(t39-t44))).*(-8.3359974616425e-2);
t191 = -t187;
t192 = -t190;
t199 = t198.*7.55625e-1;
t200 = t197.*7.55625e-1;
t203 = t41+t202;
t204 = t40+t201;
t207 = -t205;
t208 = -t206;
t212 = -t210;
t214 = -t211;
t223 = t59+t60+t61+t62+t216;
t224 = t54+t55+t56+t57+t215;
t170 = t140+t142;
t183 = t7.*t169.*8.3359974616425e-2;
t217 = t128.*t203.*3.0225;
t218 = t129.*t204.*3.0225;
t220 = t128.*t203.*1.51125;
t221 = t129.*t204.*1.51125;
t225 = t223.^2;
t226 = t224.^2;
t229 = t47+t48+t224;
t230 = t49+t50+t223;
t233 = t135+t136+t147+t148+t155+t157+2.086379878317928e-1;
t235 = t151.*t223.*(3.77e+2./4.0e+2);
t236 = t152.*t224.*(3.77e+2./4.0e+2);
t237 = t151.*t223.*(3.77e+2./8.0e+2);
t239 = t152.*t224.*(3.77e+2./8.0e+2);
t247 = t195.*t204.*7.55625e-1;
t248 = t196.*t203.*7.55625e-1;
t219 = -t217;
t222 = -t221;
t227 = t225.*2.35625e-1;
t228 = t226.*2.35625e-1;
t231 = t41+t230;
t232 = t40+t229;
t234 = t17.*t233;
t238 = -t236;
t240 = -t237;
t249 = -t247;
t250 = -t248;
t241 = t152.*t232.*(3.77e+2./4.0e+2);
t242 = t151.*t231.*(3.77e+2./4.0e+2);
t243 = t152.*t232.*(3.77e+2./8.0e+2);
t245 = t151.*t231.*(3.77e+2./8.0e+2);
t251 = t224.*t232.*2.35625e-1;
t252 = t223.*t231.*2.35625e-1;
t244 = -t242;
t246 = -t243;
t253 = -t251;
t254 = -t252;
t256 = t17.*(t176-t178-t188+t190-t209+t210+t217-t218-t235+t236-t241+t242).*(-1.0./2.0);
t257 = (t17.*(t176-t178-t188+t190-t209+t210+t217-t218-t235+t236-t241+t242))./2.0;
t255 = t178+t179+t188+t192+t209+t212+t218+t219+t235+t238+t241+t244;
t258 = t175+t180+t189+t191+t213+t214+t220+t222+t234+t239+t240+t245+t246;
t259 = t17.*t258;
t260 = t149+t150+t167+t168+t171+t172+t183+t186+t199+t200+t207+t208+t227+t228+t249+t250+t253+t254+t257+t259;
dL24_dq2 = [t149+t150+t167+t168+t183+t186+t17.*(t189+t191+t220+t222+t245+t246-t143.*t164.*2.563797941968288e-40+t144.*t163.*2.563797941968288e-40-t156.*t196.*1.51125+t158.*t195.*1.51125+t161.*t224.*(3.77e+2./8.0e+2)-t162.*t223.*(3.77e+2./8.0e+2)+t17.*(t23.*t143.*1.120775539042995e-20+t25.*t144.*1.120775539042995e-20+t128.*t156.*3.0225+t129.*t158.*3.0225+t151.*t162.*(3.77e+2./4.0e+2)+t152.*t161.*(3.77e+2./4.0e+2)+2.086379878317928e-1));t149+t150+t167+t168+t183+t186+t207+t208+t249+t250+t253+t254+t163.*t173.*1.281898970984144e-40+t164.*t174.*1.281898970984144e-40+t195.*t201.*7.55625e-1+t196.*t202.*7.55625e-1+t223.*t230.*2.35625e-1+t224.*t229.*2.35625e-1-(t17.*(t188+t192+t218+t219+t241+t244+t23.*t174.*1.120775539042995e-20-t25.*t173.*1.120775539042995e-20+t128.*t202.*3.0225-t129.*t201.*3.0225+t151.*t230.*(3.77e+2./4.0e+2)-t152.*t229.*(3.77e+2./4.0e+2)))./2.0+t17.*(t189+t191+t220+t222+t245+t246-t126.*t164.*2.563797941968288e-40+t127.*t163.*2.563797941968288e-40-t145.*t196.*1.51125+t146.*t195.*1.51125-t159.*t223.*(3.77e+2./8.0e+2)+t160.*t224.*(3.77e+2./8.0e+2)+t17.*(t23.*t126.*1.120775539042995e-20+t25.*t127.*1.120775539042995e-20+t128.*t145.*3.0225+t129.*t146.*3.0225+t151.*t159.*(3.77e+2./4.0e+2)+t152.*t160.*(3.77e+2./4.0e+2)+2.086379878317928e-1));t260;t260;t167+t168+t183+t186+t17.*(t27.*t195.*2.94584849325e-1-t29.*t196.*2.94584849325e-1-t27.*t204.*2.94584849325e-1+t29.*t203.*2.94584849325e-1-t131.*t223.*(3.77e+2./8.0e+2)+t133.*t224.*(3.77e+2./8.0e+2)+t131.*t231.*(3.77e+2./8.0e+2)-t133.*t232.*(3.77e+2./8.0e+2)+t17.*(t27.*t129.*5.891696986500001e-1+t29.*t128.*5.891696986500001e-1+t131.*t151.*(3.77e+2./4.0e+2)+t133.*t152.*(3.77e+2./4.0e+2)+7.232013102222651e-2))+t184.*t196.*7.55625e-1+t185.*t195.*7.55625e-1-t184.*t203.*7.55625e-1-t185.*t204.*7.55625e-1+t215.*t224.*2.35625e-1+t216.*t223.*2.35625e-1-t215.*t232.*2.35625e-1-t216.*t231.*2.35625e-1-(t17.*(t27.*t204.*5.891696986500001e-1-t29.*t203.*5.891696986500001e-1+t128.*t184.*3.0225-t129.*t185.*3.0225-t131.*t231.*(3.77e+2./4.0e+2)+t133.*t232.*(3.77e+2./4.0e+2)+t151.*t216.*(3.77e+2./4.0e+2)-t152.*t215.*(3.77e+2./4.0e+2)))./2.0;t183+t186+(t17.*(t30.*t231.*3.398979597e-2-t31.*t232.*3.398979597e-2-t151.*t194.*(3.77e+2./4.0e+2)+t152.*t193.*(3.77e+2./4.0e+2)))./2.0+t17.*(t30.*t223.*(-1.6994897985e-2)+t31.*t224.*1.6994897985e-2+t30.*t231.*1.6994897985e-2-t31.*t232.*1.6994897985e-2+t17.*(t30.*t151.*3.398979597e-2+t31.*t152.*3.398979597e-2+1.645348628313e-2))+t193.*t224.*2.35625e-1+t194.*t223.*2.35625e-1-t193.*t232.*2.35625e-1-t194.*t231.*2.35625e-1];
