function dL23_dq2 = dL23_dq2(in1,in2,sampT)
%DL23_DQ2
%    DL23_DQ2 = DL23_DQ2(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    23-Feb-2021 13:46:27

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
t130 = t4.*1.540779201478827e+1;
t131 = qd_t1.*t10.*1.540779201478827e+1;
t132 = qd_t2.*t10.*1.540779201478827e+1;
t133 = qd_t3.*t10.*7.703896007394133;
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
t136 = qd_t1.*t20.*7.735340480893701;
t137 = qd_t1.*t20.*1.54706809617874e+1;
t138 = qd_t1.*qd_t2.*t18.*3.867670240446851;
t139 = qd_t1.*qd_t3.*t18.*3.867670240446851;
t140 = t16.*t18.*3.867670240446851;
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
t141 = -t138;
t142 = -t139;
t143 = -t140;
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
t156 = t42.*8.428149864228443e+1;
t166 = t36.*3.090466165451806e-1;
t167 = t37.*3.090466165451806e-1;
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
t160 = t77+t134;
t161 = t78+t135;
t164 = t49.*8.428149864228443e+1;
t168 = t11.*(t43-t48).*(-1.101293717265e+1);
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
t162 = t46+t144;
t163 = t47+t145;
t183 = t182.^2;
t184 = t181.^2;
t191 = t83+t84+t181;
t192 = t85+t86+t182;
t193 = t29.*t181.*7.069507246271201e-21;
t194 = t29.*t181.*1.41390144925424e-20;
t195 = t27.*t182.*7.069507246271201e-21;
t196 = t27.*t182.*1.41390144925424e-20;
t200 = t111+t112+t113+t114+t115;
t201 = t106+t107+t108+t109+t110;
t103 = -t100;
t150 = t99+t102;
t151 = t148.*4.7225;
t152 = t146.*4.7225;
t157 = -t6.*(t100+t5.*(t43-t48));
t158 = -t12.*(t100+t5.*(t43-t48));
t165 = t99.*1.101293717265e+1;
t169 = t55+t147;
t170 = t56+t149;
t173 = t40+t162;
t174 = t41+t163;
t186 = t12.*(t100+t5.*(t43-t48)).*(-4.181477788909126);
t189 = t184.*1.617164855703074e-40;
t190 = t183.*1.617164855703074e-40;
t197 = -t194;
t198 = t79+t191;
t199 = t80+t192;
t210 = t118+t119+t120+t121+t122+t123;
t211 = t124+t125+t126+t127+t128+t129;
t212 = t58+t59+t60+t61+t201;
t213 = t63+t64+t65+t66+t200;
t153 = t101+t103;
t154 = t6.*t150;
t155 = t12.*t150;
t171 = t170.^2;
t172 = t169.^2;
t177 = t46+t169;
t178 = t47+t170;
t204 = t29.*t198.*7.069507246271201e-21;
t205 = t29.*t198.*1.41390144925424e-20;
t206 = t27.*t199.*7.069507246271201e-21;
t207 = t27.*t199.*1.41390144925424e-20;
t214 = t213.^2;
t215 = t212.^2;
t218 = t51+t52+t212;
t219 = t53+t54+t213;
t222 = t182.*t199.*1.617164855703074e-40;
t223 = t181.*t198.*1.617164855703074e-40;
t226 = t144.*t213.*4.7225;
t227 = t145.*t212.*4.7225;
t228 = t144.*t213.*2.36125;
t230 = t145.*t212.*2.36125;
t231 = t67+t68+t69+t70+t71+t210;
t232 = t72+t73+t74+t75+t76+t211;
t159 = -t155;
t175 = t172.*(6.97e+2./4.0e+2);
t176 = t171.*(6.97e+2./4.0e+2);
t179 = t41+t178;
t180 = t40+t177;
t185 = t154.*4.181477788909126;
t187 = t154+t158;
t203 = t13.*(t155+t6.*(t100+t5.*(t43-t48))).*(-1.54116451744425e-1);
t208 = -t207;
t209 = -t206;
t216 = t215.*1.180625;
t217 = t214.*1.180625;
t220 = t45+t219;
t221 = t44+t218;
t224 = -t222;
t225 = -t223;
t229 = -t227;
t239 = t63+t64+t65+t66+t232;
t240 = t58+t59+t60+t61+t231;
t188 = t157+t159;
t202 = t7.*t187.*1.54116451744425e-1;
t233 = t144.*t220.*4.7225;
t234 = t145.*t221.*4.7225;
t236 = t144.*t220.*2.36125;
t237 = t145.*t221.*2.36125;
t241 = t239.^2;
t242 = t240.^2;
t245 = t51+t52+t240;
t246 = t53+t54+t239;
t249 = t169.*t239.*(6.97e+2./4.0e+2);
t250 = t170.*t240.*(6.97e+2./4.0e+2);
t251 = t169.*t239.*(6.97e+2./8.0e+2);
t253 = t170.*t240.*(6.97e+2./8.0e+2);
t260 = t212.*t221.*1.180625;
t261 = t213.*t220.*1.180625;
t235 = -t233;
t238 = -t236;
t243 = t241.*4.35625e-1;
t244 = t242.*4.35625e-1;
t247 = t45+t246;
t248 = t44+t245;
t252 = -t250;
t262 = -t260;
t263 = -t261;
t254 = t170.*t248.*(6.97e+2./4.0e+2);
t255 = t169.*t247.*(6.97e+2./4.0e+2);
t256 = t170.*t248.*(6.97e+2./8.0e+2);
t258 = t169.*t247.*(6.97e+2./8.0e+2);
t264 = t240.*t248.*4.35625e-1;
t265 = t239.*t247.*4.35625e-1;
t257 = -t255;
t259 = -t258;
t266 = -t264;
t267 = -t265;
dL23_dq2 = [t156+t164+t165+t168+t185+t186+t202+t203-t21.*(t131+t132+t133+t137+t204+t209+t237+t238+t256+t259+qd_t2.*t20.*7.735340480893701+qd_t3.*t20.*7.735340480893701-t21.*(t18.*1.54706809617874e+1+t130+t27.*t160.*1.41390144925424e-20+t29.*t161.*1.41390144925424e-20+t144.*t173.*4.7225+t145.*t174.*4.7225+t169.*t180.*(6.97e+2./4.0e+2)+t170.*t179.*(6.97e+2./4.0e+2)+2.154943731672462e+1)+t160.*t182.*3.234329711406148e-40-t161.*t181.*3.234329711406148e-40+t173.*t213.*2.36125-t174.*t212.*2.36125-t179.*t240.*(6.97e+2./8.0e+2)+t180.*t239.*(6.97e+2./8.0e+2));t141+t142+t143+t156+t164+t165+t168+t185+t186+t202+t203+t224+t225+t262+t263+t266+t267-t21.*(t131+t132+t133+t136+t204+t209+t237+t238+t256+t259+t134.*t182.*3.234329711406148e-40-t135.*t181.*3.234329711406148e-40+t162.*t213.*2.36125-t163.*t212.*2.36125+t177.*t239.*(6.97e+2./8.0e+2)-t178.*t240.*(6.97e+2./8.0e+2)-t21.*(t130+t27.*t134.*1.41390144925424e-20+t29.*t135.*1.41390144925424e-20+t144.*t162.*4.7225+t145.*t163.*4.7225+t169.*t177.*(6.97e+2./4.0e+2)+t170.*t178.*(6.97e+2./4.0e+2)+2.154943731672462e+1))+t181.*t191.*1.617164855703074e-40+t182.*t192.*1.617164855703074e-40+t212.*t218.*1.180625+t213.*t219.*1.180625+t239.*t246.*4.35625e-1+t240.*t245.*4.35625e-1-(t21.*(t137+t205+t208+t234+t235+t254+t257+t27.*t192.*1.41390144925424e-20-t29.*t191.*1.41390144925424e-20+t144.*t219.*4.7225-t145.*t218.*4.7225+t169.*t246.*(6.97e+2./4.0e+2)-t170.*t245.*(6.97e+2./4.0e+2)))./2.0;t141+t142+t143+t156+t164+t165+t168+t185+t186+t189+t190+t202+t203+t216+t217+t224+t225+t243+t244+t262+t263+t266+t267-t4.*t16.*3.851948003697067-t21.*(t136-t193+t195+t204+t209+t228-t230+t237+t238+t251-t253+t256+t259-t21.*(t151+t152+t166+t167+t175+t176+2.154943731672462e+1)+qd_t1.*t10.*7.703896007394133+qd_t2.*t10.*7.703896007394133)-qd_t2.^2.*t4.*3.851948003697067-(t21.*(t131+t132+t137+t196+t197+t205+t208+t226+t229+t234+t235+t249+t252+t254+t257))./2.0-qd_t1.*qd_t2.*t4.*7.703896007394133-qd_t1.*qd_t3.*t4.*3.851948003697067-qd_t2.*qd_t3.*t4.*3.851948003697067;t165+t168+t185+t186+t189+t190+t202+t203+t216+t217+t224+t225+t243+t244+t262+t263+t266+t267+t21.*(t193-t195-t204+t206-t228+t230+t236-t237-t251+t253-t256+t258+t21.*(t151+t152+t166+t167+t175+t176+2.896782738879034e-1))+(t21.*(t194-t196-t205+t207-t226+t227+t233-t234-t249+t250-t254+t255))./2.0;t185+t186+t202+t203-(t21.*(t31.*t221.*9.205471966500001e-1-t33.*t220.*9.205471966500001e-1+t144.*t200.*4.7225-t145.*t201.*4.7225-t147.*t247.*(6.97e+2./4.0e+2)+t149.*t248.*(6.97e+2./4.0e+2)+t169.*t232.*(6.97e+2./4.0e+2)-t170.*t231.*(6.97e+2./4.0e+2)))./2.0+t200.*t213.*1.180625+t201.*t212.*1.180625-t200.*t220.*1.180625-t201.*t221.*1.180625+t231.*t240.*4.35625e-1+t232.*t239.*4.35625e-1-t231.*t248.*4.35625e-1-t232.*t247.*4.35625e-1+t21.*(t31.*t212.*4.602735983250001e-1-t33.*t213.*4.602735983250001e-1-t31.*t221.*4.602735983250001e-1+t33.*t220.*4.602735983250001e-1-t147.*t239.*(6.97e+2./8.0e+2)+t149.*t240.*(6.97e+2./8.0e+2)+t147.*t247.*(6.97e+2./8.0e+2)-t149.*t248.*(6.97e+2./8.0e+2)+t21.*(t31.*t145.*9.205471966500001e-1+t33.*t144.*9.205471966500001e-1+t147.*t169.*(6.97e+2./4.0e+2)+t149.*t170.*(6.97e+2./4.0e+2)+1.177080545281428e-1));t202+t203+t210.*t240.*4.35625e-1+t211.*t239.*4.35625e-1-t210.*t248.*4.35625e-1-t211.*t247.*4.35625e-1+(t21.*(t34.*t247.*6.284055117e-2-t35.*t248.*6.284055117e-2-t169.*t211.*(6.97e+2./4.0e+2)+t170.*t210.*(6.97e+2./4.0e+2)))./2.0+t21.*(t21.*(t34.*t169.*6.284055117e-2+t35.*t170.*6.284055117e-2+3.041931018393e-2)-t34.*t239.*3.1420275585e-2+t35.*t240.*3.1420275585e-2+t34.*t247.*3.1420275585e-2-t35.*t248.*3.1420275585e-2)];
