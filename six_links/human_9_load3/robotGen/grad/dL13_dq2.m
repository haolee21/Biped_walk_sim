function dL13_dq2 = dL13_dq2(in1,in2,sampT)
%DL13_DQ2
%    DL13_DQ2 = DL13_DQ2(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    23-Feb-2021 13:46:41

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
t40 = t2.*4.5018e-1;
t41 = t8.*4.5018e-1;
t77 = t2.*5.068576200624125e+19;
t78 = t8.*5.068576200624125e+19;
t130 = t4.*6.984012545369157;
t131 = qd_t1.*t10.*6.984012545369157;
t132 = qd_t2.*t10.*6.984012545369157;
t133 = qd_t3.*t10.*3.492006272684579;
t27 = cos(t25);
t28 = q_t5+t25;
t29 = sin(t25);
t32 = -t26;
t38 = t23+t24;
t44 = qd_t1.*t40;
t45 = qd_t1.*t41;
t46 = t17.*4.4835e-1;
t47 = t19.*4.4835e-1;
t79 = qd_t1.*t77;
t80 = qd_t1.*t78;
t81 = t17.*5.047972232328905e+19;
t82 = t19.*5.047972232328905e+19;
t136 = qd_t1.*t20.*3.506259359511863;
t137 = qd_t1.*t20.*7.012518719023725;
t138 = qd_t1.*qd_t2.*t18.*1.753129679755931;
t139 = qd_t1.*qd_t3.*t18.*1.753129679755931;
t142 = t16.*t18.*1.753129679755931;
t30 = q_t6+t28;
t31 = sin(t28);
t33 = cos(t28);
t36 = t27.^2;
t37 = t29.^2;
t39 = t22+t32;
t42 = t4.*t38;
t43 = t10.*t38;
t51 = qd_t1.*t46;
t52 = qd_t2.*t46;
t53 = qd_t1.*t47;
t54 = qd_t2.*t47;
t55 = t27.*4.4835e-1;
t56 = t29.*4.4835e-1;
t83 = qd_t1.*t81;
t84 = qd_t2.*t81;
t85 = qd_t1.*t82;
t86 = qd_t2.*t82;
t87 = t27.*2.185771976598416e+19;
t88 = t29.*2.185771976598416e+19;
t140 = -t138;
t141 = -t139;
t143 = -t142;
t34 = cos(t30);
t35 = sin(t30);
t48 = t4.*t39;
t49 = t10.*t39;
t50 = -t43;
t57 = t33.*4.5018e-1;
t58 = qd_t1.*t55;
t59 = qd_t2.*t55;
t60 = qd_t3.*t55;
t61 = qd_t4.*t55;
t62 = t31.*4.5018e-1;
t63 = qd_t1.*t56;
t64 = qd_t2.*t56;
t65 = qd_t3.*t56;
t66 = qd_t4.*t56;
t89 = qd_t1.*t87;
t90 = qd_t2.*t87;
t91 = qd_t3.*t87;
t92 = qd_t4.*t87;
t93 = qd_t1.*t88;
t94 = qd_t2.*t88;
t95 = qd_t3.*t88;
t96 = qd_t4.*t88;
t104 = t33.*1.9492794e-1;
t105 = t31.*1.9492794e-1;
t134 = t81+t87;
t135 = t82+t88;
t163 = t42.*3.820294584034317e+1;
t164 = t36.*2.449759765297163e-1;
t165 = t37.*2.449759765297163e-1;
t67 = qd_t1.*t57;
t68 = qd_t2.*t57;
t69 = qd_t3.*t57;
t70 = qd_t4.*t57;
t71 = qd_t5.*t57;
t72 = qd_t1.*t62;
t73 = qd_t2.*t62;
t74 = qd_t3.*t62;
t75 = qd_t4.*t62;
t76 = qd_t5.*t62;
t97 = t42+t49;
t98 = t48+t50;
t101 = -t5.*(t43-t48);
t102 = -t11.*(t43-t48);
t106 = qd_t1.*t104;
t107 = qd_t2.*t104;
t108 = qd_t3.*t104;
t109 = qd_t4.*t104;
t110 = qd_t5.*t104;
t111 = qd_t1.*t105;
t112 = qd_t2.*t105;
t113 = qd_t3.*t105;
t114 = qd_t4.*t105;
t115 = qd_t5.*t105;
t116 = t34.*3.6063444e-2;
t117 = t35.*3.6063444e-2;
t144 = t55+t104;
t145 = t56+t105;
t159 = t77+t134;
t160 = t78+t135;
t167 = t49.*3.820294584034317e+1;
t168 = t11.*(t43-t48).*(-7.4545915933125);
t181 = t89+t90+t91+t92;
t182 = t93+t94+t95+t96;
t99 = t5.*t97;
t100 = t11.*t97;
t118 = qd_t1.*t116;
t119 = qd_t2.*t116;
t120 = qd_t3.*t116;
t121 = qd_t4.*t116;
t122 = qd_t5.*t116;
t123 = qd_t6.*t116;
t124 = qd_t1.*t117;
t125 = qd_t2.*t117;
t126 = qd_t3.*t117;
t127 = qd_t4.*t117;
t128 = qd_t5.*t117;
t129 = qd_t6.*t117;
t146 = t144.^2;
t147 = t57+t116;
t148 = t145.^2;
t149 = t62+t117;
t161 = t46+t144;
t162 = t47+t145;
t183 = t182.^2;
t184 = t181.^2;
t191 = t83+t84+t181;
t192 = t85+t86+t182;
t193 = t29.*t181.*5.603877695214977e-21;
t194 = t29.*t181.*1.120775539042995e-20;
t195 = t27.*t182.*5.603877695214977e-21;
t196 = t27.*t182.*1.120775539042995e-20;
t202 = t111+t112+t113+t114+t115;
t203 = t106+t107+t108+t109+t110;
t103 = -t100;
t150 = t99+t102;
t151 = t148.*3.0225;
t152 = t146.*3.0225;
t156 = -t6.*(t100+t5.*(t43-t48));
t157 = -t12.*(t100+t5.*(t43-t48));
t166 = t99.*7.4545915933125;
t169 = t55+t147;
t170 = t56+t149;
t174 = t40+t161;
t176 = t41+t162;
t186 = t12.*(t100+t5.*(t43-t48)).*(-2.485521315064125);
t189 = t184.*1.281898970984144e-40;
t190 = t183.*1.281898970984144e-40;
t197 = -t194;
t198 = -t193;
t199 = t79+t191;
t200 = t80+t192;
t211 = t118+t119+t120+t121+t122+t123;
t212 = t124+t125+t126+t127+t128+t129;
t213 = t58+t59+t60+t61+t203;
t214 = t63+t64+t65+t66+t202;
t153 = t101+t103;
t154 = t6.*t150;
t155 = t12.*t150;
t171 = t170.^2;
t172 = t169.^2;
t177 = t46+t169;
t178 = t47+t170;
t205 = t29.*t199.*5.603877695214977e-21;
t206 = t29.*t199.*1.120775539042995e-20;
t207 = t27.*t200.*5.603877695214977e-21;
t208 = t27.*t200.*1.120775539042995e-20;
t215 = t214.^2;
t216 = t213.^2;
t219 = t51+t52+t213;
t220 = t53+t54+t214;
t223 = t182.*t200.*1.281898970984144e-40;
t224 = t181.*t199.*1.281898970984144e-40;
t227 = t144.*t214.*3.0225;
t228 = t145.*t213.*3.0225;
t229 = t144.*t214.*1.51125;
t231 = t145.*t213.*1.51125;
t233 = t67+t68+t69+t70+t71+t211;
t234 = t72+t73+t74+t75+t76+t212;
t158 = -t155;
t173 = t172.*(3.77e+2./4.0e+2);
t175 = t171.*(3.77e+2./4.0e+2);
t179 = t41+t178;
t180 = t40+t177;
t185 = t154.*2.485521315064125;
t187 = t154+t157;
t204 = t13.*(t155+t6.*(t100+t5.*(t43-t48))).*(-8.3359974616425e-2);
t209 = -t208;
t210 = -t207;
t217 = t216.*7.55625e-1;
t218 = t215.*7.55625e-1;
t221 = t45+t220;
t222 = t44+t219;
t225 = -t223;
t226 = -t224;
t230 = -t228;
t232 = -t231;
t241 = t63+t64+t65+t66+t234;
t242 = t58+t59+t60+t61+t233;
t188 = t156+t158;
t201 = t7.*t187.*8.3359974616425e-2;
t235 = t144.*t221.*3.0225;
t236 = t145.*t222.*3.0225;
t238 = t144.*t221.*1.51125;
t239 = t145.*t222.*1.51125;
t243 = t241.^2;
t244 = t242.^2;
t247 = t51+t52+t242;
t248 = t53+t54+t241;
t251 = t169.*t241.*(3.77e+2./4.0e+2);
t252 = t170.*t242.*(3.77e+2./4.0e+2);
t253 = t169.*t241.*(3.77e+2./8.0e+2);
t255 = t170.*t242.*(3.77e+2./8.0e+2);
t263 = t213.*t222.*7.55625e-1;
t264 = t214.*t221.*7.55625e-1;
t237 = -t235;
t240 = -t238;
t245 = t243.*2.35625e-1;
t246 = t244.*2.35625e-1;
t249 = t45+t248;
t250 = t44+t247;
t254 = -t252;
t256 = -t255;
t265 = -t263;
t266 = -t264;
t257 = t170.*t250.*(3.77e+2./4.0e+2);
t258 = t169.*t249.*(3.77e+2./4.0e+2);
t259 = t170.*t250.*(3.77e+2./8.0e+2);
t261 = t169.*t249.*(3.77e+2./8.0e+2);
t267 = t242.*t250.*2.35625e-1;
t268 = t241.*t249.*2.35625e-1;
t260 = -t258;
t262 = -t261;
t269 = -t267;
t270 = -t268;
dL13_dq2 = [t163+t166+t167+t168+t185+t186+t201+t204-t21.*(t131+t132+t133+t137+t205+t210+t239+t240+t259+t262+qd_t2.*t20.*3.506259359511863+qd_t3.*t20.*3.506259359511863+t159.*t182.*2.563797941968288e-40-t160.*t181.*2.563797941968288e-40+t174.*t214.*1.51125-t176.*t213.*1.51125-t179.*t242.*(3.77e+2./8.0e+2)+t180.*t241.*(3.77e+2./8.0e+2)+t21.*(t18.*7.012518719023725+t130+t27.*t159.*1.120775539042995e-20+t29.*t160.*1.120775539042995e-20+t144.*t174.*3.0225+t145.*t176.*3.0225+t169.*t180.*(3.77e+2./4.0e+2)+t170.*t179.*(3.77e+2./4.0e+2)+9.911857811250264));t140+t141+t143+t163+t166+t167+t168+t185+t186+t201+t204+t225+t226+t265+t266+t269+t270+t181.*t191.*1.281898970984144e-40+t182.*t192.*1.281898970984144e-40+t213.*t219.*7.55625e-1+t214.*t220.*7.55625e-1+t241.*t248.*2.35625e-1+t242.*t247.*2.35625e-1-t21.*(t131+t132+t133+t136+t205+t210+t239+t240+t259+t262+t134.*t182.*2.563797941968288e-40-t135.*t181.*2.563797941968288e-40+t161.*t214.*1.51125-t162.*t213.*1.51125+t177.*t241.*(3.77e+2./8.0e+2)-t178.*t242.*(3.77e+2./8.0e+2)+t21.*(t130+t27.*t134.*1.120775539042995e-20+t29.*t135.*1.120775539042995e-20+t144.*t161.*3.0225+t145.*t162.*3.0225+t169.*t177.*(3.77e+2./4.0e+2)+t170.*t178.*(3.77e+2./4.0e+2)+9.911857811250264))+(t21.*(t137+t206+t209+t236+t237+t257+t260+t27.*t192.*1.120775539042995e-20-t29.*t191.*1.120775539042995e-20+t144.*t220.*3.0225-t145.*t219.*3.0225+t169.*t248.*(3.77e+2./4.0e+2)-t170.*t247.*(3.77e+2./4.0e+2)))./2.0;t140+t141+t143+t163+t166+t167+t168+t185+t186+t189+t190+t201+t204+t217+t218+t225+t226+t245+t246+t265+t266+t269+t270-t4.*t16.*1.746003136342289-t21.*(t136+t195+t198+t205+t210+t229+t232+t239+t240+t253+t256+t259+t262+qd_t1.*t10.*3.492006272684579+qd_t2.*t10.*3.492006272684579+t21.*(t151+t152+t164+t165+t173+t175+9.911857811250264))-qd_t2.^2.*t4.*1.746003136342289+(t21.*(t131+t132+t137+t196+t197+t206+t209+t227+t230+t236+t237+t251+t254+t257+t260))./2.0-qd_t1.*qd_t2.*t4.*3.492006272684579-qd_t1.*qd_t3.*t4.*1.746003136342289-qd_t2.*qd_t3.*t4.*1.746003136342289;t166+t168+t185+t186+t189+t190+t201+t204+t217+t218+t225+t226+t245+t246+t265+t266+t269+t270-(t21.*(t194-t196-t206+t208-t227+t228+t235-t236-t251+t252-t257+t258))./2.0-t21.*(t195+t198+t205+t210+t229+t232+t239+t240+t253+t256+t259+t262+t21.*(t151+t152+t164+t165+t173+t175+2.086379878317928e-1));t185+t186+t201+t204-t21.*(t31.*t213.*(-2.94584849325e-1)+t33.*t214.*2.94584849325e-1+t31.*t222.*2.94584849325e-1-t33.*t221.*2.94584849325e-1+t147.*t241.*(3.77e+2./8.0e+2)-t149.*t242.*(3.77e+2./8.0e+2)-t147.*t249.*(3.77e+2./8.0e+2)+t149.*t250.*(3.77e+2./8.0e+2)+t21.*(t31.*t145.*5.891696986500001e-1+t33.*t144.*5.891696986500001e-1+t147.*t169.*(3.77e+2./4.0e+2)+t149.*t170.*(3.77e+2./4.0e+2)+7.232013102222651e-2))+t202.*t214.*7.55625e-1+t203.*t213.*7.55625e-1-t202.*t221.*7.55625e-1-t203.*t222.*7.55625e-1+t233.*t242.*2.35625e-1+t234.*t241.*2.35625e-1-t233.*t250.*2.35625e-1-t234.*t249.*2.35625e-1+(t21.*(t31.*t222.*5.891696986500001e-1-t33.*t221.*5.891696986500001e-1+t144.*t202.*3.0225-t145.*t203.*3.0225-t147.*t249.*(3.77e+2./4.0e+2)+t149.*t250.*(3.77e+2./4.0e+2)+t169.*t234.*(3.77e+2./4.0e+2)-t170.*t233.*(3.77e+2./4.0e+2)))./2.0;t201+t204-(t21.*(t34.*t249.*3.398979597e-2-t35.*t250.*3.398979597e-2-t169.*t212.*(3.77e+2./4.0e+2)+t170.*t211.*(3.77e+2./4.0e+2)))./2.0-t21.*(t34.*t241.*1.6994897985e-2-t35.*t242.*1.6994897985e-2-t34.*t249.*1.6994897985e-2+t35.*t250.*1.6994897985e-2+t21.*(t34.*t169.*3.398979597e-2+t35.*t170.*3.398979597e-2+1.645348628313e-2))+t211.*t242.*2.35625e-1+t212.*t241.*2.35625e-1-t211.*t250.*2.35625e-1-t212.*t249.*2.35625e-1];
