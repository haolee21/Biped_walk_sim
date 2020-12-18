function [ceq,gradceq]=hipVelCon(x,p)
% the start and end velocity are the same
% direction

% c_cell = cellfun(@(x)hip_x_vel(x,p),num2cell(x,1));
% c = cell2mat(c_cell);
% gradc_cell = cellfun(@(x)dHip_x_vel(x,p),num2cell(x,1));
% gradc = cell2mat(gradc_cell);

q1_1 = x(:,1);
q1_2 = x(:,2);
q1 = (q1_1+q1_2)/2;
dq1 = (q1_2-q1_1)/p.sampT;
qend_1 = x(:,end-1);
qend_2 = x(:,end);
qend = (qend_1+qend_2)/2;
dqend = (qend_2 -qend_1)/p.sampT;

v1 = hip_vel_x(q1.',dq1.',p.sampT);
vend = hip_vel_x(qend.',dqend.',p.sampT);

ceq = v1-vend;
gradceq_q=zeros(p.varDim.q1,p.varDim.q2);

gradceq_q(:,1) = dHip_vel_q2(q1.',dq1.',p.sampT);
gradceq_q(:,end) = -dHip_vel_q1(qend.',dqend.',p.sampT);
gradceq = [reshape(gradceq_q,[p.varDim.q1*p.varDim.q2,1]);zeros(p.varDim.u1*p.varDim.u2+p.varDim.fext1_1*p.varDim.fext1_2+p.varDim.fext2_1*p.varDim.fext2_2,1)];
    

end