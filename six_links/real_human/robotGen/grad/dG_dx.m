function dG_dx = dG_dx(q1,q2,q3,q4,q5,q6)
%DG_DX
%    DG_DX = DG_DX(Q1,Q2,Q3,Q4,Q5,Q6)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    17-May-2020 16:40:58

t2 = q1+q2;
t3 = q3+t2;
t4 = sin(t2);
t5 = q4+t3;
t6 = sin(t3);
t12 = t4.*2.25778131e+2;
t7 = q5+t5;
t8 = sin(t5);
t14 = -t12;
t15 = t6.*1.15872777e+2;
t9 = q6+t7;
t10 = sin(t7);
t17 = t8.*3.0890709e+1;
t19 = -t15;
t11 = sin(t9);
t18 = t10.*1.0990143e+1;
t20 = -t17;
t13 = t11.*1.339065;
t21 = -t18;
t16 = -t13;
t22 = t16+t21;
t23 = t20+t22;
t24 = t19+t23;
t25 = t14+t24;
dG_dx = reshape([t25-sin(q1).*2.6492886e+2,t25,t24,t23,t22,t16,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t25,t25,t24,t23,t22,t16,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t24,t24,t24,t23,t22,t16,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t23,t23,t23,t23,t22,t16,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t22,t22,t22,t22,t22,t16,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t16,t16,t16,t16,t16,t16,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],[18,6]);
