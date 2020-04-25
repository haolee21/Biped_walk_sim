function dM_dx5 = dM_dx5(q2,q3,q4,q5)
%DM_DX5
%    DM_DX5 = DM_DX5(Q2,Q3,Q4,Q5)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    13-Apr-2020 01:03:55

t2 = cos(q2);
t3 = cos(q3);
t4 = cos(q4);
t5 = cos(q5);
t6 = sin(q2);
t7 = sin(q3);
t8 = sin(q4);
t9 = sin(q5);
t10 = q3+q4;
t11 = q4+q5;
t12 = cos(t11);
t13 = q2+t10;
t14 = q5+t10;
t15 = sin(t11);
t19 = t9.*8.76015e-1;
t21 = t9.*4.38008e-1;
t26 = t3.*t5.*t8.*8.76015e-1;
t27 = t4.*t5.*t7.*8.76015e-1;
t31 = t3.*t4.*t9.*(-8.76015e-1);
t38 = t2.*t3.*t4.*t9.*4.38007e-1;
t39 = t2.*t3.*t5.*t8.*4.38007e-1;
t40 = t2.*t4.*t5.*t7.*4.38007e-1;
t41 = t3.*t4.*t5.*t6.*4.38007e-1;
t42 = t2.*t7.*t8.*t9.*4.38007e-1;
t43 = t3.*t6.*t8.*t9.*4.38007e-1;
t44 = t4.*t6.*t7.*t9.*4.38007e-1;
t45 = t5.*t6.*t7.*t8.*4.38007e-1;
t16 = q5+t13;
t17 = sin(t14);
t20 = -t19;
t22 = -t21;
t25 = t3.*t4.*t19;
t28 = t7.*t8.*t19;
t32 = -t26;
t33 = -t27;
t34 = t7.*t12.*4.38007e-1;
t35 = t3.*t15.*4.38007e-1;
t46 = -t38;
t47 = -t39;
t48 = -t40;
t49 = -t41;
t18 = sin(t16);
t23 = t17.*8.76015e-1;
t24 = t17.*4.38007e-1;
t29 = -t23;
t30 = -t24;
t36 = t18.*4.38007e-1;
t37 = -t36;
t50 = t20+t30;
t51 = t37+t50;
dM_dx5 = reshape([t20+t28+t31+t32+t33+t2.*t28+t2.*t31-t2.*t3.*t5.*t8.*8.76015e-1-t2.*t4.*t5.*t7.*8.76015e-1-t3.*t4.*t5.*t6.*8.76015e-1+t5.*t6.*t7.*t8.*8.76015e-1+t3.*t6.*t8.*t19+t4.*t6.*t7.*t19,t20+t29+t37,t51,t51,t22-t34-t35-t2.*(t34+t35)-t6.*(t3.*t12.*4.38007e-1-t7.*t15.*4.38007e-1),t20+t28+t31+t32+t33+t42+t43+t44+t45+t46+t47+t48+t49,t20+t29,t50,t50,t22+t30,t20+t42+t43+t44+t45+t46+t47+t48+t49-t3.*t4.*t9.*4.38007e-1-t3.*t5.*t8.*4.38007e-1-t4.*t5.*t7.*4.38007e-1+t7.*t8.*t9.*4.38007e-1,t50,t20,t20,t22,t51,t50,t20,t20,t22,t5.*(sin(t10)+sin(t13)).*(-4.38007e-1)-t9.*(cos(t10).*(9.0./2.0e+1)+cos(t13).*(9.0./2.0e+1)+9.0./2.0e+1).*9.7335e-1,t9.*(-4.38007e-1)+t30,t22,t22,0.0],[5,5]);
