% check the gradient for discrete Lagrangian

clear;
clc;

modelName='human_8';

%add share functions
addpath dyn/
addpath obj/
addpath gaitCon/
addpath plotRobot/
addpath forward_dyn

addpath (['../',modelName,'/robotGen/'])
addpath (['../',modelName,'/robotGen/grad/'])
% addpath (['../',modelName,'/robotGen/posCons/'])
addpath (['../',modelName,'/robotGen/dyn/'])
% addpath (['../',modelName,'/robotGen/obj/'])
addpath (['../',modelName,'/robotGen/grf/'])
addpath (['../',modelName,'/robotGen/grf/discrete'])

%% simulate parameters
model = load(['../',modelName,'/robotGen/model']).model;



x1 = load('x_test').x;
p = load('p_test.mat').param;
% p.us = 0.8;

x2 = x1+rand(size(x1,1),size(x1,2))*0.0001;
dx = x2-x1;
p.loss_w.fy_diff=0.1;
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


