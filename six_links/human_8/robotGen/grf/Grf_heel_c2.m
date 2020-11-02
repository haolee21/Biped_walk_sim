function Grf_heel_c2 = Grf_heel_c2(in1,in2,Fx,H,k,cmax,dmax,us,sampT)
%GRF_HEEL_C2
%    GRF_HEEL_C2 = GRF_HEEL_C2(IN1,IN2,FX,H,K,CMAX,DMAX,US,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    31-Oct-2020 09:07:16

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
t7 = cos(q_t6);
t8 = sin(q_t1);
t9 = sin(q_t2);
t10 = sin(q_t3);
t11 = sin(q_t4);
t12 = sin(q_t5);
t13 = sin(q_t6);
t14 = q_t1+q_t2;
t16 = -H;
t44 = atan(1.943573266309781);
t47 = 7.878221328233238e+18;
t15 = cos(t14);
t17 = t2.*t3;
t18 = t2.*t9;
t19 = t3.*t8;
t20 = q_t3+q_t4+t14;
t21 = t8.*t9;
t40 = t8.*4.60062e-1;
t48 = -t44;
t22 = cos(t20);
t23 = q_t5+t20;
t24 = -t21;
t26 = t18+t19;
t41 = t15.*4.453122e-1;
t42 = t18.*4.453122e-1;
t43 = t19.*4.453122e-1;
t25 = cos(t23);
t27 = t17+t24;
t28 = t4.*t26;
t29 = t10.*t26;
t45 = t22.*4.453122e-1;
t49 = q_t6+t23+t48;
t30 = t4.*t27;
t31 = t10.*t27;
t32 = -t29;
t46 = t25.*4.60062e-1;
t50 = cos(t49);
t33 = t28+t31;
t34 = t30+t32;
t37 = -t5.*(t29-t30);
t38 = -t11.*(t29-t30);
t52 = t11.*(t29-t30).*(-4.453122e-1);
t62 = (t47.*t50)./9.007199254740992e+19;
t35 = t5.*t33;
t36 = t11.*t33;
t63 = -t62;
t39 = -t36;
t51 = t35.*4.453122e-1;
t53 = t35+t38;
t57 = -t6.*(t36+t5.*(t29-t30));
t58 = -t12.*(t36+t5.*(t29-t30));
t61 = t12.*(t36+t5.*(t29-t30)).*(-4.60062e-1);
t73 = t45+t46+t63;
t54 = t37+t39;
t55 = t6.*t53;
t56 = t12.*t53;
t59 = -t56;
t60 = t55.*4.60062e-1;
t64 = t55+t58;
t68 = t7.*(t56+t6.*(t36+t5.*(t29-t30))).*(-7.7775e-2);
t71 = t13.*(t56+t6.*(t36+t5.*(t29-t30))).*(-4.001650020000001e-2);
t72 = t13.*(t56+t6.*(t36+t5.*(t29-t30))).*4.001650020000001e-2;
t65 = t57+t59;
t66 = t13.*t64.*7.7775e-2;
t69 = t7.*t64.*4.001650020000001e-2;
t67 = -t66;
t70 = -t69;
t74 = t16+t40+t42+t43+t51+t52+t60+t61+t67+t68+t70+t72;
Grf_heel_c2 = -us.^2.*(k.*t74.^2+(cmax.*t74.*(qd_t5.*(t46+t63)+qd_t2.*(t41+t73)+qd_t3.*t73+qd_t4.*t73+qd_t1.*(t2.*4.60062e-1+t41+t73)-(qd_t6.*t47.*t50)./9.007199254740992e+19))./dmax).^2+Fx.^2;
