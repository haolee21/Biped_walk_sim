function dFs_toe_c1_20 = dFs_toe_c1_20(in1,in2,us,ud)
%DFS_TOE_C1_20
%    DFS_TOE_C1_20 = DFS_TOE_C1_20(IN1,IN2,US,UD)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    24-Jun-2020 02:29:34

Fy_toe = in2(:,2);
dFs_toe_c1_20 = Fy_toe.*-2.0;
