function hip_vel_x = hip_vel_x(in1,in2,sampT)
%HIP_VEL_X
%    HIP_VEL_X = HIP_VEL_X(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    04-Dec-2020 16:37:06

q_t1 = in1(:,1);
q_t2 = in1(:,2);
qd_t1 = in2(:,1);
qd_t2 = in2(:,2);
t2 = q_t1+q_t2;
t3 = sin(t2);
hip_vel_x = qd_t2.*t3.*(-4.453122e-1)-qd_t1.*(t3.*4.453122e-1+sin(q_t1).*4.60062e-1);
