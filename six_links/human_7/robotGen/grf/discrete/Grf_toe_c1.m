function Grf_toe_c1 = Grf_toe_c1(in1,in2,Fy,s,H,k,cmax,dmax)
%GRF_TOE_C1
%    GRF_TOE_C1 = GRF_TOE_C1(IN1,IN2,FY,S,H,K,CMAX,DMAX)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    22-Sep-2020 16:01:41

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
t15 = cos(t14);
t17 = t2.*t3;
t18 = t2.*t9;
t19 = t3.*t8;
t20 = q_t3+q_t4+t14;
t21 = t8.*t9;
t40 = t8.*4.60062e-1;
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
t44 = t22.*4.453122e-1;
t45 = q_t6+t23+4.781417504689244e-1;
t30 = t4.*t27;
t31 = t10.*t27;
t32 = -t29;
t46 = t25.*4.60062e-1;
t47 = cos(t45);
t33 = t28+t31;
t34 = t30+t32;
t37 = -t5.*(t29-t30);
t38 = -t11.*(t29-t30);
t49 = t11.*(t29-t30).*(-4.453122e-1);
t57 = t47.*1.690282735215953e-1;
t35 = t5.*t33;
t36 = t11.*t33;
t62 = t44+t46+t57;
t39 = -t36;
t48 = t35.*4.453122e-1;
t50 = t35+t38;
t54 = -t6.*(t36+t5.*(t29-t30));
t55 = -t12.*(t36+t5.*(t29-t30));
t59 = t12.*(t36+t5.*(t29-t30)).*(-4.60062e-1);
t51 = t37+t39;
t52 = t6.*t50;
t53 = t12.*t50;
t56 = -t53;
t58 = t52.*4.60062e-1;
t60 = t52+t55;
t65 = t7.*(t53+t6.*(t36+t5.*(t29-t30))).*(-7.7775e-2);
t67 = t13.*(t53+t6.*(t36+t5.*(t29-t30))).*(-1.500720048e-1);
t61 = t54+t56;
t63 = t13.*t60.*7.7775e-2;
t66 = t7.*t60.*1.500720048e-1;
t64 = -t63;
t68 = t16+t40+t42+t43+t48+t49+t58+t59+t64+t65+t66+t67;
Grf_toe_c1 = Fy-s.*(k.*t68.^2+(cmax.*t68.*(qd_t2.*(t41+t62)+qd_t5.*(t46+t57)+qd_t6.*t57+qd_t3.*t62+qd_t4.*t62+qd_t1.*(t2.*4.60062e-1+t41+t62)))./dmax);
