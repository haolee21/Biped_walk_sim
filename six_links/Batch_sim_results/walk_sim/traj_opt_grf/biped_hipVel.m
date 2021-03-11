function vel = biped_hipVel(x,p,model)

addpath([model,'/robotGen/grad']);
vel = zeros(1,size(x,2)-1);
for i=1:size(x,2)-1
    x1 = x(:,i);
    x2 = x(:,i+1);
    cur_x = (x1+x2)/2;
    dx = (x2-x1)/p.sampT;
    vel(1,i) = hip_vel_x(cur_x.',dx.',p.sampT);
end
rmpath([model,'/robotGen/grad']);
end