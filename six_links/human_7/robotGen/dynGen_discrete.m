function dyn = dynGen_discrete(robot,end_eff)
%% the following script will only calculate the dL/dq and dL/ddq to simplify the calculation
% when using, one have to 



%%
numJ = length(robot.links);
% q1 = sym('q1',[1,numJ]);
% q2 = sym('q2',[1,numJ]);
% syms sampT

% assume(q1,'real');
% assume(q2,'real');
% assume(sampT,'real');
% q_t = 0.5*(q1+q2); %turn q into symbolic expression
% qd_t = (q2-q1)/sampT;
q_t = sym('q_t',[1,numJ]);
qd_t = sym('qd_t',[1,numJ]);
assume(q_t,'real');
assume(qd_t,'real');
% symbols for output

% syms G_sym  % this is for easier to find G matrix, the robot should already have the g value

% calculate total T,V

curRot = eye(4);
% g = robot.gravity*G_sym;
g = robot.gravity;


% calculate joint base velocity/rotational matrix  (calculate first in
% order to use parallel for later)
j_vel = sym(zeros(3,numJ));
rotM = cell(1,numJ);
w_all = cell(1,numJ);
cur_w = [0;0;0];
for i=2:numJ % base has no translational velocity
    cur_q = sym(zeros(1,i-1));
    for k=1:i-1
        cur_q(1,k) = q_t(k);
    end
    curRot =curRot*turnRTtoMatrix(robot.A(i-1,cur_q));
    rotM{1,i-1} = curRot;
    
    
    if robot.links(i).jointtype=='R'
        cur_w = curRot(1:3,1:3)*[0;0;qd_t(i-1)]+cur_w;
        j_vel(:,i) = j_vel(:,i-1)+ simplify(curRot(1:3,1:3)*cross(cur_w,[robot.links(i).a;0;0]));
        w_all{1,i-1}=simplify(cur_w);
    end
end
% in the above loop we have not calculate the last rotational matrix, which
% will be done here
cur_q = sym(zeros(1,numJ));
for k=1:numJ
    cur_q(1,k) = q_t(k);
end
curRot = curRot*turnRTtoMatrix(robot.A(numJ,cur_q));
rotM{1,numJ} = curRot;
w_all{1,numJ} = cur_w + curRot(1:3,1:3)*[0;0;qd_t(numJ)];



%% if we only need new jacobian, we can ignore this cell
% 
dLq = sym(zeros(numJ,numJ));
dLdq = sym(zeros(numJ,numJ));


% for some reason in parfor I cannot called diff for symbolic, here I
% self-defined one
% syms x
% diff_sym = matlabFunction(diff(f1(x),x));

for i=1:numJ
%     potential energy
    lc = [robot.links(i).r,1].';
    
    lc_base = rotM{1,i}*lc;
    V_cur = robot.links(i).m*g.'*lc_base(1:3,1);
    
    
%     kinetic energy
    if robot.links(i).jointtype == 'R' % if this is revolute joint
%         rotational energy
        cur_w = w_all{1,i};
        T_cur = simplify(0.5*cur_w.'*(robot.links(i).I)*cur_w);
%         translational energy
        cur_v = simplify(j_vel(:,i)+rotM{1,i}(1:3,1:3)*cross(cur_w,lc(1:3,1)));
        T_cur = T_cur+simplify(0.5*robot.links(i).m*(cur_v.'*cur_v));
        
        L = T_cur-V_cur;
        
    end

    % for discrete Lagrangian, we calculate the derivate with respect to q1, q2
    % for L = L(q1,q2) 
    for c=1:i %there is no point to calculate joint more than i since it will be zero (e.g., link 2's energy is not related to joint 5)
% %         
        dLq(c,i) = diff(L,q_t(1,c));
        dLdq(c,i) = diff(L,qd_t(1,c));

    end
        
     

    
    
    
end
% add up L1, L2 terms
dLq = sum(dLq,2);
dLdq = sum(dLdq,2);
% % build M,V,G matrix

% totL = L1-L2;
% dyn.M = sym(zeros(numJ));
% dyn.G = sym(zeros(1,numJ));
% dyn.V = sym(zeros(1,numJ));
% for c=1:numJ
%     for i =1:numJ
%         dyn.M(c,i) = simplify(diff(totL(c,1),dqd(1,i)));
%         
%     end
%     dyn.G(1,c) = diff(totL(c,1),G_sym);
%     dyn.V(1,c) = simplify(totL(c,1)-dyn.M(c,:)*dqd.'-dyn.G(1,c)*G_sym);
%     
%     
% end

dyn.dLq =dLq;
dyn.dLdq = dLdq;


%%
% to make the calculation simplier, we did not add external force, thus
% ,not jacobian can be found
% for here, we directly use forward kinematic to find the jacobian

% yet, jacobian only focus on position at single time frame, for here we
% use q1


% Jacobian at the hip, this is for making sure it won't go backward
Hip = turnRTtoMatrix(robot.A(1:1:3,q_t))*[0;0;0;1];
hipPos = Hip(1:3,1);
dyn.hipPos = hipPos;
dyn.J_hip = sym(zeros(3,numJ));
for i=1:numJ
    for k=1:3
        dyn.J_hip(k,i) = simplify(diff(hipPos(k,1),q_t(i)));
    end
    
end
% 
% 
% % Jacobian at the toe
endT  = turnRTtoMatrix(robot.A(1:1:numJ,q_t))*[end_eff(1);end_eff(2);0;1]; % end_eff is [l_foot,h_heel,l_heel], for the toe, it is [l_foot,l_heel,0] position of ankle joint
endPos = endT(1:3,1);
dyn.toePos = endPos;
dyn.J_toe = sym(zeros(3,numJ));
for i=1:numJ
    for k=1:3
        dyn.J_toe(k,i) = simplify(diff(endPos(k,1),q_t(i)));
        
    end
    
end
% %% this is for a special jacobian on heel, since external force also act on the heel
endT2 = turnRTtoMatrix(robot.A(1:1:numJ,q_t))*[-end_eff(3);end_eff(2);0;1];  % heel is [-l_heel,h_heel,0] position of ankle joint
endPos2 = endT2(1:3,1);
dyn.heelPos = endPos2;
dyn.J_heel = sym(zeros(3,numJ));
% end_w2 = subs(w_all{1,end},[q_t,qd_t],[q,qd]);
for i=1:numJ
    for k=1:3
        dyn.J_heel(k,i) = simplify(diff(endPos2(k,1),q_t(i)));
%         dyn.J2(k+3,i) = simplify(diff(end_w2(k,1),qd(i))); 
%         
    end
%     
end
end