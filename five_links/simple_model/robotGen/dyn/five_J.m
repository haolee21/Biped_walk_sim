function J = five_J(q1,q2,q3,q4,q5)
%FIVE_J
%    J = FIVE_J(Q1,Q2,Q3,Q4,Q5)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    22-Apr-2020 02:21:36

t2 = cos(q5);
t3 = sin(q5);
t4 = q3+q4+q5;
t5 = cos(t4);
t6 = q2+t4;
t7 = sin(t4);
t13 = t2.*(9.0./2.0e+1);
t14 = t3.*(9.0./2.0e+1);
t8 = cos(t6);
t9 = q1+t6;
t10 = sin(t6);
t15 = t5.*(9.0./2.0e+1);
t16 = t7.*(9.0./2.0e+1);
t11 = sin(t9);
t12 = cos(t9);
t17 = t8.*(9.0./2.0e+1);
t18 = t10.*(9.0./2.0e+1);
t24 = t13+t15;
t25 = t14+t16;
t19 = t12.*t13;
t20 = t11.*t13;
t21 = t12.*t14;
t22 = t11.*t14;
t23 = t2.*t11.*(-9.0./2.0e+1);
t27 = t18+t25;
t29 = t17+t24;
t26 = t19+t22;
t28 = t21+t23;
J = reshape([t12.*t27-t11.*t29,t11.*t27+t12.*t29,0.0,0.0,0.0,1.0,-t11.*t24+t12.*t25,t11.*t25+t12.*t24,0.0,0.0,0.0,1.0,t28,t26,0.0,0.0,0.0,1.0,t28,t26,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,1.0],[6,5]);
