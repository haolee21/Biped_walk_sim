function head_y_pos = head_y_pos(in1)
%HEAD_Y_POS
%    HEAD_Y_POS = HEAD_Y_POS(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    02-Jun-2020 22:15:05

q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
t2 = q1+q2;
head_y_pos = sin(q3+t2).*7.6014e-1+sin(q1).*4.5252e-1+sin(t2).*4.38012e-1;
