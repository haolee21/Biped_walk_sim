function out1 = hipPos_y(in1)
%HIPPOS_Y
%    OUT1 = HIPPOS_Y(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    22-Jan-2021 21:27:40

q_t1 = in1(:,1);
q_t2 = in1(:,2);
t2 = sin(q_t1);
out1 = t2.*4.182e-1+cos(q_t1).*sin(q_t2).*4.165e-1+t2.*cos(q_t2).*4.165e-1;
