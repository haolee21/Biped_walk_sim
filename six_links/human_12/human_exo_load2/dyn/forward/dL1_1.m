function out1 = dL1_1(in1,in2,sampT)
%DL1_1
%    OUT1 = DL1_1(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    01-Aug-2021 18:01:28

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
out1 = cos(q1+q2).*(-2.27108017150875e+2)-cos(q1+t8).*1.379335687105962e+2-cos(q1+t16).*2.2276358299125e+1-cos(q1+t23).*8.579443777261875-cos(q1).*2.408049316727381e+2-(dq1.*6.792985311412658e+1+dq2.*4.606937052632759e+1+dq3.*2.55515953829033e+1+dq4.*2.461047736910614+dq5.*6.662642848588315e-1+dq6.*3.275366401942843e-2+dq1.*t2.*4.15184014228725e+1+dq1.*t3.*3.339810798925425e+1+dq2.*t2.*2.075920071143625e+1+dq1.*t4.*5.65151891283+dq2.*t3.*3.339810798925425e+1+dq1.*t5.*1.568437764540413+dq2.*t4.*5.65151891283+dq3.*t3.*1.669905399462713e+1+dq1.*t6.*5.6349122234139e-2+dq2.*t5.*1.568437764540413+dq3.*t4.*5.65151891283-dq1.*t7.*1.115156071575e-1+dq2.*t6.*5.6349122234139e-2+dq3.*t5.*1.568437764540413+dq4.*t4.*2.825759456415-dq2.*t7.*1.115156071575e-1+dq3.*t6.*5.6349122234139e-2+dq4.*t5.*1.568437764540413-dq3.*t7.*1.115156071575e-1+dq4.*t6.*5.6349122234139e-2+dq5.*t5.*7.842188822702063e-1-dq4.*t7.*1.115156071575e-1+dq5.*t6.*5.6349122234139e-2-dq5.*t7.*1.115156071575e-1+dq6.*t6.*2.81745611170695e-2+dq1.*t12.*3.339810798925425e+1-dq6.*t7.*5.575780357875e-2+dq1.*t13.*4.0724180401275+dq2.*t12.*1.669905399462713e+1+dq1.*t14.*2.17660750997445+dq2.*t13.*4.0724180401275+dq3.*t12.*1.669905399462713e+1+dq1.*t15.*5.6349122234139e-2+dq2.*t14.*2.17660750997445+dq3.*t13.*2.03620902006375+dq2.*t15.*5.6349122234139e-2+dq3.*t14.*2.17660750997445+dq4.*t13.*2.03620902006375+dq3.*t15.*5.6349122234139e-2+dq4.*t14.*1.088303754987225+dq4.*t15.*5.6349122234139e-2+dq5.*t14.*1.088303754987225-dq1.*t19.*1.115156071575e-1+dq5.*t15.*2.81745611170695e-2+dq1.*t20.*4.0724180401275-dq2.*t19.*1.115156071575e-1+dq6.*t15.*2.81745611170695e-2+dq1.*t21.*1.568437764540413+dq2.*t20.*2.03620902006375-dq3.*t19.*1.115156071575e-1+dq1.*t22.*7.8198781875948e-2+dq2.*t21.*1.568437764540413+dq3.*t20.*2.03620902006375-dq4.*t19.*1.115156071575e-1+dq2.*t22.*7.8198781875948e-2+dq3.*t21.*7.842188822702063e-1+dq4.*t20.*2.03620902006375-dq5.*t19.*5.575780357875e-2+dq3.*t22.*7.8198781875948e-2+dq4.*t21.*7.842188822702063e-1-dq6.*t19.*5.575780357875e-2-dq1.*t25.*1.5475635279e-1+dq4.*t22.*3.9099390937974e-2+dq5.*t21.*7.842188822702063e-1+dq1.*t26.*1.568437764540413-dq2.*t25.*1.5475635279e-1+dq5.*t22.*3.9099390937974e-2+dq1.*t27.*5.6349122234139e-2+dq2.*t26.*7.842188822702063e-1-dq3.*t25.*1.5475635279e-1+dq6.*t22.*3.9099390937974e-2+dq2.*t27.*5.6349122234139e-2+dq3.*t26.*7.842188822702063e-1-dq4.*t25.*7.7378176395e-2-dq1.*t29.*1.115156071575e-1+dq3.*t27.*2.81745611170695e-2+dq4.*t26.*7.842188822702063e-1-dq5.*t25.*7.7378176395e-2-dq1.*t30.*1.115156071575e-1-dq2.*t29.*1.115156071575e-1+dq4.*t27.*2.81745611170695e-2+dq5.*t26.*7.842188822702063e-1-dq6.*t25.*7.7378176395e-2+dq1.*t31.*5.6349122234139e-2-dq2.*t30.*5.575780357875e-2-dq3.*t29.*5.575780357875e-2+dq5.*t27.*2.81745611170695e-2+dq2.*t31.*2.81745611170695e-2-dq3.*t30.*5.575780357875e-2-dq4.*t29.*5.575780357875e-2+dq6.*t27.*2.81745611170695e-2+dq3.*t31.*2.81745611170695e-2-dq4.*t30.*5.575780357875e-2-dq5.*t29.*5.575780357875e-2+dq4.*t31.*2.81745611170695e-2-dq5.*t30.*5.575780357875e-2-dq6.*t29.*5.575780357875e-2+dq5.*t31.*2.81745611170695e-2-dq6.*t30.*5.575780357875e-2+dq6.*t31.*2.81745611170695e-2)./sampT-4.501575681747185e+18.*cos(q1+t28+atan(1.979012320620293)).*1.518245529297246e-19;
