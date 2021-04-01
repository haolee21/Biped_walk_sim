function jacobe = jacobe(rob,in2)
%% JACOBE - Jacobian with respect to the end-effector coordinate frame of the noname arm. 
% ========================================================================= 
%    
%    Jn = jacobe(rob,q) 
%    Jn = rob.jacobe(q) 
%    
%  Description:: 
%    Given a full set of joint variables the function 
%    computes the robot jacobian with respect to the end-effector frame. 
%    
%  Input:: 
%    q:  6-element vector of generalized coordinates. 
%    Angles have to be given in radians! 
%    
%  Output:: 
%    Jn:  [6x6] Jacobian matrix 
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
%    This is an autogenerated function! 
%    Code generator written by: 
%    Joern Malzahn 
%    2012 RST, Technische Universitaet Dortmund, Germany 
%    http://www.rst.e-technik.tu-dortmund.de 
%    
%  See also fkine,jacob0.
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
%    28-Apr-2020 10:48:17

q2 = in2(:,2);
q3 = in2(:,3);
q4 = in2(:,4);
q5 = in2(:,5);
q6 = in2(:,6);
t2 = cos(q6);
t3 = sin(q6);
t4 = q5+q6;
t5 = cos(t4);
t6 = sin(t4);
t7 = q3+q4+t4;
t13 = t2.*(1.3e+1./5.0e+1);
t14 = t3.*(1.3e+1./5.0e+1);
t8 = cos(t7);
t9 = q2+t7;
t10 = sin(t7);
t11 = t5.*(2.0./5.0);
t12 = t6.*(2.0./5.0);
t15 = t8.*(2.0./5.0);
t16 = t10.*(2.0./5.0);
t17 = t11+t13;
t18 = t12+t14;
jacobe = reshape([t16+t18+sin(t9).*(4.3e+1./1.0e+2),t15+t17+cos(t9).*(4.3e+1./1.0e+2),0.0,0.0,0.0,1.0,t16+t18,t15+t17,0.0,0.0,0.0,1.0,t18,t17,0.0,0.0,0.0,1.0,t18,t17,0.0,0.0,0.0,1.0,t14,t13,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,1.0],[6,6]);
