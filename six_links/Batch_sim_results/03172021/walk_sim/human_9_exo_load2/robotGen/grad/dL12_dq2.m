function dL12_dq2 = dL12_dq2(in1,in2,sampT)
%DL12_DQ2
%    DL12_DQ2 = DL12_DQ2(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    18-Feb-2021 20:29:27

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
t128 = t4.*2.521611234715425e+1;
t141 = qd_t1.*t9.*1.79069642672382e+1;
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
t129 = qd_t1.*t20.*6.329758813673414;
t130 = qd_t1.*t20.*1.265951762734683e+1;
t133 = qd_t1.*qd_t2.*t18.*3.164879406836707;
t134 = qd_t1.*qd_t3.*t18.*3.164879406836707;
t135 = t23.*1.1367925055235e+2;
t136 = t24.*1.1367925055235e+2;
t137 = t16.*t18.*3.164879406836707;
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
t138 = -t133;
t139 = -t134;
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
t155 = t40.*6.896678435529809e+1;
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
t159 = t47.*6.896678435529809e+1;
t160 = t11.*(t41-t46).*(-1.101293717265e+1);
t169 = t87+t88+t89+t90;
t170 = t91+t92+t93+t94;
t171 = t27.*t131.*1.41390144925424e-20;
t172 = t29.*t132.*1.41390144925424e-20;
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
t156 = t44+t142;
t157 = t45+t143;
t179 = t81+t82+t169;
t180 = t83+t84+t170;
t185 = t132.*t169.*6.468659422812297e-40;
t186 = t131.*t170.*6.468659422812297e-40;
t188 = t109+t110+t111+t112+t113;
t189 = t104+t105+t106+t107+t108;
t101 = -t98;
t146 = t97+t100;
t150 = -t6.*(t98+t5.*(t41-t46));
t151 = -t12.*(t98+t5.*(t41-t46));
t158 = t97.*1.101293717265e+1;
t161 = t53+t144;
t162 = t54+t145;
t163 = t38+t156;
t164 = t39+t157;
t174 = t12.*(t98+t5.*(t41-t46)).*(-4.181477788909126);
t175 = t142.*t156.*4.7225;
t176 = t143.*t157.*4.7225;
t183 = t77+t179;
t184 = t78+t180;
t187 = -t185;
t192 = t29.*t179.*7.069507246271201e-21;
t193 = t27.*t180.*7.069507246271201e-21;
t201 = t116+t117+t118+t119+t120+t121;
t202 = t122+t123+t124+t125+t126+t127;
t206 = t56+t57+t58+t59+t189;
t207 = t61+t62+t63+t64+t188;
t208 = t169.*t179.*1.617164855703074e-40;
t209 = t170.*t180.*1.617164855703074e-40;
t147 = t99+t101;
t148 = t6.*t146;
t149 = t12.*t146;
t165 = t44+t161;
t166 = t45+t162;
t194 = -t192;
t195 = t29.*t183.*7.069507246271201e-21;
t196 = t29.*t183.*1.41390144925424e-20;
t197 = t27.*t184.*7.069507246271201e-21;
t198 = t27.*t184.*1.41390144925424e-20;
t203 = t131.*t184.*3.234329711406148e-40;
t204 = t132.*t183.*3.234329711406148e-40;
t210 = t49+t50+t206;
t211 = t51+t52+t207;
t214 = t170.*t184.*1.617164855703074e-40;
t215 = t169.*t183.*1.617164855703074e-40;
t218 = t65+t66+t67+t68+t69+t201;
t219 = t70+t71+t72+t73+t74+t202;
t220 = t157.*t206.*4.7225;
t221 = t156.*t207.*4.7225;
t152 = -t149;
t167 = t39+t166;
t168 = t38+t165;
t173 = t148.*4.181477788909126;
t177 = t148+t151;
t181 = t161.*t165.*(6.97e+2./4.0e+2);
t182 = t162.*t166.*(6.97e+2./4.0e+2);
t191 = t13.*(t149+t6.*(t98+t5.*(t41-t46))).*(-1.54116451744425e-1);
t199 = -t198;
t200 = -t197;
t205 = -t203;
t212 = t43+t211;
t213 = t42+t210;
t216 = -t214;
t217 = -t215;
t222 = -t220;
t223 = t142.*t211.*2.36125;
t224 = t143.*t210.*2.36125;
t235 = t61+t62+t63+t64+t219;
t236 = t56+t57+t58+t59+t218;
t256 = t207.*t211.*1.180625;
t257 = t206.*t210.*1.180625;
t178 = t150+t152;
t190 = t7.*t177.*1.54116451744425e-1;
t225 = -t224;
t226 = t142.*t212.*4.7225;
t227 = t143.*t213.*4.7225;
t229 = t142.*t212.*2.36125;
t230 = t143.*t213.*2.36125;
t232 = t156.*t212.*2.36125;
t233 = t157.*t213.*2.36125;
t237 = t49+t50+t236;
t238 = t51+t52+t235;
t241 = t165.*t235.*(6.97e+2./4.0e+2);
t242 = t166.*t236.*(6.97e+2./4.0e+2);
t258 = t206.*t213.*1.180625;
t259 = t207.*t212.*1.180625;
t228 = -t226;
t231 = -t229;
t234 = -t232;
t239 = t43+t238;
t240 = t42+t237;
t243 = -t242;
t244 = t161.*t238.*(6.97e+2./8.0e+2);
t245 = t162.*t237.*(6.97e+2./8.0e+2);
t260 = -t258;
t261 = -t259;
t262 = t235.*t238.*4.35625e-1;
t263 = t236.*t237.*4.35625e-1;
t246 = -t245;
t247 = t162.*t240.*(6.97e+2./4.0e+2);
t248 = t161.*t239.*(6.97e+2./4.0e+2);
t249 = t162.*t240.*(6.97e+2./8.0e+2);
t251 = t161.*t239.*(6.97e+2./8.0e+2);
t253 = t166.*t240.*(6.97e+2./8.0e+2);
t254 = t165.*t239.*(6.97e+2./8.0e+2);
t264 = t236.*t240.*4.35625e-1;
t265 = t235.*t239.*4.35625e-1;
t250 = -t248;
t252 = -t251;
t255 = -t254;
t266 = -t264;
t267 = -t265;
dL12_dq2 = [t135+t136+t155+t158+t159+t160+t173+t174+t190+t191-t21.*(t130+t141+t204+t205+t233+t234+t253+t255+qd_t2.*t9.*8.9534821336191+qd_t2.*t20.*6.329758813673414+qd_t3.*t20.*6.329758813673414+t153.*t180.*3.234329711406148e-40-t154.*t179.*3.234329711406148e-40+t163.*t211.*2.36125-t164.*t210.*2.36125-t167.*t237.*(6.97e+2./8.0e+2)+t168.*t238.*(6.97e+2./8.0e+2)+t21.*(t3.*1.79069642672382e+1+t18.*1.265951762734683e+1+t128+t131.*t153.*6.468659422812297e-40+t132.*t154.*6.468659422812297e-40+t156.*t163.*4.7225+t157.*t164.*4.7225+t165.*t168.*(6.97e+2./4.0e+2)+t166.*t167.*(6.97e+2./4.0e+2)+3.530437786124353e+1));t135+t136+t138+t139+t140+t155+t158+t159+t160+t173+t174+t190+t191-t21.*(t129+t204+t205+t233+t234+t253+t255+t21.*(t128+t131.^2.*6.468659422812297e-40+t132.^2.*6.468659422812297e-40+t156.^2.*4.7225+t157.^2.*4.7225+t165.^2.*(6.97e+2./4.0e+2)+t166.^2.*(6.97e+2./4.0e+2)+3.530437786124353e+1)+qd_t1.*t9.*8.9534821336191+t131.*t180.*3.234329711406148e-40-t132.*t179.*3.234329711406148e-40+t156.*t211.*2.36125-t157.*t210.*2.36125+t165.*t238.*(6.97e+2./8.0e+2)-t166.*t237.*(6.97e+2./8.0e+2))-t3.*t16.*4.47674106680955-t179.*t183.*1.617164855703074e-40-t180.*t184.*1.617164855703074e-40-t210.*t213.*1.180625-t211.*t212.*1.180625-t237.*t240.*4.35625e-1-t238.*t239.*4.35625e-1+(t21.*(t130+t141+t131.*t180.*6.468659422812297e-40-t132.*t179.*6.468659422812297e-40-t131.*t184.*6.468659422812297e-40+t132.*t183.*6.468659422812297e-40+t156.*t211.*4.7225-t157.*t210.*4.7225-t156.*t212.*4.7225+t157.*t213.*4.7225+t165.*t238.*(6.97e+2./4.0e+2)-t166.*t237.*(6.97e+2./4.0e+2)-t165.*t239.*(6.97e+2./4.0e+2)+t166.*t240.*(6.97e+2./4.0e+2)))./2.0+t179.^2.*1.617164855703074e-40+t180.^2.*1.617164855703074e-40+t210.^2.*1.180625+t211.^2.*1.180625+t237.^2.*4.35625e-1+t238.^2.*4.35625e-1-qd_t1.*qd_t2.*t3.*4.47674106680955;t138+t139+t140+t155+t158+t159+t160+t173+t174+t190+t191+t208+t209+t216+t217+t256+t257+t260+t261+t262+t263+t266+t267+(t21.*(t130+t186+t187+t196+t199+t221+t222+t227+t228+t241+t243+t247+t250+qd_t1.*t10.*2.521611234715425e+1+qd_t2.*t10.*2.521611234715425e+1+qd_t3.*t10.*1.260805617357713e+1))./2.0-t21.*(t129+t193+t194+t195+t200+t223+t225+t230+t231+t244+t246+t249+t252+t21.*(t4.*1.260805617357713e+1+t171+t172+t175+t176+t181+t182+1.770292282128059e+1));t158+t160+t173+t174+t190+t191+t208+t209+t216+t217+t256+t257+t260+t261+t262+t263+t266+t267-t21.*(t193+t194+t195+t200+t223+t225+t230+t231+t244+t246+t249+t252+t21.*(t171+t172+t175+t176+t181+t182+2.896782738879034e-1))-(t21.*(t185-t186-t196+t198+t220-t221+t226-t227-t241+t242-t247+t248))./2.0;t173+t174+t190+t191+(t21.*(t31.*t213.*9.205471966500001e-1-t33.*t212.*9.205471966500001e-1+t156.*t188.*4.7225-t157.*t189.*4.7225-t144.*t239.*(6.97e+2./4.0e+2)+t165.*t219.*(6.97e+2./4.0e+2)-t166.*t218.*(6.97e+2./4.0e+2)+t145.*t240.*(6.97e+2./4.0e+2)))./2.0+t188.*t211.*1.180625+t189.*t210.*1.180625-t188.*t212.*1.180625-t189.*t213.*1.180625+t218.*t237.*4.35625e-1+t219.*t238.*4.35625e-1-t218.*t240.*4.35625e-1-t219.*t239.*4.35625e-1-t21.*(t31.*t210.*(-4.602735983250001e-1)+t31.*t213.*4.602735983250001e-1+t33.*t211.*4.602735983250001e-1-t33.*t212.*4.602735983250001e-1+t144.*t238.*(6.97e+2./8.0e+2)-t145.*t237.*(6.97e+2./8.0e+2)-t144.*t239.*(6.97e+2./8.0e+2)+t145.*t240.*(6.97e+2./8.0e+2)+t21.*(t31.*t157.*9.205471966500001e-1+t33.*t156.*9.205471966500001e-1+t144.*t165.*(6.97e+2./4.0e+2)+t145.*t166.*(6.97e+2./4.0e+2)+1.177080545281428e-1));t190+t191+t201.*t237.*4.35625e-1+t202.*t238.*4.35625e-1-t201.*t240.*4.35625e-1-t202.*t239.*4.35625e-1-(t21.*(t34.*t239.*6.284055117e-2-t35.*t240.*6.284055117e-2-t165.*t202.*(6.97e+2./4.0e+2)+t166.*t201.*(6.97e+2./4.0e+2)))./2.0-t21.*(t21.*(t34.*t165.*6.284055117e-2+t35.*t166.*6.284055117e-2+3.041931018393e-2)+t34.*t238.*3.1420275585e-2-t35.*t237.*3.1420275585e-2-t34.*t239.*3.1420275585e-2+t35.*t240.*3.1420275585e-2)];
