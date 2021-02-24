function tau = biped_tor(x,p)
u = x(p.numJ+1:2*p.numJ,:);
q = x(1:p.numJ,:);


tor_ank1 = (q(1,:)>pi/2).*(pi/2-q(1,:))*p.ank_stiff;
tor_ank2 = (q(6,:)<-pi/2).*(-pi/2-q(6,:)).*p.ank_stiff;

tor_kne1 = -q(2,:)*p.knee_stiff1;
tor_kne2 = -q(5,:)*p.knee_stiff2;

tau = u+[tor_ank1;tor_kne1;zeros(2,size(x,2));tor_kne2;tor_ank2];


end