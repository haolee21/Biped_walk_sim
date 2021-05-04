function out1 = dL2_5(in1,in2,sampT)
%DL2_5
%    OUT1 = DL2_5(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    19-Apr-2021 18:37:09

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
out1 = cos(q1+t20).*(-8.579443777261875)-t4.*t8.*3.921094411351031e-1-t4.*t9.*3.921094411351031e-1-t4.*t10.*3.921094411351031e-1-t4.*t11.*3.921094411351031e-1-t8.*t13.*2.7878901789375e-2-t9.*t13.*2.7878901789375e-2-t10.*t13.*2.7878901789375e-2-t8.*t16.*5.441518774936125e-1-t11.*t13.*2.7878901789375e-2-t8.*t17.*1.408728055853475e-2-t9.*t16.*5.441518774936125e-1-t9.*t17.*1.408728055853475e-2-t10.*t16.*5.441518774936125e-1-t8.*t19.*3.86890881975e-2-t10.*t17.*1.408728055853475e-2-t9.*t19.*3.86890881975e-2-t11.*t17.*1.408728055853475e-2-t10.*t19.*3.86890881975e-2-t8.*t22.*3.921094411351031e-1-t8.*t23.*1.9549695468987e-2-t9.*t22.*3.921094411351031e-1-t8.*t24.*2.7878901789375e-2-t9.*t23.*1.9549695468987e-2-t9.*t24.*2.7878901789375e-2-t10.*t23.*1.9549695468987e-2-t8.*t26.*3.921094411351031e-1-t8.*t27.*1.408728055853475e-2-t8.*t28.*1.408728055853475e-2-t9.*t27.*1.408728055853475e-2-t8.*t29.*2.7878901789375e-2-4.501575681747185e+18.*cos(q1+t25+atan(1.979012320620293)).*1.518245529297246e-19+(dq1.*6.662642848588315e-1+dq2.*6.662642848588315e-1+dq3.*6.662642848588315e-1+dq4.*6.662642848588315e-1+dq5.*6.662642848588315e-1+dq6.*3.275366401942843e-2+dq1.*t2.*7.842188822702063e-1+dq1.*t3.*5.6349122234139e-2+dq2.*t2.*7.842188822702063e-1+dq2.*t3.*5.6349122234139e-2+dq3.*t2.*7.842188822702063e-1-dq1.*t5.*1.115156071575e-1+dq3.*t3.*5.6349122234139e-2+dq4.*t2.*7.842188822702063e-1-dq2.*t5.*1.115156071575e-1+dq4.*t3.*5.6349122234139e-2-dq3.*t5.*1.115156071575e-1+dq5.*t3.*5.6349122234139e-2-dq4.*t5.*1.115156071575e-1+dq6.*t3.*2.81745611170695e-2-dq5.*t5.*1.115156071575e-1-dq6.*t5.*5.575780357875e-2+dq1.*t12.*1.088303754987225+dq1.*t13.*2.81745611170695e-2+dq2.*t12.*1.088303754987225+dq2.*t13.*2.81745611170695e-2+dq3.*t12.*1.088303754987225+dq3.*t13.*2.81745611170695e-2+dq4.*t13.*2.81745611170695e-2-dq1.*t17.*5.575780357875e-2+dq1.*t18.*7.842188822702063e-1-dq2.*t17.*5.575780357875e-2+dq1.*t19.*3.9099390937974e-2+dq2.*t18.*7.842188822702063e-1-dq3.*t17.*5.575780357875e-2+dq2.*t19.*3.9099390937974e-2-dq4.*t17.*5.575780357875e-2+dq3.*t19.*3.9099390937974e-2-dq1.*t23.*7.7378176395e-2+dq1.*t24.*2.81745611170695e-2-dq2.*t23.*7.7378176395e-2+dq2.*t24.*2.81745611170695e-2-dq3.*t23.*7.7378176395e-2-dq1.*t27.*5.575780357875e-2-dq1.*t28.*5.575780357875e-2-dq2.*t27.*5.575780357875e-2+dq1.*t29.*2.81745611170695e-2+dq1.*cos(t20).*7.842188822702063e-1)./sampT-dq1.*dq2.*t4.*7.842188822702063e-1-dq1.*dq3.*t4.*7.842188822702063e-1-dq1.*dq4.*t4.*7.842188822702063e-1-dq2.*dq3.*t4.*7.842188822702063e-1-dq1.*dq5.*t4.*3.921094411351031e-1-dq2.*dq4.*t4.*7.842188822702063e-1-dq2.*dq5.*t4.*3.921094411351031e-1-dq3.*dq4.*t4.*7.842188822702063e-1-dq3.*dq5.*t4.*3.921094411351031e-1-dq4.*dq5.*t4.*3.921094411351031e-1-dq1.*dq2.*t13.*5.575780357875e-2-dq1.*dq3.*t13.*5.575780357875e-2-dq1.*dq4.*t13.*5.575780357875e-2-dq2.*dq3.*t13.*5.575780357875e-2-dq1.*dq2.*t16.*1.088303754987225-dq1.*dq5.*t13.*2.7878901789375e-2-dq2.*dq4.*t13.*5.575780357875e-2-dq1.*dq2.*t17.*2.81745611170695e-2-dq1.*dq3.*t16.*1.088303754987225-dq1.*dq6.*t13.*2.7878901789375e-2-dq2.*dq5.*t13.*2.7878901789375e-2-dq3.*dq4.*t13.*5.575780357875e-2-dq1.*dq3.*t17.*2.81745611170695e-2-dq1.*dq4.*t16.*5.441518774936125e-1-dq2.*dq3.*t16.*1.088303754987225-dq2.*dq6.*t13.*2.7878901789375e-2-dq3.*dq5.*t13.*2.7878901789375e-2-dq1.*dq2.*t19.*7.7378176395e-2-dq1.*dq4.*t17.*2.81745611170695e-2-dq1.*dq5.*t16.*5.441518774936125e-1-dq2.*dq3.*t17.*2.81745611170695e-2-dq2.*dq4.*t16.*5.441518774936125e-1-dq3.*dq6.*t13.*2.7878901789375e-2-dq4.*dq5.*t13.*2.7878901789375e-2-dq1.*dq3.*t19.*7.7378176395e-2-dq1.*dq5.*t17.*1.408728055853475e-2-dq2.*dq4.*t17.*2.81745611170695e-2-dq2.*dq5.*t16.*5.441518774936125e-1-dq3.*dq4.*t16.*5.441518774936125e-1-dq4.*dq6.*t13.*2.7878901789375e-2-dq1.*dq4.*t19.*3.86890881975e-2-dq1.*dq6.*t17.*1.408728055853475e-2-dq2.*dq3.*t19.*7.7378176395e-2-dq2.*dq5.*t17.*1.408728055853475e-2-dq3.*dq4.*t17.*2.81745611170695e-2-dq3.*dq5.*t16.*5.441518774936125e-1-dq1.*dq2.*t22.*7.842188822702063e-1-dq1.*dq5.*t19.*3.86890881975e-2-dq2.*dq4.*t19.*3.86890881975e-2-dq2.*dq6.*t17.*1.408728055853475e-2-dq3.*dq5.*t17.*1.408728055853475e-2-dq1.*dq2.*t23.*3.9099390937974e-2-dq1.*dq3.*t22.*3.921094411351031e-1-dq1.*dq6.*t19.*3.86890881975e-2-dq2.*dq5.*t19.*3.86890881975e-2-dq3.*dq4.*t19.*3.86890881975e-2-dq3.*dq6.*t17.*1.408728055853475e-2-dq4.*dq5.*t17.*1.408728055853475e-2-dq1.*dq2.*t24.*5.575780357875e-2-dq1.*dq3.*t23.*3.9099390937974e-2-dq1.*dq4.*t22.*3.921094411351031e-1-dq2.*dq3.*t22.*3.921094411351031e-1-dq2.*dq6.*t19.*3.86890881975e-2-dq3.*dq5.*t19.*3.86890881975e-2-dq4.*dq6.*t17.*1.408728055853475e-2-dq1.*dq3.*t24.*2.7878901789375e-2-dq1.*dq4.*t23.*1.9549695468987e-2-dq1.*dq5.*t22.*3.921094411351031e-1-dq2.*dq3.*t23.*3.9099390937974e-2-dq2.*dq4.*t22.*3.921094411351031e-1-dq3.*dq6.*t19.*3.86890881975e-2-dq1.*dq2.*t26.*3.921094411351031e-1-dq1.*dq4.*t24.*2.7878901789375e-2-dq1.*dq5.*t23.*1.9549695468987e-2-dq2.*dq3.*t24.*2.7878901789375e-2-dq2.*dq4.*t23.*1.9549695468987e-2-dq2.*dq5.*t22.*3.921094411351031e-1-dq1.*dq2.*t27.*2.81745611170695e-2-dq1.*dq3.*t26.*3.921094411351031e-1-dq1.*dq5.*t24.*2.7878901789375e-2-dq1.*dq6.*t23.*1.9549695468987e-2-dq2.*dq4.*t24.*2.7878901789375e-2-dq2.*dq5.*t23.*1.9549695468987e-2-dq3.*dq4.*t23.*1.9549695468987e-2-dq1.*dq2.*t28.*1.408728055853475e-2-dq1.*dq3.*t27.*1.408728055853475e-2-dq1.*dq4.*t26.*3.921094411351031e-1-dq1.*dq6.*t24.*2.7878901789375e-2-dq2.*dq5.*t24.*2.7878901789375e-2-dq2.*dq6.*t23.*1.9549695468987e-2-dq3.*dq5.*t23.*1.9549695468987e-2-dq1.*dq2.*t29.*2.7878901789375e-2-dq1.*dq3.*t28.*1.408728055853475e-2-dq1.*dq4.*t27.*1.408728055853475e-2-dq1.*dq5.*t26.*3.921094411351031e-1-dq2.*dq3.*t27.*1.408728055853475e-2-dq2.*dq6.*t24.*2.7878901789375e-2-dq3.*dq6.*t23.*1.9549695468987e-2-dq1.*dq3.*t29.*2.7878901789375e-2-dq1.*dq4.*t28.*1.408728055853475e-2-dq1.*dq5.*t27.*1.408728055853475e-2-dq2.*dq4.*t27.*1.408728055853475e-2-dq1.*dq4.*t29.*2.7878901789375e-2-dq1.*dq5.*t28.*1.408728055853475e-2-dq1.*dq6.*t27.*1.408728055853475e-2-dq2.*dq5.*t27.*1.408728055853475e-2-dq1.*dq5.*t29.*2.7878901789375e-2-dq1.*dq6.*t28.*1.408728055853475e-2-dq2.*dq6.*t27.*1.408728055853475e-2-dq1.*dq6.*t29.*2.7878901789375e-2;
