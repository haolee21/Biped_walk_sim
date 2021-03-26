function J_hip = J_hip(in1)
%J_HIP
%    J_HIP = J_HIP(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    23-Feb-2021 13:34:11

q_t1 = in1(:,1);
q_t2 = in1(:,2);
t2 = q_t1+q_t2;
t3 = cos(t2);
t4 = sin(t2);
t5 = t3.*4.4835e-1;
t6 = t4.*4.4835e-1;
t7 = -t6;
J_hip = reshape([t7-sin(q_t1).*4.5018e-1,t5+cos(q_t1).*4.5018e-1,0.0,t7,t5,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],[3,6]);
