function hip_vel_x = hip_vel_x(in1,in2,sampT)
%HIP_VEL_X
%    HIP_VEL_X = HIP_VEL_X(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    21-Apr-2021 14:50:57

dq1 = in2(:,1);
dq2 = in2(:,2);
q1 = in1(:,1);
q2 = in1(:,2);
t2 = q1+q2;
t3 = sin(t2);
hip_vel_x = dq2.*t3.*(-4.4835e-1)-dq1.*(t3.*4.4835e-1+sin(q1).*4.4835e-1);
