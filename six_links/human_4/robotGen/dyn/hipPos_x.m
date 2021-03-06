function out1 = hipPos_x(in1)
%HIPPOS_X
%    OUT1 = HIPPOS_X(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    17-Jul-2020 17:32:32

q_t1 = in1(:,1);
q_t2 = in1(:,2);
t2 = cos(q_t1);
out1 = t2.*4.2738e-1-sin(q_t1).*sin(q_t2).*4.13678e-1+t2.*cos(q_t2).*4.13678e-1;
