function Grf_toe_c2 = Grf_toe_c2(in1,in2,Fx,H,k,cmax,dmax,us,sampT)
%GRF_TOE_C2
%    GRF_TOE_C2 = GRF_TOE_C2(IN1,IN2,FX,H,K,CMAX,DMAX,US,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    18-Feb-2021 20:38:12

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
t46 = atan(4.618051608502898e-1);
t47 = 1.1978829188531e+18;
t15 = cos(t14);
t17 = t2.*t3;
t18 = t2.*t9;
t19 = t3.*t8;
t20 = q_t3+q_t4+t14;
t21 = t8.*t9;
t28 = t8.*4.5018e-1;
t22 = cos(t20);
t23 = q_t5+t20;
t24 = -t21;
t26 = t18+t19;
t31 = t15.*4.4835e-1;
t32 = t18.*4.4835e-1;
t33 = t19.*4.4835e-1;
t25 = cos(t23);
t27 = t17+t24;
t29 = t4.*t26;
t30 = t10.*t26;
t37 = t22.*4.4835e-1;
t49 = q_t6+t23+t46;
t34 = t4.*t27;
t35 = t10.*t27;
t36 = -t30;
t38 = t25.*4.5018e-1;
t50 = cos(t49);
t39 = t29+t35;
t40 = t34+t36;
t43 = -t5.*(t30-t34);
t44 = -t11.*(t30-t34);
t51 = t11.*(t30-t34).*(-4.4835e-1);
t61 = (t47.*t50)./7.0368744177664e+18;
t41 = t5.*t39;
t42 = t11.*t39;
t62 = t37+t38+t61;
t45 = -t42;
t48 = t41.*4.4835e-1;
t52 = t41+t44;
t56 = -t6.*(t42+t5.*(t30-t34));
t57 = -t12.*(t42+t5.*(t30-t34));
t60 = t12.*(t42+t5.*(t30-t34)).*(-4.5018e-1);
t53 = t43+t45;
t54 = t6.*t52;
t55 = t12.*t52;
t58 = -t55;
t59 = t54.*4.5018e-1;
t63 = t54+t57;
t67 = t7.*(t55+t6.*(t42+t5.*(t30-t34))).*(-7.137e-2);
t69 = t13.*(t55+t6.*(t42+t5.*(t30-t34))).*(-1.54545696e-1);
t64 = t56+t58;
t65 = t13.*t63.*7.137e-2;
t68 = t7.*t63.*1.54545696e-1;
t66 = -t65;
t70 = t16+t28+t32+t33+t48+t51+t59+t60+t66+t67+t68+t69;
Grf_toe_c2 = Fx.^2-us.^2.*(k.*t70.^2+(cmax.*t70.*(qd_t2.*(t31+t62)+qd_t5.*(t38+t61)+qd_t3.*t62+qd_t4.*t62+qd_t6.*t61+qd_t1.*(t2.*4.5018e-1+t31+t62)))./dmax).^2;
