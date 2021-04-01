function dbeta_toe_dx5 = dbeta_toe_dx5(in1,th)
%DBETA_TOE_DX5
%    DBETA_TOE_DX5 = DBETA_TOE_DX5(IN1,TH)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    17-May-2020 05:34:03

q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
q6 = in1(:,6);
t2 = sin(q1);
t3 = q1+q2;
t7 = atan(7.0./2.6e+1);
t8 = atan(2.6e+1./7.0);
t9 = th.*4.0e+2;
t11 = sqrt(2.9e+1);
t4 = cos(t3);
t5 = sin(t3);
t6 = q3+q4+t3;
t10 = t2.*1.72e+2;
t15 = -t9;
t21 = -t8;
t12 = cos(t6);
t13 = q5+t6;
t14 = sin(t6);
t18 = t4.*(2.0./5.0);
t19 = t5.*(2.0./5.0);
t20 = t5.*1.6e+2;
t16 = sin(t13);
t17 = cos(t13);
t22 = t12.*(2.0./5.0);
t23 = t14.*(2.0./5.0);
t24 = t14.*1.6e+2;
t27 = q6+t7+t13;
t32 = q6+t13+t21;
t25 = t17.*1.72e+2;
t26 = t16.*1.72e+2;
t28 = cos(t27);
t29 = sin(t27);
t30 = t17.*(4.3e+1./1.0e+2);
t31 = t16.*(4.3e+1./1.0e+2);
t33 = t11.*t28.*2.0e+1;
t34 = t11.*t29.*2.0e+1;
t35 = (t11.*t28)./2.0e+1;
t36 = (t11.*t29)./2.0e+1;
t37 = t25+t33;
t38 = t30+t35;
t39 = t31+t36;
t42 = t10+t15+t20+t24+t26+t34;
t40 = t22+t38;
t41 = t23+t39;
t43 = tanh(t42);
t44 = t43.^2;
t45 = t43./2.0;
t46 = t44-1.0;
t47 = t45-1.0./2.0;
t48 = t38.*t47;
t49 = t39.*t47;
t50 = (t37.*t40.*t46)./2.0;
t51 = (t37.*t41.*t46)./2.0;
t52 = -t51;
t53 = t49+t50;
t54 = t48+t52;
dbeta_toe_dx5 = reshape([t48-(t37.*t46.*(t2.*(4.3e+1./1.0e+2)+t19+t41))./2.0,t48-(t37.*t46.*(t19+t41))./2.0,t54,t54,t48-(t37.*t39.*t46)./2.0,t11.*t47.*sin(t32).*(-1.0./2.0e+1)-(t11.*t37.*t46.*cos(t32))./4.0e+1,t49+(t37.*t46.*(t18+t40+cos(q1).*(4.3e+1./1.0e+2)))./2.0,t49+(t37.*t46.*(t18+t40))./2.0,t53,t53,t49+(t37.*t38.*t46)./2.0,t36.*t47+(t11.*t28.*t37.*t46)./4.0e+1],[6,2]);
