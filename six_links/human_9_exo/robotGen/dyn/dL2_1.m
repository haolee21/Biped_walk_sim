function out1 = dL2_1(in1,in2,sampT)
%DL2_1
%    OUT1 = DL2_1(IN1,IN2,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    22-Jan-2021 22:38:02

q_t1 = in1(:,1);
q_t2 = in1(:,2);
q_t3 = in1(:,3);
q_t4 = in1(:,4);
q_t5 = in1(:,5);
q_t6 = in1(:,6);
qd_t1 = in2(:,1);
qd_t2 = in2(:,2);
qd_t3 = in2(:,3);
qd_t4 = in2(:,4);
qd_t5 = in2(:,5);
qd_t6 = in2(:,6);
t2 = cos(q_t1);
t3 = cos(q_t2);
t4 = cos(q_t3);
t5 = cos(q_t4);
t6 = cos(q_t5);
t7 = sin(q_t1);
t8 = sin(q_t2);
t9 = sin(q_t3);
t10 = sin(q_t4);
t11 = sin(q_t5);
t12 = q_t1+q_t2;
t13 = q_t2+q_t3;
t14 = cos(t12);
t15 = cos(t13);
t16 = sin(t12);
t17 = t2.*t3;
t18 = t2.*t8;
t19 = t3.*t7;
t20 = q_t3+q_t4+t12;
t21 = t7.*t8;
t33 = t2.*4.5018e-1;
t34 = t7.*4.5018e-1;
t22 = cos(t20);
t23 = q_t5+t20;
t24 = sin(t20);
t27 = -t21;
t31 = t18+t19;
t37 = qd_t1.*t33;
t38 = qd_t1.*t34;
t39 = t14.*4.4835e-1;
t40 = t16.*4.4835e-1;
t25 = q_t6+t23;
t26 = sin(t23);
t28 = cos(t23);
t32 = t17+t27;
t35 = t4.*t31;
t36 = t9.*t31;
t44 = qd_t1.*t39;
t45 = qd_t2.*t39;
t46 = qd_t1.*t40;
t47 = qd_t2.*t40;
t48 = t22.*4.4835e-1;
t49 = t24.*4.4835e-1;
t29 = cos(t25);
t30 = sin(t25);
t41 = t4.*t32;
t42 = t9.*t32;
t43 = -t36;
t50 = qd_t1.*t48;
t51 = qd_t2.*t48;
t52 = qd_t3.*t48;
t53 = qd_t4.*t48;
t54 = qd_t1.*t49;
t55 = qd_t2.*t49;
t56 = qd_t3.*t49;
t57 = qd_t4.*t49;
t58 = t35+t42;
t59 = t41+t43;
t62 = -t5.*(t36-t41);
t63 = -t10.*(t36-t41);
t60 = t5.*t58;
t61 = t10.*t58;
t64 = -t61;
t65 = t60+t63;
t66 = t62+t64;
out1 = t2.*(-1.827202538698718e+2)-t17.*1.72019140563375e+2+t21.*1.72019140563375e+2+t36.*1.072403809535427e+2-t41.*1.072403809535427e+2+t61.*1.4909183186625e+1-sin(q_t6).*(t11.*(t61+t5.*(t36-t41))-t6.*t65).*1.6671994923285e-1+t6.*(t61+t5.*(t36-t41)).*4.97104263012825+t11.*t65.*4.97104263012825+t5.*(t36-t41).*1.4909183186625e+1+(qd_t1.*4.174528114055999e+1+qd_t2.*2.719062807063214e+1+qd_t3.*1.375504232042036e+1+qd_t4.*1.921845015486628e-1+qd_t5.*5.586664473909651e-2+(t2.*5.068576200624125e+19+t14.*5.047972232328905e+19+t22.*2.185771976598416e+19).*(qd_t1.*t2.*5.068576200624125e+19+qd_t1.*t14.*5.047972232328905e+19+qd_t2.*t14.*5.047972232328905e+19+qd_t1.*t22.*2.185771976598416e+19+qd_t2.*t22.*2.185771976598416e+19+qd_t3.*t22.*2.185771976598416e+19+qd_t4.*t22.*2.185771976598416e+19).*5.127595883936577e-40+(t7.*5.068576200624125e+19+t16.*5.047972232328905e+19+t24.*2.185771976598416e+19).*(qd_t1.*t7.*5.068576200624125e+19+qd_t1.*t16.*5.047972232328905e+19+qd_t2.*t16.*5.047972232328905e+19+qd_t1.*t24.*2.185771976598416e+19+qd_t2.*t24.*2.185771976598416e+19+qd_t3.*t24.*2.185771976598416e+19+qd_t4.*t24.*2.185771976598416e+19).*5.127595883936577e-40+qd_t1.*t3.*2.7351296726733e+1+qd_t1.*t4.*1.960498462814307e+1+qd_t2.*t3.*1.36756483633665e+1+qd_t2.*t4.*1.960498462814307e+1+qd_t3.*t4.*9.802492314071536+qd_t1.*t15.*1.968500497356406e+1+qd_t2.*t15.*9.842502486782032+qd_t3.*t15.*9.842502486782032+(t28.*4.5018e-1+t29.*3.6063444e-2+t33+t39+t48).*(t37+t44+t45+t50+t51+t52+t53+qd_t1.*t28.*4.5018e-1+qd_t1.*t29.*3.6063444e-2+qd_t2.*t28.*4.5018e-1+qd_t2.*t29.*3.6063444e-2+qd_t3.*t28.*4.5018e-1+qd_t3.*t29.*3.6063444e-2+qd_t4.*t28.*4.5018e-1+qd_t4.*t29.*3.6063444e-2+qd_t5.*t28.*4.5018e-1+qd_t5.*t29.*3.6063444e-2+qd_t6.*t29.*3.6063444e-2).*(3.77e+2./4.0e+2)+(t26.*4.5018e-1+t30.*3.6063444e-2+t34+t40+t49).*(t38+t46+t47+t54+t55+t56+t57+qd_t1.*t26.*4.5018e-1+qd_t2.*t26.*4.5018e-1+qd_t3.*t26.*4.5018e-1+qd_t4.*t26.*4.5018e-1+qd_t1.*t30.*3.6063444e-2+qd_t5.*t26.*4.5018e-1+qd_t2.*t30.*3.6063444e-2+qd_t3.*t30.*3.6063444e-2+qd_t4.*t30.*3.6063444e-2+qd_t5.*t30.*3.6063444e-2+qd_t6.*t30.*3.6063444e-2).*(3.77e+2./4.0e+2)+(t28.*1.9492794e-1+t33+t39+t48).*(t37+t44+t45+t50+t51+t52+t53+qd_t1.*t28.*1.9492794e-1+qd_t2.*t28.*1.9492794e-1+qd_t3.*t28.*1.9492794e-1+qd_t4.*t28.*1.9492794e-1+qd_t5.*t28.*1.9492794e-1).*3.0225+(t26.*1.9492794e-1+t34+t40+t49).*(t38+t46+t47+t54+t55+t56+t57+qd_t1.*t26.*1.9492794e-1+qd_t2.*t26.*1.9492794e-1+qd_t3.*t26.*1.9492794e-1+qd_t4.*t26.*1.9492794e-1+qd_t5.*t26.*1.9492794e-1).*3.0225)./sampT+cos(q_t6).*(t6.*(t61+t5.*(t36-t41))+t11.*t65).*1.6671994923285e-1;
