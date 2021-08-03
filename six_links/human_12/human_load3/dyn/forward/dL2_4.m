function out1 = dL2_4(in1,in2,sampT)
%DL2_4
%    OUT1 = DL2_4(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    01-Aug-2021 19:43:13

dq1 = in2(:,1);
dq2 = in2(:,2);
dq3 = in2(:,3);
dq4 = in2(:,4);
dq5 = in2(:,5);
dq6 = in2(:,6);
q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
q6 = in1(:,6);
t2 = cos(q4);
t3 = cos(q5);
t4 = cos(q6);
t5 = sin(q4);
t6 = sin(q6);
t7 = q3+q4;
t8 = q4+q5;
t9 = q5+q6;
t10 = dq1.^2;
t11 = dq2.^2;
t12 = dq3.^2;
t13 = cos(t7);
t14 = cos(t8);
t15 = cos(t9);
t16 = q2+t7;
t17 = q5+t7;
t18 = q6+t8;
t19 = sin(t7);
t20 = sin(t8);
t21 = sin(t9);
t25 = t7+t9;
t22 = cos(t17);
t23 = cos(t18);
t24 = q5+t16;
t26 = sin(t16);
t27 = sin(t17);
t28 = sin(t18);
t29 = cos(t25);
t30 = t9+t16;
t32 = sin(t25);
t31 = sin(t24);
t33 = sin(t30);
t34 = cos(t30);
out1 = cos(q1+t16).*(-1.4909183186625e+1)-cos(q1+t24).*4.950835139761875-t5.*t10.*9.456160834575e-1-t5.*t11.*9.456160834575e-1-t5.*t12.*9.456160834575e-1-t10.*t19.*6.81399824844375e-1-t10.*t20.*3.140070972436125e-1-t11.*t19.*6.81399824844375e-1-t11.*t20.*3.140070972436125e-1-t12.*t20.*3.140070972436125e-1-t10.*t23.*2.09265225975e-2-t11.*t23.*2.09265225975e-2-t12.*t23.*2.09265225975e-2-t10.*t26.*6.81399824844375e-1-t10.*t27.*2.262698200726031e-1-t10.*t28.*1.0574225526267e-2-t11.*t27.*2.262698200726031e-1-t10.*t29.*1.5079405989375e-2-t11.*t28.*1.0574225526267e-2-t11.*t29.*1.5079405989375e-2-t12.*t28.*1.0574225526267e-2-t10.*t31.*2.262698200726031e-1-t10.*t32.*7.61966251157475e-3-t10.*t33.*7.61966251157475e-3-t11.*t32.*7.61966251157475e-3-t10.*t34.*1.5079405989375e-2-4.501575681747185e+18.*cos(q1+t30+atan(1.979012320620293)).*8.21203105516588e-20+(dq1.*1.559595569006101+dq2.*1.559595569006101+dq3.*1.559595569006101+dq4.*1.559595569006101+dq5.*3.812664659543186e-1+dq6.*2.248006586491552e-2+dq1.*t2.*1.891232166915+dq1.*t3.*9.050792802904125e-1+dq2.*t2.*1.891232166915+dq1.*t4.*3.0478650046299e-2+dq2.*t3.*9.050792802904125e-1+dq3.*t2.*1.891232166915+dq2.*t4.*3.0478650046299e-2+dq3.*t3.*9.050792802904125e-1-dq1.*t6.*6.03176239575e-2+dq3.*t4.*3.0478650046299e-2+dq4.*t3.*9.050792802904125e-1-dq2.*t6.*6.03176239575e-2+dq4.*t4.*3.0478650046299e-2+dq5.*t3.*4.525396401452063e-1-dq3.*t6.*6.03176239575e-2+dq5.*t4.*3.0478650046299e-2-dq4.*t6.*6.03176239575e-2+dq6.*t4.*1.52393250231495e-2-dq5.*t6.*6.03176239575e-2-dq6.*t6.*3.015881197875e-2+dq1.*t13.*1.36279964968875+dq1.*t14.*6.28014194487225e-1+dq2.*t13.*1.36279964968875+dq1.*t15.*3.0478650046299e-2+dq2.*t14.*6.28014194487225e-1+dq2.*t15.*3.0478650046299e-2+dq3.*t14.*6.28014194487225e-1+dq3.*t15.*3.0478650046299e-2+dq4.*t15.*3.0478650046299e-2+dq5.*t15.*1.52393250231495e-2+dq6.*t15.*1.52393250231495e-2-dq1.*t21.*6.03176239575e-2+dq1.*t22.*4.525396401452063e-1-dq2.*t21.*6.03176239575e-2+dq1.*t23.*2.1148451052534e-2+dq2.*t22.*4.525396401452063e-1-dq3.*t21.*6.03176239575e-2+dq2.*t23.*2.1148451052534e-2-dq4.*t21.*6.03176239575e-2+dq3.*t23.*2.1148451052534e-2-dq5.*t21.*3.015881197875e-2-dq6.*t21.*3.015881197875e-2-dq1.*t28.*4.1853045195e-2+dq1.*t29.*1.52393250231495e-2-dq2.*t28.*4.1853045195e-2+dq2.*t29.*1.52393250231495e-2-dq3.*t28.*4.1853045195e-2-dq1.*t32.*3.015881197875e-2-dq1.*t33.*3.015881197875e-2-dq2.*t32.*3.015881197875e-2+dq1.*t34.*1.52393250231495e-2+dq1.*cos(t16).*1.36279964968875+dq1.*cos(t24).*4.525396401452063e-1)./sampT-dq1.*dq2.*t5.*1.891232166915-dq1.*dq3.*t5.*1.891232166915-dq1.*dq4.*t5.*9.456160834575e-1-dq2.*dq3.*t5.*1.891232166915-dq2.*dq4.*t5.*9.456160834575e-1-dq3.*dq4.*t5.*9.456160834575e-1-dq1.*dq2.*t19.*1.36279964968875-dq1.*dq2.*t20.*6.28014194487225e-1-dq1.*dq3.*t19.*6.81399824844375e-1-dq1.*dq3.*t20.*6.28014194487225e-1-dq1.*dq4.*t19.*6.81399824844375e-1-dq2.*dq3.*t19.*6.81399824844375e-1-dq1.*dq4.*t20.*3.140070972436125e-1-dq2.*dq3.*t20.*6.28014194487225e-1-dq2.*dq4.*t19.*6.81399824844375e-1-dq1.*dq2.*t23.*4.1853045195e-2-dq1.*dq5.*t20.*3.140070972436125e-1-dq2.*dq4.*t20.*3.140070972436125e-1-dq1.*dq3.*t23.*4.1853045195e-2-dq2.*dq5.*t20.*3.140070972436125e-1-dq3.*dq4.*t20.*3.140070972436125e-1-dq1.*dq4.*t23.*2.09265225975e-2-dq2.*dq3.*t23.*4.1853045195e-2-dq3.*dq5.*t20.*3.140070972436125e-1-dq1.*dq2.*t26.*6.81399824844375e-1-dq1.*dq5.*t23.*2.09265225975e-2-dq2.*dq4.*t23.*2.09265225975e-2-dq1.*dq2.*t27.*4.525396401452063e-1-dq1.*dq3.*t26.*6.81399824844375e-1-dq1.*dq6.*t23.*2.09265225975e-2-dq2.*dq5.*t23.*2.09265225975e-2-dq3.*dq4.*t23.*2.09265225975e-2-dq1.*dq2.*t28.*2.1148451052534e-2-dq1.*dq3.*t27.*2.262698200726031e-1-dq1.*dq4.*t26.*6.81399824844375e-1-dq2.*dq6.*t23.*2.09265225975e-2-dq3.*dq5.*t23.*2.09265225975e-2-dq1.*dq2.*t29.*3.015881197875e-2-dq1.*dq3.*t28.*2.1148451052534e-2-dq1.*dq4.*t27.*2.262698200726031e-1-dq2.*dq3.*t27.*2.262698200726031e-1-dq3.*dq6.*t23.*2.09265225975e-2-dq1.*dq3.*t29.*1.5079405989375e-2-dq1.*dq4.*t28.*1.0574225526267e-2-dq1.*dq5.*t27.*2.262698200726031e-1-dq2.*dq3.*t28.*2.1148451052534e-2-dq2.*dq4.*t27.*2.262698200726031e-1-dq1.*dq2.*t31.*2.262698200726031e-1-dq1.*dq4.*t29.*1.5079405989375e-2-dq1.*dq5.*t28.*1.0574225526267e-2-dq2.*dq3.*t29.*1.5079405989375e-2-dq2.*dq4.*t28.*1.0574225526267e-2-dq2.*dq5.*t27.*2.262698200726031e-1-dq1.*dq2.*t32.*1.52393250231495e-2-dq1.*dq3.*t31.*2.262698200726031e-1-dq1.*dq5.*t29.*1.5079405989375e-2-dq1.*dq6.*t28.*1.0574225526267e-2-dq2.*dq4.*t29.*1.5079405989375e-2-dq2.*dq5.*t28.*1.0574225526267e-2-dq3.*dq4.*t28.*1.0574225526267e-2-dq1.*dq2.*t33.*7.61966251157475e-3-dq1.*dq3.*t32.*7.61966251157475e-3-dq1.*dq4.*t31.*2.262698200726031e-1-dq1.*dq6.*t29.*1.5079405989375e-2-dq2.*dq5.*t29.*1.5079405989375e-2-dq2.*dq6.*t28.*1.0574225526267e-2-dq3.*dq5.*t28.*1.0574225526267e-2-dq1.*dq2.*t34.*1.5079405989375e-2-dq1.*dq3.*t33.*7.61966251157475e-3-dq1.*dq4.*t32.*7.61966251157475e-3-dq1.*dq5.*t31.*2.262698200726031e-1-dq2.*dq3.*t32.*7.61966251157475e-3-dq2.*dq6.*t29.*1.5079405989375e-2-dq3.*dq6.*t28.*1.0574225526267e-2-dq1.*dq3.*t34.*1.5079405989375e-2-dq1.*dq4.*t33.*7.61966251157475e-3-dq1.*dq5.*t32.*7.61966251157475e-3-dq2.*dq4.*t32.*7.61966251157475e-3-dq1.*dq4.*t34.*1.5079405989375e-2-dq1.*dq5.*t33.*7.61966251157475e-3-dq1.*dq6.*t32.*7.61966251157475e-3-dq2.*dq5.*t32.*7.61966251157475e-3-dq1.*dq5.*t34.*1.5079405989375e-2-dq1.*dq6.*t33.*7.61966251157475e-3-dq2.*dq6.*t32.*7.61966251157475e-3-dq1.*dq6.*t34.*1.5079405989375e-2;
