classdef HR_Link
    properties
        human_mass
        exo_mass
        human_I %the inertia is wrt the center of mass
        exo_I
        l
        lc_human
        lc_exo
    end
    methods
        function obj = HR_Link(h_m,exo_m,h_I,exo_I,l,lc_h,lc_exo)
            obj.human_mass = h_m;
            obj.exo_mass = exo_m;
            obj.human_I = h_I;
            obj.exo_I = exo_I;
            obj.l=l;
            obj.lc_human=lc_h;
            obj.lc_exo=lc_exo;
        end
    end
end