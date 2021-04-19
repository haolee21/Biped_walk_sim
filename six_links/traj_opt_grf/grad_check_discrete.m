% check the gradient for discrete Lagrangian

clear;
clc;

modelName='human_11';
modelType = 'human_exo_load1';
kneeDir='forward';

%add share functions
addpath dyn/
addpath obj/
addpath gaitCon/
addpath plotRobot/
addpath forward_dyn

addpath (['../',modelName,'/',modelType,'/robotGen/dyn/'])
addpath (['../',modelName,'/',modelType,'/robotGen/dyn/',kneeDir])
addpath (['../',modelName,'/',modelType,'/robotGen/grf'])
addpath (['../',modelName,'/',modelType,'/robotGen/pos'])

%% simulate parameters
model = load(['../',modelName,'/',modelType,'/robotGen/model.mat']);



x1 = load('xopt').xopt;
p = load('param_test.mat').param;

% p.knee_stiff =0; % I use max moment (MVC/angle), since the stiffness of the paper is too high
% p.ank_stiff=0;
% p.us = 0.8;

x2 = x1+rand(size(x1,1),size(x1,2))*0.0001;

%% check gradient on q
% x2(p.varDim.q1*p.varDim.q2+1:end)=x1(p.varDim.q1*p.varDim.q2+1:end);
% x2(1:p.varDim.q1*p.varDim.q2)=x1(1:p.varDim.q1*p.varDim.q2);

% x2(1:p.varDim.q1*p.varDim.q2) = x1(1:p.varDim.q1*p.varDim.q2);
% x2(p.varDim.q1*p.varDim.q2+p.varDim.u1*p.varDim.u2+1:end) = x1(p.varDim.q1*p.varDim.q2+p.varDim.u1*p.varDim.u2+1:end);

% test linearity of joint 6
% q1 =reshape(x1(1:p.varDim.q1*p.varDim.q2),[p.varDim.q1,p.varDim.q2]);
% q2 = reshape(x2(1:p.varDim.q1*p.varDim.q2),[p.varDim.q1,p.varDim.q2]);
% 
% q2(1:5,:) = q1(1:5,:);
% q2 = reshape(q2,[p.varDim.q1*p.varDim.q2,1]);
% x2(1:p.varDim.q1*p.varDim.q2) = q2;


dx = x2-x1;
% p.loss_w.fy_diff=0.1;
% x_s1 = x1(1:p.x1Len.x*p.x1Len.y);
% x_s1 = reshape(x_s1,[p.x1Len.x,p.x1Len.y]);
% fy_toe1 = x1(p.x1Len.x*p.x1Len.y+1:end);
% x0 = p.mapA*x_s1(:,1)-p.mapB;
% x_s1 = [x_s1,x0];
% 
% x_s2 = x2(1:p.x1Len.x*p.x1Len.y);
% x_s2 = reshape(x_s2,[p.x1Len.x,p.x1Len.y]);
% fy_toe2 = x2(p.x1Len.x*p.x1Len.y+1:end);
% x0 = p.mapA*x_s2(:,1)-p.mapB;
% x_s2 = [x_s2,x0];
% 
% 
% [ceq1,gradceq1] = dynConst_discrete(x_s1,fy_toe1,p);
% [ceq2,gradceq2] = dynConst_discrete(x_s2,fy_toe2,p);
% err = ceq2-ceq1-(gradceq1.'+gradceq2.')*0.5*dx;
% disp(['dynConst err= ',num2str(norm(err)/norm(ceq2-ceq1))]);




[c1,ceq1,gradc1,gradceq1] = discrete_nonlcon(x1,p);
[c2,ceq2,gradc2,gradceq2] = discrete_nonlcon(x2,p);

err_c = c2-c1-0.5*(gradc1.'+gradc2.')*dx;
err_ceq = ceq2-ceq1-0.5*(gradceq1.'+gradceq2.')*dx;

disp(['nonlinear c err= ',num2str(norm(err_c)/norm(c2-c1))]);
disp(['nonlinear ceq_err= ',num2str(norm(err_ceq)/norm(ceq1-ceq2))]); 
err_c_vec = err_c./(c2-c1);
err_ceq_vec = err_ceq./(ceq2-ceq1);

[obj1,dObj1]=obj_nonlinear(x1,p);
[obj2,dObj2]=obj_nonlinear(x2,p);
err = obj2-obj1-0.5*(dObj1.'+dObj2.')*dx;
disp(['nonlinear obj= ',num2str(norm(err)/norm(obj2-obj1))]);


%% gradient check for individual nonlinear constraints
x_mat1 = state2mat(x1,p);
x_mat2 = state2mat(x2,p);

[ceq1,gradceq1]=dynConst_discrete(x_mat1,p);
[ceq2,gradceq2]=dynConst_discrete(x_mat2,p);
err_ceq = ceq2-ceq1-0.5*(gradceq1.'+gradceq2.')*dx;
disp(['dynConst ceq_err= ',num2str(norm(err_ceq)/norm(ceq1-ceq2))]); 


[c1,~,gradc1,~]=grf_cons_d(x_mat1,p);
[c2,~,gradc2,~]=grf_cons_d(x_mat2,p);
err_c = c2-c1-0.5*(gradc1.'+gradc2.')*dx;
disp(['grf con c err= ',num2str(norm(err_c)/norm(c2-c1))]);


[ceq1,gradceq1]=ankle_push_cons(x_mat1,p);
[ceq2,gradceq2]=ankle_push_cons(x_mat2,p);
err_ceq = ceq2-ceq1-0.5*(gradceq1.'+gradceq2.')*dx;
disp(['ankle_push con ceq_err= ',num2str(norm(err_ceq)/norm(ceq1-ceq2))]); 

[c1,gradc1]=yposCon(x_mat1,p);
[c2,gradc2]=yposCon(x_mat2,p);
err_c = c2-c1-0.5*(gradc1.'+gradc2.')*dx;
disp(['yposCon c = ',num2str(norm(err_c)/norm(c2-c1))]);

[c1,gradc1]=yposCon2(x_mat1,p);
[c2,gradc2]=yposCon2(x_mat2,p);
err_c = c2-c1-0.5*(gradc1.'+gradc2.')*dx;
disp(['yposCon2 c = ',num2str(norm(err_c)/norm(c2-c1))]);

[ceq1,gradceq1]=hipVelCon(x_mat1,p);
[ceq2,gradceq2]=hipVelCon(x_mat2,p);
err_ceq = ceq2-ceq1-0.5*(gradceq1.'+gradceq2.')*dx;
disp(['hipVelCon ceq_err= ',num2str(norm(err_ceq)/norm(ceq1-ceq2))]); 

