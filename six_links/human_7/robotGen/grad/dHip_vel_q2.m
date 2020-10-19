function dHip_vel_q2 = dHip_vel_q2(in1,in2,sampT)
%DHIP_VEL_Q2
%    DHIP_VEL_Q2 = DHIP_VEL_Q2(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    17-Oct-2020 03:23:30

q_t1 = in1(:,1);
q_t2 = in1(:,2);
qd_t1 = in2(:,1);
qd_t2 = in2(:,2);
t2 = q_t1+q_t2;
t5 = 1.0./sampT;
t3 = cos(t2);
t4 = sin(t2);
t6 = qd_t2.*t3.*2.226561e-1;
t7 = -t6;
dHip_vel_q2 = [t7-(qd_t1.*(t3.*4.453122e-1+cos(q_t1).*4.60062e-1))./2.0-t5.*(t4.*4.453122e-1+sin(q_t1).*4.60062e-1);t7-qd_t1.*t3.*2.226561e-1-t4.*t5.*4.453122e-1;0.0;0.0;0.0;0.0];
