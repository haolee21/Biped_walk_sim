function out1 = dL1_3(in1,in2,sampT)
%DL1_3
%    OUT1 = DL1_3(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    01-Aug-2021 17:59:27

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
t6 = sin(q3);
t7 = sin(q6);
t8 = q2+q3;
t9 = q3+q4;
t10 = q4+q5;
t11 = q5+q6;
t12 = dq1.^2;
t13 = dq2.^2;
t14 = cos(t9);
t15 = cos(t10);
t16 = cos(t11);
t17 = q4+t8;
t18 = q5+t9;
t19 = q6+t10;
t20 = sin(t8);
t21 = sin(t9);
t22 = sin(t11);
t25 = t8+t10;
t26 = t9+t11;
t23 = cos(t18);
t24 = cos(t19);
t27 = sin(t17);
t28 = sin(t18);
t29 = sin(t19);
t30 = cos(t26);
t31 = t8+t19;
t32 = sin(t25);
t33 = sin(t26);
t34 = sin(t31);
t35 = cos(t31);
out1 = cos(q1+t8).*(-1.685629972845689e+2)-cos(q1+t17).*1.231801025226188e+1-cos(q1+t25).*1.8537791824125e+1-t6.*t12.*9.749394917919133-t6.*t13.*9.749394917919133-t12.*t20.*9.749394917919133-t12.*t21.*5.629745052601031e-1-t13.*t21.*5.629745052601031e-1-t12.*t27.*5.629745052601031e-1-t12.*t28.*8.47239445906875e-1-t13.*t28.*8.47239445906875e-1-t12.*t30.*2.7878901789375e-2-t13.*t30.*2.7878901789375e-2-t12.*t32.*8.47239445906875e-1-t12.*t33.*1.408728055853475e-2-t12.*t34.*1.408728055853475e-2-t13.*t33.*1.408728055853475e-2-t12.*t35.*2.7878901789375e-2-4.501575681747185e+18.*cos(q1+t31+atan(1.979012320620293)).*1.518245529297246e-19-(dq1.*2.939810987834733e+1+dq2.*2.939810987834733e+1+dq3.*2.939810987834733e+1+dq4.*2.461047736910614+dq5.*1.485806987821211+dq6.*3.275366401942843e-2+dq1.*t2.*1.949878983583827e+1+dq1.*t3.*3.12508296797445+dq2.*t2.*1.949878983583827e+1+dq1.*t4.*1.568437764540413+dq2.*t3.*3.12508296797445+dq1.*t5.*5.6349122234139e-2+dq2.*t4.*1.568437764540413+dq3.*t3.*3.12508296797445+dq2.*t5.*5.6349122234139e-2+dq3.*t4.*1.568437764540413+dq4.*t3.*1.562541483987225-dq1.*t7.*1.115156071575e-1+dq3.*t5.*5.6349122234139e-2+dq4.*t4.*1.568437764540413-dq2.*t7.*1.115156071575e-1+dq4.*t5.*5.6349122234139e-2+dq5.*t4.*7.842188822702063e-1-dq3.*t7.*1.115156071575e-1+dq5.*t5.*5.6349122234139e-2-dq4.*t7.*1.115156071575e-1+dq6.*t5.*2.81745611170695e-2-dq5.*t7.*1.115156071575e-1-dq6.*t7.*5.575780357875e-2+dq1.*t14.*1.125949010520206+dq1.*t15.*4.70304345483+dq2.*t14.*1.125949010520206+dq1.*t16.*5.6349122234139e-2+dq2.*t15.*4.70304345483+dq2.*t16.*5.6349122234139e-2+dq3.*t15.*4.70304345483+dq3.*t16.*5.6349122234139e-2+dq4.*t15.*2.351521727415+dq4.*t16.*5.6349122234139e-2+dq5.*t15.*2.351521727415+dq5.*t16.*2.81745611170695e-2+dq6.*t16.*2.81745611170695e-2-dq1.*t22.*1.115156071575e-1+dq1.*t23.*1.69447889181375-dq2.*t22.*1.115156071575e-1+dq1.*t24.*7.8198781875948e-2+dq2.*t23.*1.69447889181375-dq3.*t22.*1.115156071575e-1+dq2.*t24.*7.8198781875948e-2-dq4.*t22.*1.115156071575e-1+dq3.*t24.*7.8198781875948e-2-dq5.*t22.*5.575780357875e-2+dq4.*t24.*3.9099390937974e-2-dq6.*t22.*5.575780357875e-2+dq5.*t24.*3.9099390937974e-2-dq1.*t29.*1.5475635279e-1+dq6.*t24.*3.9099390937974e-2+dq1.*t30.*2.81745611170695e-2-dq2.*t29.*1.5475635279e-1+dq2.*t30.*2.81745611170695e-2-dq3.*t29.*1.5475635279e-1-dq4.*t29.*7.7378176395e-2-dq1.*t33.*5.575780357875e-2-dq5.*t29.*7.7378176395e-2-dq1.*t34.*5.575780357875e-2-dq2.*t33.*5.575780357875e-2-dq6.*t29.*7.7378176395e-2+dq1.*t35.*2.81745611170695e-2+dq1.*cos(t8).*1.949878983583827e+1+dq1.*cos(t17).*1.125949010520206+dq1.*cos(t25).*1.69447889181375)./sampT-dq1.*dq2.*t6.*1.949878983583827e+1-dq1.*dq3.*t6.*9.749394917919133-dq2.*dq3.*t6.*9.749394917919133-dq1.*dq2.*t20.*9.749394917919133-dq1.*dq2.*t21.*1.125949010520206-dq1.*dq3.*t20.*9.749394917919133-dq1.*dq3.*t21.*5.629745052601031e-1-dq1.*dq4.*t21.*5.629745052601031e-1-dq2.*dq3.*t21.*5.629745052601031e-1-dq2.*dq4.*t21.*5.629745052601031e-1-dq1.*dq2.*t27.*5.629745052601031e-1-dq1.*dq2.*t28.*1.69447889181375-dq1.*dq3.*t27.*5.629745052601031e-1-dq1.*dq3.*t28.*8.47239445906875e-1-dq1.*dq4.*t27.*5.629745052601031e-1-dq1.*dq2.*t30.*5.575780357875e-2-dq1.*dq4.*t28.*8.47239445906875e-1-dq2.*dq3.*t28.*8.47239445906875e-1-dq1.*dq3.*t30.*2.7878901789375e-2-dq1.*dq5.*t28.*8.47239445906875e-1-dq2.*dq4.*t28.*8.47239445906875e-1-dq1.*dq2.*t32.*8.47239445906875e-1-dq1.*dq4.*t30.*2.7878901789375e-2-dq2.*dq3.*t30.*2.7878901789375e-2-dq2.*dq5.*t28.*8.47239445906875e-1-dq1.*dq2.*t33.*2.81745611170695e-2-dq1.*dq3.*t32.*8.47239445906875e-1-dq1.*dq5.*t30.*2.7878901789375e-2-dq2.*dq4.*t30.*2.7878901789375e-2-dq1.*dq2.*t34.*1.408728055853475e-2-dq1.*dq3.*t33.*1.408728055853475e-2-dq1.*dq4.*t32.*8.47239445906875e-1-dq1.*dq6.*t30.*2.7878901789375e-2-dq2.*dq5.*t30.*2.7878901789375e-2-dq1.*dq2.*t35.*2.7878901789375e-2-dq1.*dq3.*t34.*1.408728055853475e-2-dq1.*dq4.*t33.*1.408728055853475e-2-dq1.*dq5.*t32.*8.47239445906875e-1-dq2.*dq3.*t33.*1.408728055853475e-2-dq2.*dq6.*t30.*2.7878901789375e-2-dq1.*dq3.*t35.*2.7878901789375e-2-dq1.*dq4.*t34.*1.408728055853475e-2-dq1.*dq5.*t33.*1.408728055853475e-2-dq2.*dq4.*t33.*1.408728055853475e-2-dq1.*dq4.*t35.*2.7878901789375e-2-dq1.*dq5.*t34.*1.408728055853475e-2-dq1.*dq6.*t33.*1.408728055853475e-2-dq2.*dq5.*t33.*1.408728055853475e-2-dq1.*dq5.*t35.*2.7878901789375e-2-dq1.*dq6.*t34.*1.408728055853475e-2-dq2.*dq6.*t33.*1.408728055853475e-2-dq1.*dq6.*t35.*2.7878901789375e-2;
