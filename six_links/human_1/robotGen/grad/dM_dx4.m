function dM_dx4 = dM_dx4(q2,q3,q4,q5,q6)
%DM_DX4
%    DM_DX4 = DM_DX4(Q2,Q3,Q4,Q5,Q6)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    27-May-2020 01:00:00

t2 = q3+q4;
t3 = q2+t2;
t4 = q5+t2;
t5 = sin(t2);
t6 = q5+t3;
t7 = q6+t4;
t8 = sin(t3);
t9 = sin(t4);
t20 = t5.*1.702413339329298;
t21 = t5.*3.404826678658597;
t10 = q6+t6;
t11 = sin(t6);
t12 = sin(t7);
t14 = t8.*1.75880132122703;
t22 = -t21;
t23 = -t20;
t28 = t9.*4.823752644884052e-1;
t29 = t9.*9.647505289768104e-1;
t13 = sin(t10);
t15 = -t14;
t18 = t11.*4.98352681402092e-1;
t24 = t12.*5.279069867828761e-2;
t25 = t12.*1.055813973565752e-1;
t30 = -t29;
t31 = -t28;
t16 = t13.*5.4539252271396e-2;
t19 = -t18;
t26 = -t25;
t27 = -t24;
t17 = -t16;
t33 = t27+t31;
t32 = t17+t27;
t34 = t23+t33;
t36 = t15+t17+t19+t22+t26+t30;
t35 = t19+t31+t32;
t37 = t15+t23+t35;
dM_dx4 = reshape([t8.*(-3.517602642454061)-t11.*9.96705362804184e-1-t13.*1.09078504542792e-1+t22+t26+t30,t36,t37,t37,t35,t32,t36,t22+t26+t30,t34,t34,t33,t27,t37,t34,0.0,0.0,0.0,0.0,t37,t34,0.0,0.0,0.0,0.0,t35,t33,0.0,0.0,0.0,0.0,t32,t27,0.0,0.0,0.0,0.0],[6,6]);
