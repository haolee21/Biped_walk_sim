function [c,ceq,gradc,gradceq]=grf_cons_d(x,p)
% equality constraint
% need average
grf_toe_c1 = zeros(size(x,2)-1,1);
grf_heel_c1 = zeros(size(x,2)-1,1);
dgrf_toe_c1 = zeros(size(x,1),size(x,2),size(grf_toe_c1,1));
dgrf_heel_c1 = zeros(size(x,1),size(x,2),size(grf_heel_c1,1));


% inequality constraint

grf_toe_c3 = zeros(size(x,2),1); 
grf_heel_c3 = zeros(size(x,2),1);
dgrf_toe_c3 = zeros(size(x,1),size(x,2),size(x,2));
dgrf_heel_c3 = zeros(size(x,1),size(x,2),size(x,2));

grf_toe_c6 = zeros(size(x,2),1); 
grf_heel_c6 = zeros(size(x,2),1);
dgrf_toe_c6 = zeros(size(x,1),size(x,2),size(x,2));
dgrf_heel_c6 = zeros(size(x,1),size(x,2),size(x,2));


%need average

grf_toe_c4 = zeros(size(x,2)-1,1);
grf_heel_c4 = zeros(size(x,2)-1,1);



dgrf_toe_c4 = zeros(size(x,1),size(x,2),size(x,2)-1);
dgrf_heel_c4 = zeros(size(x,1),size(x,2),size(x,2)-1);

for i=1:size(x,2)-1 %we only have totT-1 constraints since all velocity is generated by (q2-q1)/sampT
    
    % one of the important thing for using this condition in discrete-time
    % is all fo the states need to be averaged
    q1 = x(1:p.numJ,i);
    q2 = x(1:p.numJ,i+1);
    q_cur = (q1+q2)/2;
    dq = (q2-q1)/p.sampT;
    F_toe= (x(p.numJ*2+1:p.numJ*2+2,i)+x(p.numJ*2+1:p.numJ*2+2,i+1))/2;
    F_heel = (x(p.numJ*2+3:p.numJ*2+4,i)+x(p.numJ*2+3:p.numJ*2+4,i+1))/2;
    

    
    s_toe1 = x(p.numJ*2+5,i);
%     
    s_toe = (x(p.numJ*2+5,i)+x(p.numJ*2+5,i+1))/2;
    
    s_heel1 = x(p.numJ*2+6,i);
