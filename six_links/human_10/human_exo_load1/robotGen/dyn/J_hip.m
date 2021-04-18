function J = J_hip(in1)
%J_HIP
%    J = J_HIP(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    16-Apr-2021 12:57:24

q1 = in1(:,1);
q2 = in1(:,2);
t2 = q1+q2;
t3 = cos(t2);
t4 = sin(t2);
t5 = t3.*4.4835e-1;
t6 = t4.*4.4835e-1;
t7 = -t6;
J = reshape([t7-sin(q1).*4.4835e-1,t5+cos(q1).*4.4835e-1,0.0,t7,t5,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],[3,6]);
