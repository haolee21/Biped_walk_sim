function C = coriolis(rob,q,qd)
%% CORIOLIS - Coriolis matrix for the noname arm 
% ========================================================================= 
%    
%    Crow = coriolis(rob,q,qd) 
%    Crow = rob.coriolis(q,qd) 
%    
%  Description:: 
%    Given a full set of joint variables and their first order temporal derivatives the function computes the 
%    Coriolis matrix of the robot. 
%    
%  Input:: 
%    rob: robot object of noname specific class 
%    qd:  6-element vector of generalized 
%    q:  6-element vector of generalized 
%    
%  Output:: 
%    C:  [6x6] Coriolis matrix 
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
%  See also inertia.
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

C = zeros(length(q)); 
C(1,:) = rob.coriolis_row_1(q,qd); 
C(2,:) = rob.coriolis_row_2(q,qd); 
C(3,:) = rob.coriolis_row_3(q,qd); 
C(4,:) = rob.coriolis_row_4(q,qd); 
C(5,:) = rob.coriolis_row_5(q,qd); 
C(6,:) = rob.coriolis_row_6(q,qd); 