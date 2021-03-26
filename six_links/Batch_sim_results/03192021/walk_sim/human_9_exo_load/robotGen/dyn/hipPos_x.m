function out1 = hipPos_x(in1)
%HIPPOS_X
%    OUT1 = HIPPOS_X(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    04-Feb-2021 02:45:13

q_t1 = in1(:,1);
q_t2 = in1(:,2);
t2 = cos(q_t1);
out1 = t2.*4.5018e-1-sin(q_t1).*sin(q_t2).*4.4835e-1+t2.*cos(q_t2).*4.4835e-1;