%     s_heel2 = x(p.numJ*2+6,i+1);
    s_heel = (x(p.numJ*2+6,i)+x(p.numJ*2+6,i+1))/2;
    
    grf_toe_c1(i,1) = Grf_toe_c1(q_cur.',dq.',F_toe(2),s_toe,p.toe_th,p.k,p.cmax,p.dmax);
    grf_heel_c1(i,1)= Grf_heel_c1(q_cur.',dq.',F_heel(2),s_heel,p.toe_th,p.k,p.cmax,p.dmax);
    
    grf_toe_c3(i,1)=Grf_toe_c3(q1.',s_toe1,p.toe_th);
    grf_heel_c3(i,1)=Grf_heel_c3(q1.',s_heel1,p.toe_th);
    
    grf_toe_c6(i,1)=Grf_toe_c6(q1.',s_toe1,p.toe_th);
    grf_heel_c6(i,1) = Grf_heel_c6(q1.',s_heel1,p.toe_th);
    
    grf_toe_c4(i,1)=Grf_toe_c4(q_cur.',dq.',F_toe(1));
    grf_heel_c4(i,1)=Grf_heel_c4(q_cur.',dq.',F_heel(1));
    

    if nargout>2
        
        dgrf_toe_c1(1:p.numJ,i,i) = dGrf_toe_c1_q1(q_cur.',dq.',F_toe(2),s_toe,p.sampT,p.toe_th,p.k,p.cmax,p.dmax);
        dgrf_toe_c1(1:p.numJ,i+1,i) = dGrf_toe_c1_q2(q_cur.',dq.',F_toe(2),s_toe,p.sampT,p.toe_th,p.k,p.cmax,p.dmax);
        dgrf_toe_c1(2*p.numJ+2,i,i)=0.5;
        dgrf_toe_c1(2*p.numJ+2,i+1,i)=0.5;
        dgrf_toe_c1(2*p.numJ+5,i,i)=dGrf_toe_c1_s(q_cur.',dq.',s_toe,p.toe_th,p.k,p.cmax,p.dmax)*0.5;
        dgrf_toe_c1(2*p.numJ+5,i+1,i)=dGrf_toe_c1_s(q_cur.',dq.',s_toe,p.toe_th,p.k,p.cmax,p.dmax)*0.5;
        
        dgrf_heel_c1(1:p.numJ,i,i) = dGrf_heel_c1_q1(q_cur.',dq.',F_heel(2),s_heel,p.sampT,p.toe_th,p.k,p.cmax,p.dmax);
        dgrf_heel_c1(1:p.numJ,i+1,i) = dGrf_heel_c1_q2(q_cur.',dq.',F_heel(2),s_heel,p.sampT,p.toe_th,p.k,p.cmax,p.dmax);
        dgrf_heel_c1(2*p.numJ+4,i,i)=0.5;
        dgrf_heel_c1(2*p.numJ+4,i+1,i)=0.5;
        dgrf_heel_c1(2*p.numJ+6,i,i)=dGrf_heel_c1_s(q_cur.',dq.',s_heel,p.toe_th,p.k,p.cmax,p.dmax)*0.5;
        dgrf_heel_c1(2*p.numJ+6,i+1,i)=dGrf_heel_c1_s(q_cur.',dq.',s_heel,p.toe_th,p.k,p.cmax,p.dmax)*0.5;
        

        dgrf_toe_c3(1:p.numJ,i,i)=dGrf_toe_c3_q(q1.',s_toe1,p.toe_th);
        dgrf_heel_c3(1:p.numJ,i,i)=dGrf_heel_c3_q(q1.',s_toe1,p.toe_th);
        dgrf_toe_c3(p.numJ*2+5,i,i)=dGrf_toe_c3_s(q1.',p.toe_th);
        dgrf_heel_c3(p.numJ*2+6,i,i)=dGrf_heel_c3_s(q1.',p.toe_th);
%         
        dgrf_toe_c6(1:p.numJ,i,i)=dGrf_toe_c6_q(q1.',s_toe1,p.toe_th);
        dgrf_toe_c6(p.numJ*2+5,i,i)=dGrf_toe_c6_s(q1.',p.toe_th);
        
        
        dgrf_heel_c6(1:p.numJ,i,i)=dGrf_heel_c6_q(q1.',s_heel1,p.toe_th);
        dgrf_heel_c6(p.numJ*2+6,i,i)=dGrf_heel_c6_s(q1.',p.toe_th);
%   
        
        dgrf_toe_c4(1:p.numJ,i,i)=dGrf_toe_c4_q1(q_cur.',dq.',F_toe(1),p.sampT);
        dgrf_toe_c4(1:p.numJ,i+1,i)=dGrf_toe_c4_q2(q_cur.',dq.',F_toe(1),p.sampT);
        dgrf_toe_c4(2*p.numJ+1:2*p.numJ+2,i,i)=dGrf_toe_c4_F(q_cur.',dq.')*0.5;
        dgrf_toe_c4(2*p.numJ+1:2*p.numJ+2,i+1,i)=dGrf_toe_c4_F(q_cur.',dq.')*0.5;
        
        dgrf_heel_c4(1:p.numJ,i,i)=dGrf_heel_c4_q1(q_cur.',dq.',F_heel(1),p.sampT);
        dgrf_heel_c4(1:p.numJ,i+1,i)=dGrf_heel_c4_q2(q_cur.',dq.',F_heel(1),p.sampT);
        dgrf_heel_c4(2*p.numJ+3:2*p.numJ+4,i,i)=dGrf_heel_c4_F(q_cur.',dq.')*0.5;
        dgrf_heel_c4(2*p.numJ+3:2*p.numJ+4,i+1,i)=dGrf_heel_c4_F(q_cur.',dq.')*0.5;
        
%         dgrf_toe_c5(1:p.numJ,i,i)=dGrf_toe_c5_q1(q_cur.',dq.',s_toe,p.sampT);
%         dgrf_toe_c5(1:p.numJ,i+1,i)=dGrf_toe_c5_q2(q_cur.',dq.',s_toe,p.sampT);
%         dgrf_toe_c5(2*p.numJ+5,i,i)=dGrf_toe_c5_s(q_cur.',dq.')*0.5;
%         dgrf_toe_c5(2*p.numJ+5,i+1,i)=dGrf_toe_c5_s(q_cur.',dq.')*0.5;
%         
%         dgrf_heel_c5(1:p.numJ,i,i)=dGrf_heel_c5_q1(q_cur.',dq.',s_heel,p.sampT);
%         dgrf_heel_c5(1:p.numJ,i+1,i)=dGrf_heel_c5_q2(q_cur.',dq.',s_heel,p.sampT);
%         dgrf_heel_c5(2*p.numJ+6,i,i)=dGrf_heel_c5_s(q_cur.',dq.')*0.5;
%         dgrf_heel_c5(2*p.numJ+6,i+1,i)=dGrf_heel_c5_s(q_cur.',dq.')*0.5;
       
        
    end
    
                       
    
    
end
% since in the previous for loop we only iterate for size(x,2)-1 times, 
% yet condition 2 and 3 can be evaluated for every time step, we will
% finish it here
i=i+1;
s_toe1 = x(p.numJ*2+5,i);
s_heel1 = x(p.numJ*2+6,i);


grf_toe_c3(i,1)=Grf_toe_c3(q2.',s_toe1,p.toe_th);
grf_heel_c3(i,1)=Grf_heel_c3(q2.',s_heel1,p.toe_th);

dgrf_toe_c3(1:p.numJ,i,i)=dGrf_toe_c3_q(q2.',s_toe1,p.toe_th);
dgrf_heel_c3(1:p.numJ,i,i)=dGrf_heel_c3_q(q2.',s_toe1,p.toe_th);
dgrf_toe_c3(p.numJ*2+5,i,i)=dGrf_toe_c3_s(q2.',p.toe_th);
dgrf_heel_c3(p.numJ*2+6,i,i)=dGrf_heel_c3_s(q2.',p.toe_th);



grf_toe_c6(i,1)=Grf_toe_c6(q2.',s_toe1,p.toe_th);
grf_heel_c6(i,1)=Grf_heel_c6(q2.',s_heel1,p.toe_th);

dgrf_toe_c6(1:p.numJ,i,i)=dGrf_toe_c6_q(q2.',s_toe1,p.toe_th);
dgrf_toe_c6(p.numJ*2+5,i,i)=dGrf_toe_c6_s(q2.',p.toe_th);
                
dgrf_heel_c6(1:p.numJ,i,i)=dGrf_heel_c6_q(q2.',s_heel1,p.toe_th);
dgrf_heel_c6(p.numJ*2+6,i,i)=dGrf_heel_c6_s(q2.',p.toe_th);


c = [grf_toe_c3;
     grf_heel_c3;
     grf_toe_c4;
     grf_heel_c4];
gradc=[reshape(dgrf_toe_c3,[size(x,1)*size(x,2),size(x,2)]),...
       reshape(dgrf_heel_c3,[size(x,1)*size(x,2),size(x,2)]),...
       reshape(dgrf_toe_c4, [size(x,1)*size(x,2),size(x,2)-1]),...
       reshape(dgrf_heel_c4,[size(x,1)*size(x,2),size(x,2)-1])];
   
% ceq =[grf_toe_c5;
%      grf_heel_c5];
% gradceq=[reshape(dgrf_toe_c5,[size(x,1)*size(x,2),size(x,2)-1]),...
%         reshape(dgrf_heel_c5,[size(x,1)*size(x,2),size(x,2)-1])];
ceq = [grf_toe_c1;
       grf_heel_c1;
       grf_toe_c6;
       grf_heel_c6];
gradceq=[reshape(dgrf_toe_c1,[size(x,1)*size(x,2),size(x,2)-1]),...
         reshape(dgrf_heel_c1,[size(x,1)*size(x,2),size(x,2)-1]),...
         reshape(dgrf_toe_c6, [size(x,1)*size(x,2),size(x,2)]),...
         reshape(dgrf_heel_c6,[size(x,1)*size(x,2),size(x,2)])];
%          reshape(dgrf_toe_c5,[size(x,1)*size(x,2),size(x,2)-1]),...
%          reshape(dgrf_heel_c5,[size(x,1)*size(x,2),size(x,2)-1])];
% gradceq=[reshape(dgrf_toe_c6, [size(x,1)*size(x,2),size(x,2)]),...
%          reshape(dgrf_heel_c6,[size(x,1)*size(x,2),size(x,2)])];

end