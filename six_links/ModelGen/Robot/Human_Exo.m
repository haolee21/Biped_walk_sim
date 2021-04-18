classdef Human_Exo
    % prismatic joints are not taking into consider
    properties
        modelName
        DH_table
        val
        numJ=6
        joint_type
        
        links
        
        
        % symbolic variables
        q_t
        q_th
        qd_t
        qd_th
        sampT
        
        % different matrix for human when knee is backward
        rotM
        rotM_hb
        w
        w_hb
    end
    methods
        function obj = Human_Exo(modelName,dh,j_type,m_h,m_exo,h_I,exo_I,link_l,lc_h,lc_exo)
            % inputs: dh_table, joint_types (1 for revolute joint, 0 for
            % prismatic joint)
            % the current method only works for 6 joint robot (parallel
            % mech at the knee)
            obj.modelName = modelName;
            obj.DH_table=dh;
      
            if(size(j_type,1)~=obj.numJ)
                error('number of joints is different from dh table');
            else
                obj.joint_type = j_type;
            end
            
            
            % create Translational matrix of each joint
            
            %obj.links = cell(1,obj.numJ);
            %obj.rotM = cell(1,obj.numJ);
            %obj.rotM_hb = cell(1,obj.numJ);
            curRot = eye(4);
            curRot_hb=eye(4);
            cur_w = sym(zeros(3,1));
            cur_w_hb=sym(zeros(3,1));
            for i=1:size(m,1)
                a = obj.DH_table(i,2);
                d = obj.DH_table(i,3);
                al = obj.DH_table(i,1);
                obj.links{1,i} = HR_Link(m_h(1,i),m_exo(1,i),h_I(1,i),exo_I(1,i),link_l(1,i),lc_h(1,i),lc_exo(1,i));
                curRot = curRot*T_matrix(a,al,d,obj.q_t(1,i));
                curRot_hb =curRot_hb*T_matrix(a,al,d,obh.q_th(1,i));
                cur_w = curRot(1:3,1:3)*[0;0;obj.q_t(1,i)]+cur_w;
                cur_w_hb = curRot_hb(1:3,1:3)*[0;0;obj.q_th(1,i)]+cur_w_hb;
                
                obj.rotM{1,i} = curRot;
                obj.rotM_hb{1,i}=curRot_hb;
                obj.w{1,i}=cur_w;
                obj.w_hb = cur_w_hb;
            end
            
            
            % create symbolic variables for later usage
            obj.q_t =sym('q_t',[1,obj.numJ]);
            obj.sampT = sym('sampT');
            obj.qd_t = sym('qd_t',[1,obj.numJ]);
            assume(obj.sampT,'real');
            assume(obj.q_t,'real');
            assume(obj.qd_t,'real');
            obj.q_th = [obj.q_t(1)+obj.q_t(2),-obj.q_t(2),obj.q_t(2)+obj.q_t(3),obj.q_t(4)+obj.q_t(5),-obj.q_t(5),obj.q_t(5)+obj.q_t(6)]; % this is used when we need to generate human model for backward knee
            obj.qd_th = [obj.qd_t(1)+obj.qd_t(2),-obj.qd_t(2),obj.qd_t(2)+obj.qd_t(3),obj.qd_t(4)+obj.qd_t(5),-obj.qd_t(5),obj.qd_t(5)+obj.qd_t(6)];
    
            %
            
                
        end
        
        function j_vel =calJointVel(obj)
            
            
            
            
        end


    end
end


function T = T_matrix(a,alpha,d,theta)

T = [cos(theta)               -sin(theta)                 0                  a;
     sin(theta)*cos(alpha)    cos(theta)*cos(alpha)       -sin(alpha)        -d*sin(alpha);
     sin(theta)*sin(alpha)    cos(theta)*sin(alpha)       cos(alpha)         d*cos(alpha);
     0                        0                           0                  1];

end