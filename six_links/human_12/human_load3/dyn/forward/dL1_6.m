function out1 = dL1_6(in1,in2,sampT)
%DL1_6
%    OUT1 = DL1_6(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    01-Aug-2021 19:43:12

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
t2 = cos(q6);
t3 = sin(q6);
t4 = q5+q6;
t5 = dq1.^2;
t6 = dq2.^2;
t7 = dq3.^2;
t8 = dq4.^2;
t9 = dq5.^2;
t10 = cos(t4);
t11 = q4+t4;
t12 = sin(t4);
t13 = cos(t11);
t14 = q3+t11;
t15 = sin(t11);
t16 = cos(t14);
t17 = q2+t14;
t18 = sin(t14);
t19 = sin(t17);
t20 = cos(t17);
out1 = t2.*t5.*(-1.5079405989375e-2)-t2.*t6.*1.5079405989375e-2-t3.*t5.*7.61966251157475e-3-t2.*t7.*1.5079405989375e-2-t3.*t6.*7.61966251157475e-3-t2.*t8.*1.5079405989375e-2-t3.*t7.*7.61966251157475e-3-t2.*t9.*1.5079405989375e-2-t3.*t8.*7.61966251157475e-3-t3.*t9.*7.61966251157475e-3-t5.*t10.*1.5079405989375e-2-t6.*t10.*1.5079405989375e-2-t5.*t12.*7.61966251157475e-3-t7.*t10.*1.5079405989375e-2-t5.*t13.*2.09265225975e-2-t6.*t12.*7.61966251157475e-3-t8.*t10.*1.5079405989375e-2-t6.*t13.*2.09265225975e-2-t7.*t12.*7.61966251157475e-3-t5.*t15.*1.0574225526267e-2-t7.*t13.*2.09265225975e-2-t8.*t12.*7.61966251157475e-3-t5.*t16.*1.5079405989375e-2-t6.*t15.*1.0574225526267e-2-t6.*t16.*1.5079405989375e-2-t7.*t15.*1.0574225526267e-2-t5.*t18.*7.61966251157475e-3-t5.*t19.*7.61966251157475e-3-t6.*t18.*7.61966251157475e-3-t5.*t20.*1.5079405989375e-2-4.501575681747185e+18.*cos(q1+t17+atan(1.979012320620293)).*8.21203105516588e-20-(dq1.*2.248006586491552e-2+dq2.*2.248006586491552e-2+dq3.*2.248006586491552e-2+dq4.*2.248006586491552e-2+dq5.*2.248006586491552e-2+dq6.*2.248006586491552e-2+dq1.*t2.*1.52393250231495e-2-dq1.*t3.*3.015881197875e-2+dq2.*t2.*1.52393250231495e-2-dq2.*t3.*3.015881197875e-2+dq3.*t2.*1.52393250231495e-2-dq3.*t3.*3.015881197875e-2+dq4.*t2.*1.52393250231495e-2-dq4.*t3.*3.015881197875e-2+dq5.*t2.*1.52393250231495e-2-dq5.*t3.*3.015881197875e-2+dq1.*t10.*1.52393250231495e-2+dq2.*t10.*1.52393250231495e-2-dq1.*t12.*3.015881197875e-2+dq3.*t10.*1.52393250231495e-2+dq1.*t13.*2.1148451052534e-2-dq2.*t12.*3.015881197875e-2+dq4.*t10.*1.52393250231495e-2+dq2.*t13.*2.1148451052534e-2-dq3.*t12.*3.015881197875e-2-dq1.*t15.*4.1853045195e-2+dq3.*t13.*2.1148451052534e-2-dq4.*t12.*3.015881197875e-2+dq1.*t16.*1.52393250231495e-2-dq2.*t15.*4.1853045195e-2+dq2.*t16.*1.52393250231495e-2-dq3.*t15.*4.1853045195e-2-dq1.*t18.*3.015881197875e-2-dq1.*t19.*3.015881197875e-2-dq2.*t18.*3.015881197875e-2+dq1.*t20.*1.52393250231495e-2)./sampT-dq1.*dq2.*t2.*3.015881197875e-2-dq1.*dq2.*t3.*1.52393250231495e-2-dq1.*dq3.*t2.*3.015881197875e-2-dq1.*dq3.*t3.*1.52393250231495e-2-dq1.*dq4.*t2.*3.015881197875e-2-dq2.*dq3.*t2.*3.015881197875e-2-dq1.*dq4.*t3.*1.52393250231495e-2-dq1.*dq5.*t2.*3.015881197875e-2-dq2.*dq3.*t3.*1.52393250231495e-2-dq2.*dq4.*t2.*3.015881197875e-2-dq1.*dq5.*t3.*1.52393250231495e-2-dq1.*dq6.*t2.*1.5079405989375e-2-dq2.*dq4.*t3.*1.52393250231495e-2-dq2.*dq5.*t2.*3.015881197875e-2-dq3.*dq4.*t2.*3.015881197875e-2-dq1.*dq6.*t3.*7.61966251157475e-3-dq2.*dq5.*t3.*1.52393250231495e-2-dq2.*dq6.*t2.*1.5079405989375e-2-dq3.*dq4.*t3.*1.52393250231495e-2-dq3.*dq5.*t2.*3.015881197875e-2-dq2.*dq6.*t3.*7.61966251157475e-3-dq3.*dq5.*t3.*1.52393250231495e-2-dq3.*dq6.*t2.*1.5079405989375e-2-dq4.*dq5.*t2.*3.015881197875e-2-dq3.*dq6.*t3.*7.61966251157475e-3-dq4.*dq5.*t3.*1.52393250231495e-2-dq4.*dq6.*t2.*1.5079405989375e-2-dq1.*dq2.*t10.*3.015881197875e-2-dq4.*dq6.*t3.*7.61966251157475e-3-dq5.*dq6.*t2.*1.5079405989375e-2-dq1.*dq3.*t10.*3.015881197875e-2-dq5.*dq6.*t3.*7.61966251157475e-3-dq1.*dq2.*t12.*1.52393250231495e-2-dq1.*dq4.*t10.*3.015881197875e-2-dq2.*dq3.*t10.*3.015881197875e-2-dq1.*dq2.*t13.*4.1853045195e-2-dq1.*dq3.*t12.*1.52393250231495e-2-dq1.*dq5.*t10.*1.5079405989375e-2-dq2.*dq4.*t10.*3.015881197875e-2-dq1.*dq3.*t13.*4.1853045195e-2-dq1.*dq4.*t12.*1.52393250231495e-2-dq1.*dq6.*t10.*1.5079405989375e-2-dq2.*dq3.*t12.*1.52393250231495e-2-dq2.*dq5.*t10.*1.5079405989375e-2-dq3.*dq4.*t10.*3.015881197875e-2-dq1.*dq2.*t15.*2.1148451052534e-2-dq1.*dq4.*t13.*2.09265225975e-2-dq1.*dq5.*t12.*7.61966251157475e-3-dq2.*dq3.*t13.*4.1853045195e-2-dq2.*dq4.*t12.*1.52393250231495e-2-dq2.*dq6.*t10.*1.5079405989375e-2-dq3.*dq5.*t10.*1.5079405989375e-2-dq1.*dq2.*t16.*3.015881197875e-2-dq1.*dq3.*t15.*2.1148451052534e-2-dq1.*dq5.*t13.*2.09265225975e-2-dq1.*dq6.*t12.*7.61966251157475e-3-dq2.*dq4.*t13.*2.09265225975e-2-dq2.*dq5.*t12.*7.61966251157475e-3-dq3.*dq4.*t12.*1.52393250231495e-2-dq3.*dq6.*t10.*1.5079405989375e-2-dq4.*dq5.*t10.*1.5079405989375e-2-dq1.*dq3.*t16.*1.5079405989375e-2-dq1.*dq4.*t15.*1.0574225526267e-2-dq1.*dq6.*t13.*2.09265225975e-2-dq2.*dq3.*t15.*2.1148451052534e-2-dq2.*dq5.*t13.*2.09265225975e-2-dq2.*dq6.*t12.*7.61966251157475e-3-dq3.*dq4.*t13.*2.09265225975e-2-dq3.*dq5.*t12.*7.61966251157475e-3-dq4.*dq6.*t10.*1.5079405989375e-2-dq1.*dq2.*t18.*1.52393250231495e-2-dq1.*dq4.*t16.*1.5079405989375e-2-dq1.*dq5.*t15.*1.0574225526267e-2-dq2.*dq3.*t16.*1.5079405989375e-2-dq2.*dq4.*t15.*1.0574225526267e-2-dq2.*dq6.*t13.*2.09265225975e-2-dq3.*dq5.*t13.*2.09265225975e-2-dq3.*dq6.*t12.*7.61966251157475e-3-dq4.*dq5.*t12.*7.61966251157475e-3-dq1.*dq2.*t19.*7.61966251157475e-3-dq1.*dq3.*t18.*7.61966251157475e-3-dq1.*dq5.*t16.*1.5079405989375e-2-dq1.*dq6.*t15.*1.0574225526267e-2-dq2.*dq4.*t16.*1.5079405989375e-2-dq2.*dq5.*t15.*1.0574225526267e-2-dq3.*dq4.*t15.*1.0574225526267e-2-dq3.*dq6.*t13.*2.09265225975e-2-dq4.*dq6.*t12.*7.61966251157475e-3-dq1.*dq2.*t20.*1.5079405989375e-2-dq1.*dq3.*t19.*7.61966251157475e-3-dq1.*dq4.*t18.*7.61966251157475e-3-dq1.*dq6.*t16.*1.5079405989375e-2-dq2.*dq3.*t18.*7.61966251157475e-3-dq2.*dq5.*t16.*1.5079405989375e-2-dq2.*dq6.*t15.*1.0574225526267e-2-dq3.*dq5.*t15.*1.0574225526267e-2-dq1.*dq3.*t20.*1.5079405989375e-2-dq1.*dq4.*t19.*7.61966251157475e-3-dq1.*dq5.*t18.*7.61966251157475e-3-dq2.*dq4.*t18.*7.61966251157475e-3-dq2.*dq6.*t16.*1.5079405989375e-2-dq3.*dq6.*t15.*1.0574225526267e-2-dq1.*dq4.*t20.*1.5079405989375e-2-dq1.*dq5.*t19.*7.61966251157475e-3-dq1.*dq6.*t18.*7.61966251157475e-3-dq2.*dq5.*t18.*7.61966251157475e-3-dq1.*dq5.*t20.*1.5079405989375e-2-dq1.*dq6.*t19.*7.61966251157475e-3-dq2.*dq6.*t18.*7.61966251157475e-3-dq1.*dq6.*t20.*1.5079405989375e-2;
