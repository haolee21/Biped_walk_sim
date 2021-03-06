function out1 = six_G(q1,q2,q3,q4,q5,q6)
%SIX_G
%    OUT1 = SIX_G(Q1,Q2,Q3,Q4,Q5,Q6)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    17-May-2020 16:40:57

t2 = q1+q2;
t3 = cos(t2);
t4 = q3+t2;
t5 = cos(t4);
t6 = q4+t4;
t12 = t3.*2.25778131e+2;
t7 = cos(t6);
t8 = q5+t6;
t14 = t5.*1.15872777e+2;
t9 = q6+t8;
t10 = cos(t8);
t15 = t7.*3.0890709e+1;
t11 = cos(t9);
t16 = t10.*1.0990143e+1;
t13 = t11.*1.339065;
out1 = [t12+t13+t14+t15+t16+cos(q1).*2.6492886e+2,t12+t13+t14+t15+t16,t13+t14+t15+t16,t13+t15+t16,t13+t16,t13];
