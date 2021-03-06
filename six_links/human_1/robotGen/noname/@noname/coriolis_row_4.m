function Crow = coriolis_row_4(rob,in2,in3)
%% CORIOLIS_ROW_4 - Computation of the robot specific Coriolis matrix row for joint 4 of 6. 
% ========================================================================= 
%    
%    Crow = coriolis_row_4(rob,q,qd) 
%    Crow = rob.coriolis_row_4(q,qd) 
%    
%  Description:: 
%    Given a full set of joint variables and their first order temporal derivatives this function computes the 
%    Coriolis matrix row number 4 of 6 for noname. 
%    
%  Input:: 
%    rob: robot object of noname specific class 
%    qd:  6-element vector of generalized 
%    q:  6-element vector of generalized 
%    
%  Output:: 
%    Crow:  [1x6] row of the robot Coriolis matrix 
%    
%  Example:: 
%    --- 
%    
%  Known Bugs:: 
%    --- 
%    
%  TODO:: 
%    --- 
%    
%  References:: 
%    1) Robot Modeling and Control - Spong, Hutchinson, Vidyasagar 
%    2) Modelling and Control of Robot Manipulators - Sciavicco, Siciliano 
%    3) Introduction to Robotics, Mechanics and Control - Craig 
%    4) Modeling, Identification & Control of Robots - Khalil & Dombre 
%    
%  Authors:: 
%    This is an autogenerated function. 
%    Code generator written by: 
%    Joern Malzahn 
%    2012 RST, Technische Universitaet Dortmund, Germany 
%    http://www.rst.e-technik.tu-dortmund.de 
%    
%  See also coriolis.
%    
    
% Copyright (C) 1993-2020, by Peter I. Corke 
% Copyright (C) 2012-2020, by Joern Malzahn 
% 
% This file has been automatically generated with The Robotics Toolbox for Matlab (RTB). 
% 
% RTB and code generated with RTB is free software: you can redistribute it and/or modify 
% it under the terms of the GNU Lesser General Public License as published by 
% the Free Software Foundation, either version 3 of the License, or 
% (at your option) any later version. 
%  
% RTB is distributed in the hope that it will be useful, 
% but WITHOUT ANY WARRANTY; without even the implied warranty of 
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the 
% GNU Lesser General Public License for more details. 
%  
% You should have received a copy of the GNU Leser General Public License 
% along with RTB.  If not, see <http://www.gnu.org/licenses/>. 
% 
% http://www.petercorke.com 
% 
% The code generation module emerged during the work on a project funded by 
% the German Research Foundation (DFG, BE1569/7-1). The authors gratefully  
% acknowledge the financial support. 

%% Bugfix
%  In some versions the symbolic toolbox writes the constant $pi$ in
%  capital letters. This way autogenerated functions might not work properly.
%  To fix this issue a local variable is introduced:
PI = pi;
   




%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    28-Apr-2020 10:49:06

q2 = in2(:,2);
q3 = in2(:,3);
q4 = in2(:,4);
q5 = in2(:,5);
q6 = in2(:,6);
qd1 = in3(:,1);
qd2 = in3(:,2);
qd3 = in3(:,3);
qd4 = in3(:,4);
qd5 = in3(:,5);
qd6 = in3(:,6);
t2 = sin(q5);
t3 = sin(q6);
t4 = q3+q4;
t5 = q5+q6;
t6 = q5+t4;
t7 = sin(t4);
t8 = sin(t5);
t9 = t4+t5;
t14 = qd5.*t2.*3.7672e-1;
t18 = qd6.*t3.*3.549e-2;
t10 = sin(t6);
t11 = sin(t9);
t12 = qd5.*t8.*5.46e-2;
t13 = qd6.*t8.*5.46e-2;
t17 = -t14;
t21 = -t18;
t22 = qd1.*t7.*1.25956;
t23 = qd2.*t7.*1.25956;
t15 = -t12;
t16 = -t13;
t19 = qd1.*t11.*5.46e-2;
t20 = qd2.*t11.*5.46e-2;
t24 = qd1.*t10.*3.7672e-1;
t25 = qd2.*t10.*3.7672e-1;
t26 = t15+t16+t17+t21;
Crow = [t19+t20+t22+t23+t24+t25+t26+qd1.*sin(q2+t4).*1.354027+qd1.*sin(q2+t6).*4.04974e-1+qd1.*sin(q2+t9).*5.8695e-2,t19+t20+t22+t23+t24+t25+t26,t26,t26,t26-qd1.*t2.*3.7672e-1-qd2.*t2.*3.7672e-1-qd3.*t2.*3.7672e-1-qd4.*t2.*3.7672e-1-qd1.*t8.*5.46e-2-qd2.*t8.*5.46e-2-qd3.*t8.*5.46e-2-qd4.*t8.*5.46e-2,(t3.*1.3e+1+t8.*2.0e+1).*(qd1+qd2+qd3+qd4+qd5+qd6).*(-2.73e-3)];
