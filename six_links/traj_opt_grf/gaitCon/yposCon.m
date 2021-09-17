function [c,gradc] = yposCon(x,p)

% start_i = floor(size(x,2)*0.2);
start_i = p.phase1_idx+5;
% start_i=1;
end_i = floor(size(x,2)*0.6);
% end_i = size(x,2);
c_toe = zeros(end_i-start_i+1,1);
c_heel = zeros(end_i-start_i+1,1);
% c = gpuArray(c);
gradc_toe = zeros(p.numJ,size(x,2),size(c_toe,2));
gradc_heel = zeros(p.numJ,size(x,2),size(c_heel,2));
% gradc = gpuArray(gradc);

%% we made some modification, originally we only need ypos>0, in order to create ground clearance, we need in the middle > param.toe_th
% 30% gait -> 70% gait, higher than 2*p.toe_th since it is a 0.5* tanh+0.5 function,
% tanh(0) = 0.5


for i=1:end_i-start_i+1
    curX = x(1:p.numJ,start_i+i-1);
    c_toe(i)=p.gndclear-ToePos_y(curX.');
    c_heel(i)=p.gndclear-HeelPos_y(curX.');
    gradc_toe(1:p.numJ,start_i+i-1,i) = -1*dToePos_y(curX.').';
    gradc_heel(1:p.numJ,start_i+i-1,i)=-1*dHeelPos_y(curX.').';
end
c = [c_toe;c_heel];
gradc_q = cat(3,gradc_toe,gradc_heel);
gradc_q = gradc_q(:,2:end-1,:);
gradc_q = reshape(gradc_q,[p.numJ*size(gradc_q,2),size(gradc_q,3)]);
gradc = zeros(p.varDim.q1*p.varDim.q2+p.varDim.u1*p.varDim.u2+p.varDim.fext1_1*p.varDim.fext1_2+p.varDim.fext2_1*p.varDim.fext2_2,size(c,1));

gradc(1:size(gradc_q,1),:) = gradc_q;

gradc = p.mat_s*gradc;

end