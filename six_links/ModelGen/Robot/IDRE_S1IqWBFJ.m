
c=parcluster;
c.AdditionalProperties.EmailAddress = 'haolee@mail';
c.AdditionalProperties.MemUsage = '4G';
c.AdditionalProperties.WallTime = '23:00:00';
c.AdditionalProperties
addpath('/u/home/h/haolee/ModelGen/Robot')
job=batch(c,'Human_Exo_main','Pool',50)

