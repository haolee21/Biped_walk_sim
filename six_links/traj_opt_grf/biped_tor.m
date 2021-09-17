function tau = biped_tor(x,p)
u = x(p.numJ+1:2*p.numJ,:);
q = x(1:p.numJ,:);


tor_ank1 = (q(1,:)>pi/2).*(pi/2-q(1,:))*p.ank_stiff;
tor_ank2 = (q(6,:)<-pi/2).*(-pi/2-q(6,:)).*p.ank_stiff;

tor_kne1 = -q(2,:)*p.knee_stiff1;
tor_kne2 = -q(5,:)*p.knee_stiff2;

tor_hip1 = (q(3,:)>0).*-q(3,:)*p.hip_stiff;
tor_hip2 = (q(4,:)<pi).*(-pi-q(4,:))*p.hip_stiff;

tau = u+[tor_ank1;tor_kne1;tor_hip1;tor_hip2;tor_kne2;tor_ank2];


end