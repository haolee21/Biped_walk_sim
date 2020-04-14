function dsigma_dq = dsigma_dq(q1,q2,q3,q4,q5,th)
%DSIGMA_DQ
%    DSIGMA_DQ = DSIGMA_DQ(Q1,Q2,Q3,Q4,Q5,TH)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    14-Apr-2020 16:02:05

t2 = sin(q1);
t3 = q1+q2;
t6 = -th;
t4 = cos(t3);
t5 = sin(t3);
t7 = q3+q4+t3;
t13 = t2.*(9.0./2.0e+1);
t8 = cos(t7);
t9 = q5+t7;
t10 = sin(t7);
t14 = t4.*(9.0./2.0e+1);
t15 = t5.*(9.0./2.0e+1);
t11 = sin(t9);
t12 = cos(t9);
t16 = t8.*(9.0./2.0e+1);
t17 = t10.*(9.0./2.0e+1);
t18 = t12.*(9.0./2.0e+1);
t19 = t11.*(9.0./2.0e+1);
t20 = t16+t18;
t21 = t6+t13+t15+t17+t19;
t22 = tanh(t21);
t23 = t22.^2;
t24 = t23-1.0;
t25 = (t20.*t24)./2.0;
t26 = -t25;
dsigma_dq = [t24.*(t14+t20+cos(q1).*(9.0./2.0e+1)).*(-1.0./2.0);t24.*(t14+t20).*(-1.0./2.0);t26;t26;t12.*t24.*(-9.0./4.0e+1)];
