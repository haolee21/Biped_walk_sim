function [c,gradc] = heelYposCon(x,fy,p)


% start_i = p.phase1_idx+8;
% start_i=1;

% end_i = size(x,2);
c_heel = zeros(1,size(x,2));
% c = gpuArray(c);

gradc_heel = zeros(size(x,1),size(x,2),size(c_heel,2));
% gradc = gpuArray(gradc);

%% we made some modification, originally we only need ypos>0, in order to create ground clearance, we need in the middle > param.toe_th
% 30% gait -> 70% gait, higher than 2*p.toe_th since it is a 0.5* tanh+0.5 function,
% tanh(0) = 0.5


for i=1:size(x,2)
    curX = x(:,i);
    
    c_heel(i)=-p.model.h_heel-heelPos_y(curX.');
    
    gradc_heel(1:p.numJ,i,i)=-1*dHeelPos_y(curX.').';
end
c = c_heel.';
gradc = reshape(gradc_heel,[size(x,1)*size(x,2),size(c_heel,2)]); %c was tranpose in the previous line

gradc = [gradc;zeros(length(fy),size(gradc,2))];

end