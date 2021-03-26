
c=parcluster;
c.AdditionalProperties.EmailAddress = 'haolee@mail';
c.AdditionalProperties.MemUsage = '8G';
c.AdditionalProperties.WallTime = '12:00:00';
c.AdditionalProperties
addpath('/u/home/h/haolee/walk_sim/traj_opt_grf')
job=batch(c,'batch_sim1','Pool',50)

