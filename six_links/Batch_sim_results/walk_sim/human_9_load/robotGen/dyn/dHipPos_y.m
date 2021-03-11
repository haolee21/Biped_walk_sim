function dHipPos_y = dHipPos_y(in1)
%DHIPPOS_Y
%    DHIPPOS_Y = DHIPPOS_Y(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    04-Feb-2021 02:45:50

q_t1 = in1(:,1);
q_t2 = in1(:,2);
t2 = cos(q_t1);
t3 = cos(q_t2);
t4 = sin(q_t1);
t5 = sin(q_t2);
t6 = t2.*t3.*4.4835e-1;
t7 = t4.*t5.*4.4835e-1;
t8 = -t7;
dHipPos_y = [t2.*4.5018e-1+t6+t8;t6+t8;0.0;0.0;0.0;0.0];
