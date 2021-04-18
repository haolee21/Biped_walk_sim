function Fy_heel = Fy_heel(in1,in2,H,k,cmax,dmax,sampT)
%FY_HEEL
%    FY_HEEL = FY_HEEL(IN1,IN2,H,K,CMAX,DMAX,SAMPT)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    16-Apr-2021 01:23:52

dq1 = in2(:,1);
dq2 = in2(:,2);
dq3 = in2(:,3);
dq4 = in2(:,4);
dq5 = in2(:,5);
dq6 = in2(:,6);
q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
q6 = in1(:,6);
t2 = cos(q1);
t3 = cos(q2);
t4 = cos(q3);
t5 = cos(q4);
t6 = cos(q5);
t7 = cos(q6);
t8 = sin(q1);
t9 = sin(q2);
t10 = sin(q3);
t11 = sin(q4);
t12 = sin(q5);
t13 = sin(q6);
t14 = q1+q2;
t16 = -H;
t46 = atan(5.774051282051283e-1);
t47 = 1.546478599905513e+18;
t15 = cos(t14);
t17 = t2.*t3;
t18 = t2.*t9;
t19 = t3.*t8;
t20 = q3+q4+t14;
t21 = t8.*t9;
t28 = t8.*4.4835e-1;
t22 = cos(t20);
t23 = q5+t20;
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
t50 = q6+t23+t46;
t34 = t4.*t27;
t35 = t10.*t27;
t36 = -t30;
t38 = t25.*4.4835e-1;
t51 = sin(t50);
t39 = t29+t35;
t40 = t34+t36;
t43 = -t5.*(t30-t34);
t44 = -t11.*(t30-t34);
t49 = t11.*(t30-t34).*(-4.4835e-1);
t61 = t47.*t51.*5.329070518200751e-20;
t41 = t5.*t39;
t42 = t11.*t39;
t62 = -t61;
t45 = -t42;
t48 = t41.*4.4835e-1;
t52 = t41+t44;
t56 = -t12.*(t42+t5.*(t30-t34));
t57 = -t6.*(t42+t5.*(t30-t34));
t58 = t6.*(t42+t5.*(t30-t34));
t60 = t12.*(t42+t5.*(t30-t34)).*(-4.4835e-1);
t63 = t37+t38+t62;
t53 = t43+t45;
t54 = t12.*t52;
t55 = t6.*t52;
t59 = t55.*4.4835e-1;
t64 = t55+t56;
t65 = t54+t58;
t66 = t13.*t64.*7.137e-2;
t68 = t7.*t65.*7.137e-2;
t70 = t7.*t64.*4.120940400000001e-2;
t72 = t13.*t65.*4.120940400000001e-2;
t67 = -t66;
t69 = -t68;
t71 = -t70;
t73 = t16+t28+t32+t33+t48+t49+t59+t60+t67+t69+t71+t72;
Fy_heel = k.*t73.^2+(cmax.*t73.*(dq2.*(t31+t63)+dq5.*(t38+t62)+dq3.*t63+dq4.*t63+dq1.*(t2.*4.4835e-1+t31+t63)-dq6.*t47.*t51.*5.329070518200751e-20))./dmax;
