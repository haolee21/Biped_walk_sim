%% this script will run all the simulation



jointW = [30,30,30,30,30,30;
          30,30, 5, 5,30,30;
          30, 5,30,30, 5,30;
           5,30,30,30,30, 5;
          30, 5, 5, 5, 5,30;
           5,30, 5, 5,30, 5;
           5, 5,30,30, 5, 5];
hipRatio = [2.3,2.4,2.5,2.6,2.7,2.8];
toeRatio = [3.1,3.2,3.3,3.4,3.5,3.6];
hipH = [0.85,0.86,0.87,0.88,0.89,0.9,0.91,0.92,0.93,0.94];

ank_push_ratio = [0.1,0.11,0.12,0.13,0.14,0.15,0.16,0.17];


task_i=1;
tasks =cell(1,1);

for jw=1:size(jointW,1)
    for h_ratio =1:length(hipRatio)
        
        for ank_ratio =1:length(ank_push_ratio)
            for hip_h_idx =1:length(hipH)
                
                tasks{1,task_i} = @()forward_knee_opt(jointW(jw,1),toeRatio(h_ratio),hipRatio(h_ratio),hipH(hip_h_idx),0.5,ank_push_ratio(ank_ratio));
                task_i = task_i+1;
            end
            
        end
        
    end
end

parfor i=1:task_i-1
    tasks{1,i}();
end

















