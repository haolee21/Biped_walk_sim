function out1 = dL2_2(in1,in2,sampT)
%DL2_2
%    OUT1 = DL2_2(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    22-Apr-2021 14:33:53

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
t2 = cos(q3);
t3 = cos(q4);
t4 = cos(q5);
t5 = cos(q6);
t6 = sin(q2);
t7 = sin(q6);
t8 = q2+q3;
t9 = q3+q4;
t10 = q4+q5;
t11 = q5+q6;
t12 = dq1.^2;
t13 = cos(t9);
t14 = cos(t10);
t15 = cos(t11);
t16 = q4+t8;
t17 = q5+t9;
t18 = q6+t10;
t19 = sin(t8);
t20 = sin(t11);
t23 = t8+t10;
t24 = t9+t11;
t21 = cos(t17);
t22 = cos(t18);
t25 = sin(t16);
t26 = sin(t18);
t27 = cos(t24);
t28 = t8+t18;
t29 = sin(t23);
t30 = sin(t24);
t31 = sin(t28);
t32 = cos(t28);
out1 = cos(q1+q2).*(-1.72019140563375e+2)-cos(q1+t8).*1.072403809535427e+2-cos(q1+t16).*1.4909183186625e+1-cos(q1+t23).*4.950835139761875+(dq1.*3.471303477465208e+1+dq2.*3.471303477465208e+1+dq3.*1.91737985584778e+1+dq4.*1.559595569006101+dq5.*3.812664659543186e-1+dq6.*2.248006586491552e-2+dq1.*t2.*2.544368796224307e+1+dq1.*t3.*3.78246433383+dq2.*t2.*2.544368796224307e+1+dq1.*t4.*9.050792802904125e-1+dq2.*t3.*3.78246433383+dq3.*t2.*1.272184398112154e+1+dq1.*t5.*3.0478650046299e-2+dq2.*t4.*9.050792802904125e-1+dq3.*t3.*3.78246433383+dq2.*t5.*3.0478650046299e-2+dq3.*t4.*9.050792802904125e-1+dq4.*t3.*1.891232166915-dq1.*t7.*6.03176239575e-2+dq3.*t5.*3.0478650046299e-2+dq4.*t4.*9.050792802904125e-1-dq2.*t7.*6.03176239575e-2+dq4.*t5.*3.0478650046299e-2+dq5.*t4.*4.525396401452063e-1-dq3.*t7.*6.03176239575e-2+dq5.*t5.*3.0478650046299e-2-dq4.*t7.*6.03176239575e-2+dq6.*t5.*1.52393250231495e-2-dq5.*t7.*6.03176239575e-2-dq6.*t7.*3.015881197875e-2+dq1.*t13.*2.7255992993775+dq1.*t14.*1.25602838897445+dq2.*t13.*2.7255992993775+dq1.*t15.*3.0478650046299e-2+dq2.*t14.*1.25602838897445+dq3.*t13.*1.36279964968875+dq2.*t15.*3.0478650046299e-2+dq3.*t14.*1.25602838897445+dq4.*t13.*1.36279964968875+dq3.*t15.*3.0478650046299e-2+dq4.*t14.*6.28014194487225e-1+dq4.*t15.*3.0478650046299e-2+dq5.*t14.*6.28014194487225e-1+dq5.*t15.*1.52393250231495e-2-dq1.*t20.*6.03176239575e-2+dq6.*t15.*1.52393250231495e-2+dq1.*t21.*9.050792802904125e-1-dq2.*t20.*6.03176239575e-2+dq1.*t22.*4.2296902105068e-2+dq2.*t21.*9.050792802904125e-1-dq3.*t20.*6.03176239575e-2+dq2.*t22.*4.2296902105068e-2+dq3.*t21.*4.525396401452063e-1-dq4.*t20.*6.03176239575e-2+dq3.*t22.*4.2296902105068e-2+dq4.*t21.*4.525396401452063e-1-dq5.*t20.*3.015881197875e-2+dq4.*t22.*2.1148451052534e-2+dq5.*t21.*4.525396401452063e-1-dq6.*t20.*3.015881197875e-2-dq1.*t26.*8.370609039e-2+dq5.*t22.*2.1148451052534e-2+dq1.*t27.*3.0478650046299e-2-dq2.*t26.*8.370609039e-2+dq6.*t22.*2.1148451052534e-2+dq2.*t27.*3.0478650046299e-2-dq3.*t26.*8.370609039e-2+dq3.*t27.*1.52393250231495e-2-dq4.*t26.*4.1853045195e-2-dq1.*t30.*6.03176239575e-2+dq4.*t27.*1.52393250231495e-2-dq5.*t26.*4.1853045195e-2-dq1.*t31.*3.015881197875e-2-dq2.*t30.*6.03176239575e-2+dq5.*t27.*1.52393250231495e-2-dq6.*t26.*4.1853045195e-2+dq1.*t32.*1.52393250231495e-2-dq3.*t30.*3.015881197875e-2+dq6.*t27.*1.52393250231495e-2-dq4.*t30.*3.015881197875e-2-dq5.*t30.*3.015881197875e-2-dq6.*t30.*3.015881197875e-2+dq1.*cos(q2).*1.572370676281125e+1+dq1.*cos(t8).*1.272184398112154e+1+dq1.*cos(t16).*1.36279964968875+dq1.*cos(t23).*4.525396401452063e-1)./sampT-t6.*t12.*7.861853381405625-t12.*t19.*6.360921990560768-t12.*t25.*6.81399824844375e-1-t12.*t29.*2.262698200726031e-1-t12.*t31.*7.61966251157475e-3-t12.*t32.*1.5079405989375e-2-4.501575681747185e+18.*cos(q1+t28+atan(1.979012320620293)).*8.21203105516588e-20-dq1.*dq2.*t6.*7.861853381405625-dq1.*dq2.*t19.*6.360921990560768-dq1.*dq3.*t19.*6.360921990560768-dq1.*dq2.*t25.*6.81399824844375e-1-dq1.*dq3.*t25.*6.81399824844375e-1-dq1.*dq4.*t25.*6.81399824844375e-1-dq1.*dq2.*t29.*2.262698200726031e-1-dq1.*dq3.*t29.*2.262698200726031e-1-dq1.*dq2.*t31.*7.61966251157475e-3-dq1.*dq4.*t29.*2.262698200726031e-1-dq1.*dq2.*t32.*1.5079405989375e-2-dq1.*dq3.*t31.*7.61966251157475e-3-dq1.*dq5.*t29.*2.262698200726031e-1-dq1.*dq3.*t32.*1.5079405989375e-2-dq1.*dq4.*t31.*7.61966251157475e-3-dq1.*dq4.*t32.*1.5079405989375e-2-dq1.*dq5.*t31.*7.61966251157475e-3-dq1.*dq5.*t32.*1.5079405989375e-2-dq1.*dq6.*t31.*7.61966251157475e-3-dq1.*dq6.*t32.*1.5079405989375e-2;
