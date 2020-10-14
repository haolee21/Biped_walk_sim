% when x converges to infeasible points, it is often the trajectory is
% acceptable, but the control inputs and the ground reaction force are off
% a lot, here we will regenerate the force and ground reaction force with
% forward dynamics

% however, since we use the discrete Lagrangina, we have to do forward
% dynamics with fmincon
function x = forward_dyn(s,p)
q = s(1:p.numJ,:);



end