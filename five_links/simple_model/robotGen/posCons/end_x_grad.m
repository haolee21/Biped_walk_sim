function end_x_grad = end_x_grad(q1,q2,q3,q4,q5)
%END_X_GRAD
%    END_X_GRAD = END_X_GRAD(Q1,Q2,Q3,Q4,Q5)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    22-Apr-2020 15:08:01

t2 = q1+q2;
t3 = sin(t2);
t4 = q3+q4+t2;
t5 = q5+t4;
t6 = sin(t4);
t8 = t3.*(9.0./2.0e+1);
t7 = sin(t5);
t9 = -t8;
t10 = t6.*(9.0./2.0e+1);
t11 = t7.*(9.0./2.0e+1);
t12 = -t10;
t13 = -t11;
t14 = t12+t13;
end_x_grad = [t9+t14-sin(q1).*(9.0./2.0e+1),t9+t14,t14,t14,t13];
