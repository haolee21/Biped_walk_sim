function out1 = dL1_4(in1,in2,sampT)
%DL1_4
%    OUT1 = DL1_4(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    19-Apr-2021 18:37:05

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
out1 = cos(q1+t16).*(-2.2276358299125e+1)-cos(q1+t24).*8.579443777261875-(dq1.*2.461047736910614+dq2.*2.461047736910614+dq3.*2.461047736910614+dq4.*2.461047736910614+dq5.*6.662642848588315e-1+dq6.*3.275366401942843e-2+dq1.*t2.*2.825759456415+dq1.*t3.*1.568437764540413+dq2.*t2.*2.825759456415+dq1.*t4.*5.6349122234139e-2+dq2.*t3.*1.568437764540413+dq3.*t2.*2.825759456415+dq2.*t4.*5.6349122234139e-2+dq3.*t3.*1.568437764540413-dq1.*t6.*1.115156071575e-1+dq3.*t4.*5.6349122234139e-2+dq4.*t3.*1.568437764540413-dq2.*t6.*1.115156071575e-1+dq4.*t4.*5.6349122234139e-2+dq5.*t3.*7.842188822702063e-1-dq3.*t6.*1.115156071575e-1+dq5.*t4.*5.6349122234139e-2-dq4.*t6.*1.115156071575e-1+dq6.*t4.*2.81745611170695e-2-dq5.*t6.*1.115156071575e-1-dq6.*t6.*5.575780357875e-2+dq1.*t13.*2.03620902006375+dq1.*t14.*1.088303754987225+dq2.*t13.*2.03620902006375+dq1.*t15.*5.6349122234139e-2+dq2.*t14.*1.088303754987225+dq2.*t15.*5.6349122234139e-2+dq3.*t14.*1.088303754987225+dq3.*t15.*5.6349122234139e-2+dq4.*t15.*5.6349122234139e-2+dq5.*t15.*2.81745611170695e-2+dq6.*t15.*2.81745611170695e-2-dq1.*t21.*1.115156071575e-1+dq1.*t22.*7.842188822702063e-1-dq2.*t21.*1.115156071575e-1+dq1.*t23.*3.9099390937974e-2+dq2.*t22.*7.842188822702063e-1-dq3.*t21.*1.115156071575e-1+dq2.*t23.*3.9099390937974e-2-dq4.*t21.*1.115156071575e-1+dq3.*t23.*3.9099390937974e-2-dq5.*t21.*5.575780357875e-2-dq6.*t21.*5.575780357875e-2-dq1.*t28.*7.7378176395e-2+dq1.*t29.*2.81745611170695e-2-dq2.*t28.*7.7378176395e-2+dq2.*t29.*2.81745611170695e-2-dq3.*t28.*7.7378176395e-2-dq1.*t32.*5.575780357875e-2-dq1.*t33.*5.575780357875e-2-dq2.*t32.*5.575780357875e-2+dq1.*t34.*2.81745611170695e-2+dq1.*cos(t16).*2.03620902006375+dq1.*cos(t24).*7.842188822702063e-1)./sampT-t5.*t10.*1.4128797282075-t5.*t11.*1.4128797282075-t5.*t12.*1.4128797282075-t10.*t19.*1.018104510031875-t10.*t20.*5.441518774936125e-1-t11.*t19.*1.018104510031875-t11.*t20.*5.441518774936125e-1-t12.*t20.*5.441518774936125e-1-t10.*t23.*3.86890881975e-2-t11.*t23.*3.86890881975e-2-t12.*t23.*3.86890881975e-2-t10.*t26.*1.018104510031875-t10.*t27.*3.921094411351031e-1-t10.*t28.*1.9549695468987e-2-t11.*t27.*3.921094411351031e-1-t10.*t29.*2.7878901789375e-2-t11.*t28.*1.9549695468987e-2-t11.*t29.*2.7878901789375e-2-t12.*t28.*1.9549695468987e-2-t10.*t31.*3.921094411351031e-1-t10.*t32.*1.408728055853475e-2-t10.*t33.*1.408728055853475e-2-t11.*t32.*1.408728055853475e-2-t10.*t34.*2.7878901789375e-2-4.501575681747185e+18.*cos(q1+t30+atan(1.979012320620293)).*1.518245529297246e-19-dq1.*dq2.*t5.*2.825759456415-dq1.*dq3.*t5.*2.825759456415-dq1.*dq4.*t5.*1.4128797282075-dq2.*dq3.*t5.*2.825759456415-dq2.*dq4.*t5.*1.4128797282075-dq3.*dq4.*t5.*1.4128797282075-dq1.*dq2.*t19.*2.03620902006375-dq1.*dq2.*t20.*1.088303754987225-dq1.*dq3.*t19.*1.018104510031875-dq1.*dq3.*t20.*1.088303754987225-dq1.*dq4.*t19.*1.018104510031875-dq2.*dq3.*t19.*1.018104510031875-dq1.*dq4.*t20.*5.441518774936125e-1-dq2.*dq3.*t20.*1.088303754987225-dq2.*dq4.*t19.*1.018104510031875-dq1.*dq2.*t23.*7.7378176395e-2-dq1.*dq5.*t20.*5.441518774936125e-1-dq2.*dq4.*t20.*5.441518774936125e-1-dq1.*dq3.*t23.*7.7378176395e-2-dq2.*dq5.*t20.*5.441518774936125e-1-dq3.*dq4.*t20.*5.441518774936125e-1-dq1.*dq4.*t23.*3.86890881975e-2-dq2.*dq3.*t23.*7.7378176395e-2-dq3.*dq5.*t20.*5.441518774936125e-1-dq1.*dq2.*t26.*1.018104510031875-dq1.*dq5.*t23.*3.86890881975e-2-dq2.*dq4.*t23.*3.86890881975e-2-dq1.*dq2.*t27.*7.842188822702063e-1-dq1.*dq3.*t26.*1.018104510031875-dq1.*dq6.*t23.*3.86890881975e-2-dq2.*dq5.*t23.*3.86890881975e-2-dq3.*dq4.*t23.*3.86890881975e-2-dq1.*dq2.*t28.*3.9099390937974e-2-dq1.*dq3.*t27.*3.921094411351031e-1-dq1.*dq4.*t26.*1.018104510031875-dq2.*dq6.*t23.*3.86890881975e-2-dq3.*dq5.*t23.*3.86890881975e-2-dq1.*dq2.*t29.*5.575780357875e-2-dq1.*dq3.*t28.*3.9099390937974e-2-dq1.*dq4.*t27.*3.921094411351031e-1-dq2.*dq3.*t27.*3.921094411351031e-1-dq3.*dq6.*t23.*3.86890881975e-2-dq1.*dq3.*t29.*2.7878901789375e-2-dq1.*dq4.*t28.*1.9549695468987e-2-dq1.*dq5.*t27.*3.921094411351031e-1-dq2.*dq3.*t28.*3.9099390937974e-2-dq2.*dq4.*t27.*3.921094411351031e-1-dq1.*dq2.*t31.*3.921094411351031e-1-dq1.*dq4.*t29.*2.7878901789375e-2-dq1.*dq5.*t28.*1.9549695468987e-2-dq2.*dq3.*t29.*2.7878901789375e-2-dq2.*dq4.*t28.*1.9549695468987e-2-dq2.*dq5.*t27.*3.921094411351031e-1-dq1.*dq2.*t32.*2.81745611170695e-2-dq1.*dq3.*t31.*3.921094411351031e-1-dq1.*dq5.*t29.*2.7878901789375e-2-dq1.*dq6.*t28.*1.9549695468987e-2-dq2.*dq4.*t29.*2.7878901789375e-2-dq2.*dq5.*t28.*1.9549695468987e-2-dq3.*dq4.*t28.*1.9549695468987e-2-dq1.*dq2.*t33.*1.408728055853475e-2-dq1.*dq3.*t32.*1.408728055853475e-2-dq1.*dq4.*t31.*3.921094411351031e-1-dq1.*dq6.*t29.*2.7878901789375e-2-dq2.*dq5.*t29.*2.7878901789375e-2-dq2.*dq6.*t28.*1.9549695468987e-2-dq3.*dq5.*t28.*1.9549695468987e-2-dq1.*dq2.*t34.*2.7878901789375e-2-dq1.*dq3.*t33.*1.408728055853475e-2-dq1.*dq4.*t32.*1.408728055853475e-2-dq1.*dq5.*t31.*3.921094411351031e-1-dq2.*dq3.*t32.*1.408728055853475e-2-dq2.*dq6.*t29.*2.7878901789375e-2-dq3.*dq6.*t28.*1.9549695468987e-2-dq1.*dq3.*t34.*2.7878901789375e-2-dq1.*dq4.*t33.*1.408728055853475e-2-dq1.*dq5.*t32.*1.408728055853475e-2-dq2.*dq4.*t32.*1.408728055853475e-2-dq1.*dq4.*t34.*2.7878901789375e-2-dq1.*dq5.*t33.*1.408728055853475e-2-dq1.*dq6.*t32.*1.408728055853475e-2-dq2.*dq5.*t32.*1.408728055853475e-2-dq1.*dq5.*t34.*2.7878901789375e-2-dq1.*dq6.*t33.*1.408728055853475e-2-dq2.*dq6.*t32.*1.408728055853475e-2-dq1.*dq6.*t34.*2.7878901789375e-2;
