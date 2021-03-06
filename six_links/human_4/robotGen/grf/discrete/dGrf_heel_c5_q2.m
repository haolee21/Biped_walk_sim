function dGrf_heel_c5_q2 = dGrf_heel_c5_q2(in1,in2,s,sampT)
%DGRF_HEEL_C5_Q2
%    DGRF_HEEL_C5_Q2 = DGRF_HEEL_C5_Q2(IN1,IN2,S,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    17-Jul-2020 17:34:35

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
t2 = sin(q_t1);
t3 = q_t1+q_t2;
t6 = 1.0./sampT;
t4 = cos(t3);
t5 = sin(t3);
t7 = q_t3+q_t4+t3;
t16 = t2.*4.2738e-1;
t8 = cos(t7);
t9 = q_t5+t7;
t10 = sin(t7);
t26 = t4.*4.13678e-1;
t27 = t5.*4.13678e-1;
t11 = q_t6+t9;
t12 = sin(t9);
t13 = cos(t9);
t30 = t8.*4.13678e-1;
t31 = t10.*4.13678e-1;
t14 = cos(t11);
t15 = sin(t11);
t23 = t13.*4.2738e-1;
t24 = t12.*4.2738e-1;
t17 = t14.*7.225e-2;
t18 = t15.*7.225e-2;
t22 = qd_t6.*t15.*(-7.225e-2);
t25 = -t23;
t19 = qd_t6.*t17;
t20 = qd_t6.*t18;
t21 = -t18;
t28 = t17+t24;
t29 = t18+t25;
t32 = qd_t5.*t28;
t33 = -qd_t5.*(t21+t23);
t34 = qd_t5.*(t21+t23);
t35 = t28+t31;
t36 = t21+t23+t30;
t37 = qd_t3.*t35;
t38 = qd_t4.*t35;
t39 = qd_t1.*t36;
t40 = qd_t2.*t36;
t41 = qd_t3.*t36;
t42 = qd_t4.*t36;
t43 = t27+t35;
t44 = t26+t36;
t45 = qd_t2.*t43;
t46 = qd_t2.*t44;
t47 = t16+t43;
t49 = t22+t34+t39+t40+t41+t42;
t48 = qd_t1.*t47;
t50 = t19+t32+t37+t38+t45+t48;
t51 = s.*t6.*t35.*t50.*2.0;
t52 = s.*t49.*t50;
t53 = t51+t52;
dGrf_heel_c5_q2 = [s.*t50.*(t22+t34+t41+t42+t46+qd_t1.*(t44+cos(q_t1).*4.2738e-1))+s.*t6.*t47.*t50.*2.0;s.*t50.*(t22+t34+t41+t42+t46+qd_t1.*t44)+s.*t6.*t43.*t50.*2.0;t53;t53;s.*t50.*(t22+t34+qd_t1.*(t21+t23)+qd_t2.*(t21+t23)+qd_t3.*(t21+t23)+qd_t4.*(t21+t23))+s.*t6.*t28.*t50.*2.0;-s.*t50.*(t20+qd_t1.*t18+qd_t2.*t18+qd_t3.*t18+qd_t4.*t18+qd_t5.*t18)+s.*t6.*t14.*t50.*1.445e-1];
