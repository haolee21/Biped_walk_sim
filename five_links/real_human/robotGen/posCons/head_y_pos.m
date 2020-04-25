function head_y_pos = head_y_pos(in1)
%HEAD_Y_POS
%    HEAD_Y_POS = HEAD_Y_POS(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    24-Apr-2020 12:32:12

q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
t2 = q1+q2;
head_y_pos = sin(q3+t2).*(7.1e+1./1.0e+2)+sin(q1).*(4.3e+1./1.0e+2)+sin(t2).*(2.0./5.0);
