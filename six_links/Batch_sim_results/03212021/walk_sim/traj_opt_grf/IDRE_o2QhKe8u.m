
c=parcluster;
c.AdditionalProperties.EmailAddress = 'haolee@mail';
c.AdditionalProperties.MemUsage = '12G';
c.AdditionalProperties.WallTime = '20:00:00';
c.AdditionalProperties
addpath('/u/home/h/haolee/walk_sim/traj_opt_grf')
job=batch(c,'rerun_sim','Pool',30)

