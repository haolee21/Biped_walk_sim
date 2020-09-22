function [c,gradc] = yposCon_nogrf(x,p)

% start_i = floor(size(x,2)*0.3);
start_i=1;
% end_i = floor(size(x,2)*0.65);
end_i = size(x,2);
c_toe = zeros(1,end_i-start_i+1);
c_heel = zeros(1,end_i-start_i+1);
% c = gpuArray(c);
gradc_toe = zeros(size(x,1),size(x,2),size(c_toe,2));
gradc_heel = zeros(size(x,1),size(x,2),size(c_heel,2));
% gradc = gpuArray(gradc);

%% we made some modification, originally we only need ypos>0, in order to create ground clearance, we need in the middle > param.toe_th
% 30% gait -> 70% gait, higher than 2*p.toe_th since it is a 0.5* tanh+0.5 function,
% tanh(0) = 0.5


for i=1:end_i-start_i+1
    curX = x(:,start_i+i-1);
    c_toe(i)=p.gndclear-toePos_y(curX.');
    c_heel(i)=p.gndclear-heelPos_y(curX.');
    gradc_toe(1:p.numJ,start_i+i-1,i) = -1*dToePos_y(curX.').';
    gradc_heel(1:p.numJ,start_i+i-1,i)=-1*dHeelPos_y(curX.').';
end
c = [c_toe.';c_heel.'];
gradc = [reshape(gradc_toe,[size(x,1)*size(x,2),size(c_toe,2)]),...
         reshape(gradc_heel,[size(x,1)*size(x,2),size(c_heel,2)])]; %c was tranpose in the previous line



end