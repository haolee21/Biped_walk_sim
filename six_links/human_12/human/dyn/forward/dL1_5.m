function out1 = dL1_5(in1,in2,sampT)
%DL1_5
%    OUT1 = DL1_5(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    01-Aug-2021 23:36:58

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
t2 = cos(q5);
t3 = cos(q6);
t4 = sin(q5);
t5 = sin(q6);
t6 = q4+q5;
t7 = q5+q6;
t8 = dq1.^2;
t9 = dq2.^2;
t10 = dq3.^2;
t11 = dq4.^2;
t12 = cos(t6);
t13 = cos(t7);
t14 = q3+t6;
t15 = q6+t6;
t16 = sin(t6);
t17 = sin(t7);
t18 = cos(t14);
t19 = cos(t15);
t20 = q2+t14;
t21 = q6+t14;
t22 = sin(t14);
t23 = sin(t15);
t24 = cos(t21);
t25 = q6+t20;
t26 = sin(t20);
t27 = sin(t21);
t28 = sin(t25);
t29 = cos(t25);
out1 = cos(q1+t20).*(-4.950835139761875)-t4.*t8.*2.262698200726031e-1-t4.*t9.*2.262698200726031e-1-t4.*t10.*2.262698200726031e-1-t4.*t11.*2.262698200726031e-1-t8.*t13.*1.5079405989375e-2-t9.*t13.*1.5079405989375e-2-t10.*t13.*1.5079405989375e-2-t8.*t16.*3.140070972436125e-1-t11.*t13.*1.5079405989375e-2-t8.*t17.*7.61966251157475e-3-t9.*t16.*3.140070972436125e-1-t9.*t17.*7.61966251157475e-3-t10.*t16.*3.140070972436125e-1-t8.*t19.*2.09265225975e-2-t10.*t17.*7.61966251157475e-3-t9.*t19.*2.09265225975e-2-t11.*t17.*7.61966251157475e-3-t10.*t19.*2.09265225975e-2-t8.*t22.*2.262698200726031e-1-t8.*t23.*1.0574225526267e-2-t9.*t22.*2.262698200726031e-1-t8.*t24.*1.5079405989375e-2-t9.*t23.*1.0574225526267e-2-t9.*t24.*1.5079405989375e-2-t10.*t23.*1.0574225526267e-2-t8.*t26.*2.262698200726031e-1-t8.*t27.*7.61966251157475e-3-t8.*t28.*7.61966251157475e-3-t9.*t27.*7.61966251157475e-3-t8.*t29.*1.5079405989375e-2-4.501575681747185e+18.*cos(q1+t25+atan(1.979012320620293)).*8.21203105516588e-20-(dq1.*3.812664659543186e-1+dq2.*3.812664659543186e-1+dq3.*3.812664659543186e-1+dq4.*3.812664659543186e-1+dq5.*3.812664659543186e-1+dq6.*2.248006586491552e-2+dq1.*t2.*4.525396401452063e-1+dq1.*t3.*3.0478650046299e-2+dq2.*t2.*4.525396401452063e-1+dq2.*t3.*3.0478650046299e-2+dq3.*t2.*4.525396401452063e-1-dq1.*t5.*6.03176239575e-2+dq3.*t3.*3.0478650046299e-2+dq4.*t2.*4.525396401452063e-1-dq2.*t5.*6.03176239575e-2+dq4.*t3.*3.0478650046299e-2-dq3.*t5.*6.03176239575e-2+dq5.*t3.*3.0478650046299e-2-dq4.*t5.*6.03176239575e-2+dq6.*t3.*1.52393250231495e-2-dq5.*t5.*6.03176239575e-2-dq6.*t5.*3.015881197875e-2+dq1.*t12.*6.28014194487225e-1+dq1.*t13.*1.52393250231495e-2+dq2.*t12.*6.28014194487225e-1+dq2.*t13.*1.52393250231495e-2+dq3.*t12.*6.28014194487225e-1+dq3.*t13.*1.52393250231495e-2+dq4.*t13.*1.52393250231495e-2-dq1.*t17.*3.015881197875e-2+dq1.*t18.*4.525396401452063e-1-dq2.*t17.*3.015881197875e-2+dq1.*t19.*2.1148451052534e-2+dq2.*t18.*4.525396401452063e-1-dq3.*t17.*3.015881197875e-2+dq2.*t19.*2.1148451052534e-2-dq4.*t17.*3.015881197875e-2+dq3.*t19.*2.1148451052534e-2-dq1.*t23.*4.1853045195e-2+dq1.*t24.*1.52393250231495e-2-dq2.*t23.*4.1853045195e-2+dq2.*t24.*1.52393250231495e-2-dq3.*t23.*4.1853045195e-2-dq1.*t27.*3.015881197875e-2-dq1.*t28.*3.015881197875e-2-dq2.*t27.*3.015881197875e-2+dq1.*t29.*1.52393250231495e-2+dq1.*cos(t20).*4.525396401452063e-1)./sampT-dq1.*dq2.*t4.*4.525396401452063e-1-dq1.*dq3.*t4.*4.525396401452063e-1-dq1.*dq4.*t4.*4.525396401452063e-1-dq2.*dq3.*t4.*4.525396401452063e-1-dq1.*dq5.*t4.*2.262698200726031e-1-dq2.*dq4.*t4.*4.525396401452063e-1-dq2.*dq5.*t4.*2.262698200726031e-1-dq3.*dq4.*t4.*4.525396401452063e-1-dq3.*dq5.*t4.*2.262698200726031e-1-dq4.*dq5.*t4.*2.262698200726031e-1-dq1.*dq2.*t13.*3.015881197875e-2-dq1.*dq3.*t13.*3.015881197875e-2-dq1.*dq4.*t13.*3.015881197875e-2-dq2.*dq3.*t13.*3.015881197875e-2-dq1.*dq2.*t16.*6.28014194487225e-1-dq1.*dq5.*t13.*1.5079405989375e-2-dq2.*dq4.*t13.*3.015881197875e-2-dq1.*dq2.*t17.*1.52393250231495e-2-dq1.*dq3.*t16.*6.28014194487225e-1-dq1.*dq6.*t13.*1.5079405989375e-2-dq2.*dq5.*t13.*1.5079405989375e-2-dq3.*dq4.*t13.*3.015881197875e-2-dq1.*dq3.*t17.*1.52393250231495e-2-dq1.*dq4.*t16.*3.140070972436125e-1-dq2.*dq3.*t16.*6.28014194487225e-1-dq2.*dq6.*t13.*1.5079405989375e-2-dq3.*dq5.*t13.*1.5079405989375e-2-dq1.*dq2.*t19.*4.1853045195e-2-dq1.*dq4.*t17.*1.52393250231495e-2-dq1.*dq5.*t16.*3.140070972436125e-1-dq2.*dq3.*t17.*1.52393250231495e-2-dq2.*dq4.*t16.*3.140070972436125e-1-dq3.*dq6.*t13.*1.5079405989375e-2-dq4.*dq5.*t13.*1.5079405989375e-2-dq1.*dq3.*t19.*4.1853045195e-2-dq1.*dq5.*t17.*7.61966251157475e-3-dq2.*dq4.*t17.*1.52393250231495e-2-dq2.*dq5.*t16.*3.140070972436125e-1-dq3.*dq4.*t16.*3.140070972436125e-1-dq4.*dq6.*t13.*1.5079405989375e-2-dq1.*dq4.*t19.*2.09265225975e-2-dq1.*dq6.*t17.*7.61966251157475e-3-dq2.*dq3.*t19.*4.1853045195e-2-dq2.*dq5.*t17.*7.61966251157475e-3-dq3.*dq4.*t17.*1.52393250231495e-2-dq3.*dq5.*t16.*3.140070972436125e-1-dq1.*dq2.*t22.*4.525396401452063e-1-dq1.*dq5.*t19.*2.09265225975e-2-dq2.*dq4.*t19.*2.09265225975e-2-dq2.*dq6.*t17.*7.61966251157475e-3-dq3.*dq5.*t17.*7.61966251157475e-3-dq1.*dq2.*t23.*2.1148451052534e-2-dq1.*dq3.*t22.*2.262698200726031e-1-dq1.*dq6.*t19.*2.09265225975e-2-dq2.*dq5.*t19.*2.09265225975e-2-dq3.*dq4.*t19.*2.09265225975e-2-dq3.*dq6.*t17.*7.61966251157475e-3-dq4.*dq5.*t17.*7.61966251157475e-3-dq1.*dq2.*t24.*3.015881197875e-2-dq1.*dq3.*t23.*2.1148451052534e-2-dq1.*dq4.*t22.*2.262698200726031e-1-dq2.*dq3.*t22.*2.262698200726031e-1-dq2.*dq6.*t19.*2.09265225975e-2-dq3.*dq5.*t19.*2.09265225975e-2-dq4.*dq6.*t17.*7.61966251157475e-3-dq1.*dq3.*t24.*1.5079405989375e-2-dq1.*dq4.*t23.*1.0574225526267e-2-dq1.*dq5.*t22.*2.262698200726031e-1-dq2.*dq3.*t23.*2.1148451052534e-2-dq2.*dq4.*t22.*2.262698200726031e-1-dq3.*dq6.*t19.*2.09265225975e-2-dq1.*dq2.*t26.*2.262698200726031e-1-dq1.*dq4.*t24.*1.5079405989375e-2-dq1.*dq5.*t23.*1.0574225526267e-2-dq2.*dq3.*t24.*1.5079405989375e-2-dq2.*dq4.*t23.*1.0574225526267e-2-dq2.*dq5.*t22.*2.262698200726031e-1-dq1.*dq2.*t27.*1.52393250231495e-2-dq1.*dq3.*t26.*2.262698200726031e-1-dq1.*dq5.*t24.*1.5079405989375e-2-dq1.*dq6.*t23.*1.0574225526267e-2-dq2.*dq4.*t24.*1.5079405989375e-2-dq2.*dq5.*t23.*1.0574225526267e-2-dq3.*dq4.*t23.*1.0574225526267e-2-dq1.*dq2.*t28.*7.61966251157475e-3-dq1.*dq3.*t27.*7.61966251157475e-3-dq1.*dq4.*t26.*2.262698200726031e-1-dq1.*dq6.*t24.*1.5079405989375e-2-dq2.*dq5.*t24.*1.5079405989375e-2-dq2.*dq6.*t23.*1.0574225526267e-2-dq3.*dq5.*t23.*1.0574225526267e-2-dq1.*dq2.*t29.*1.5079405989375e-2-dq1.*dq3.*t28.*7.61966251157475e-3-dq1.*dq4.*t27.*7.61966251157475e-3-dq1.*dq5.*t26.*2.262698200726031e-1-dq2.*dq3.*t27.*7.61966251157475e-3-dq2.*dq6.*t24.*1.5079405989375e-2-dq3.*dq6.*t23.*1.0574225526267e-2-dq1.*dq3.*t29.*1.5079405989375e-2-dq1.*dq4.*t28.*7.61966251157475e-3-dq1.*dq5.*t27.*7.61966251157475e-3-dq2.*dq4.*t27.*7.61966251157475e-3-dq1.*dq4.*t29.*1.5079405989375e-2-dq1.*dq5.*t28.*7.61966251157475e-3-dq1.*dq6.*t27.*7.61966251157475e-3-dq2.*dq5.*t27.*7.61966251157475e-3-dq1.*dq5.*t29.*1.5079405989375e-2-dq1.*dq6.*t28.*7.61966251157475e-3-dq2.*dq6.*t27.*7.61966251157475e-3-dq1.*dq6.*t29.*1.5079405989375e-2;
