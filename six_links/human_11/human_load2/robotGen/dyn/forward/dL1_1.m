function out1 = dL1_1(in1,in2,sampT)
%DL1_1
%    OUT1 = DL1_1(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    22-Apr-2021 17:13:28

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
t2 = cos(q2);
t3 = cos(q3);
t4 = cos(q4);
t5 = cos(q5);
t6 = cos(q6);
t7 = sin(q6);
t8 = q2+q3;
t9 = q3+q4;
t10 = q4+q5;
t11 = q5+q6;
t12 = cos(t8);
t13 = cos(t9);
t14 = cos(t10);
t15 = cos(t11);
t16 = q4+t8;
t17 = q5+t9;
t18 = q6+t10;
t19 = sin(t11);
t23 = t8+t10;
t24 = t9+t11;
t20 = cos(t16);
t21 = cos(t17);
t22 = cos(t18);
t25 = sin(t18);
t26 = cos(t23);
t27 = cos(t24);
t28 = t8+t18;
t29 = sin(t24);
t30 = sin(t28);
t31 = cos(t28);
out1 = cos(q1+q2).*(-2.16002275563375e+2)-cos(q1+t8).*1.379335687105962e+2-cos(q1+t16).*1.4909183186625e+1-cos(q1+t23).*4.950835139761875-cos(q1).*2.259606236102381e+2-(dq1.*6.314434393547206e+1+dq2.*4.258377595317307e+1+dq3.*2.302418528699879e+1+dq4.*1.559595569006101+dq5.*3.812664659543186e-1+dq6.*2.248006586491552e-2+dq1.*t2.*3.94881224256225e+1+dq1.*t3.*3.105481568125425e+1+dq2.*t2.*1.974406121281125e+1+dq1.*t4.*3.78246433383+dq2.*t3.*3.105481568125425e+1+dq1.*t5.*9.050792802904125e-1+dq2.*t4.*3.78246433383+dq3.*t3.*1.552740784062713e+1+dq1.*t6.*3.0478650046299e-2+dq2.*t5.*9.050792802904125e-1+dq3.*t4.*3.78246433383-dq1.*t7.*6.03176239575e-2+dq2.*t6.*3.0478650046299e-2+dq3.*t5.*9.050792802904125e-1+dq4.*t4.*1.891232166915-dq2.*t7.*6.03176239575e-2+dq3.*t6.*3.0478650046299e-2+dq4.*t5.*9.050792802904125e-1-dq3.*t7.*6.03176239575e-2+dq4.*t6.*3.0478650046299e-2+dq5.*t5.*4.525396401452063e-1-dq4.*t7.*6.03176239575e-2+dq5.*t6.*3.0478650046299e-2-dq5.*t7.*6.03176239575e-2+dq6.*t6.*1.52393250231495e-2+dq1.*t12.*3.105481568125425e+1-dq6.*t7.*3.015881197875e-2+dq1.*t13.*2.7255992993775+dq2.*t12.*1.552740784062713e+1+dq1.*t14.*1.25602838897445+dq2.*t13.*2.7255992993775+dq3.*t12.*1.552740784062713e+1+dq1.*t15.*3.0478650046299e-2+dq2.*t14.*1.25602838897445+dq3.*t13.*1.36279964968875+dq2.*t15.*3.0478650046299e-2+dq3.*t14.*1.25602838897445+dq4.*t13.*1.36279964968875+dq3.*t15.*3.0478650046299e-2+dq4.*t14.*6.28014194487225e-1+dq4.*t15.*3.0478650046299e-2+dq5.*t14.*6.28014194487225e-1-dq1.*t19.*6.03176239575e-2+dq5.*t15.*1.52393250231495e-2+dq1.*t20.*2.7255992993775-dq2.*t19.*6.03176239575e-2+dq6.*t15.*1.52393250231495e-2+dq1.*t21.*9.050792802904125e-1+dq2.*t20.*1.36279964968875-dq3.*t19.*6.03176239575e-2+dq1.*t22.*4.2296902105068e-2+dq2.*t21.*9.050792802904125e-1+dq3.*t20.*1.36279964968875-dq4.*t19.*6.03176239575e-2+dq2.*t22.*4.2296902105068e-2+dq3.*t21.*4.525396401452063e-1+dq4.*t20.*1.36279964968875-dq5.*t19.*3.015881197875e-2+dq3.*t22.*4.2296902105068e-2+dq4.*t21.*4.525396401452063e-1-dq6.*t19.*3.015881197875e-2-dq1.*t25.*8.370609039e-2+dq4.*t22.*2.1148451052534e-2+dq5.*t21.*4.525396401452063e-1+dq1.*t26.*9.050792802904125e-1-dq2.*t25.*8.370609039e-2+dq5.*t22.*2.1148451052534e-2+dq1.*t27.*3.0478650046299e-2+dq2.*t26.*4.525396401452063e-1-dq3.*t25.*8.370609039e-2+dq6.*t22.*2.1148451052534e-2+dq2.*t27.*3.0478650046299e-2+dq3.*t26.*4.525396401452063e-1-dq4.*t25.*4.1853045195e-2-dq1.*t29.*6.03176239575e-2+dq3.*t27.*1.52393250231495e-2+dq4.*t26.*4.525396401452063e-1-dq5.*t25.*4.1853045195e-2-dq1.*t30.*6.03176239575e-2-dq2.*t29.*6.03176239575e-2+dq4.*t27.*1.52393250231495e-2+dq5.*t26.*4.525396401452063e-1-dq6.*t25.*4.1853045195e-2+dq1.*t31.*3.0478650046299e-2-dq2.*t30.*3.015881197875e-2-dq3.*t29.*3.015881197875e-2+dq5.*t27.*1.52393250231495e-2+dq2.*t31.*1.52393250231495e-2-dq3.*t30.*3.015881197875e-2-dq4.*t29.*3.015881197875e-2+dq6.*t27.*1.52393250231495e-2+dq3.*t31.*1.52393250231495e-2-dq4.*t30.*3.015881197875e-2-dq5.*t29.*3.015881197875e-2+dq4.*t31.*1.52393250231495e-2-dq5.*t30.*3.015881197875e-2-dq6.*t29.*3.015881197875e-2+dq5.*t31.*1.52393250231495e-2-dq6.*t30.*3.015881197875e-2+dq6.*t31.*1.52393250231495e-2)./sampT-4.501575681747185e+18.*cos(q1+t28+atan(1.979012320620293)).*8.21203105516588e-20;
