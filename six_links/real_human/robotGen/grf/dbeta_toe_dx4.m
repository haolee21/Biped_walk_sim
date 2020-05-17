function dbeta_toe_dx4 = dbeta_toe_dx4(in1,th)
%DBETA_TOE_DX4
%    DBETA_TOE_DX4 = DBETA_TOE_DX4(IN1,TH)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    16-May-2020 19:00:55

q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
q6 = in1(:,6);
t2 = sin(q1);
t3 = q1+q2;
t7 = atan(7.0./2.6e+1);
t8 = th.*4.0e+2;
t10 = sqrt(2.9e+1);
t4 = cos(t3);
t5 = sin(t3);
t6 = q3+q4+t3;
t9 = t2.*1.72e+2;
t14 = -t8;
t11 = cos(t6);
t12 = q5+t6;
t13 = sin(t6);
t17 = t4.*(2.0./5.0);
t18 = t5.*(2.0./5.0);
t19 = t5.*1.6e+2;
t15 = sin(t12);
t16 = cos(t12);
t20 = t11.*(2.0./5.0);
t21 = t11.*1.6e+2;
t22 = t13.*(2.0./5.0);
t23 = t13.*1.6e+2;
t26 = q6+t7+t12;
t33 = q6+t12-1.307801595113977;
t34 = q6+t12+2.629947316809195e-1;
t24 = t16.*1.72e+2;
t25 = t15.*1.72e+2;
t27 = cos(t26);
t28 = sin(t26);
t29 = t16.*(4.3e+1./1.0e+2);
t30 = t15.*(4.3e+1./1.0e+2);
t35 = cos(t34);
t36 = sin(t34);
t31 = t10.*t27.*2.0e+1;
t32 = t10.*t28.*2.0e+1;
t38 = (t10.*t35)./2.0e+1;
t39 = (t10.*t36)./2.0e+1;
t37 = t21+t24+t31;
t40 = t9+t14+t19+t23+t25+t32;
t43 = t29+t38;
t44 = t30+t39;
t41 = tanh(t40);
t48 = t20+t43;
t49 = t22+t44;
t42 = t41.^2;
t45 = t41./2.0;
t46 = t42-1.0;
t47 = t45-1.0./2.0;
t50 = t47.*t48;
t51 = t47.*t49;
t52 = (t37.*t46.*t49)./2.0;
t53 = (t37.*t46.*t48)./2.0;
t54 = -t52;
t55 = t51+t53;
t56 = t50+t54;
dbeta_toe_dx4 = reshape([t50-(t37.*t46.*(t2.*(4.3e+1./1.0e+2)+t18+t49))./2.0,t50-(t37.*t46.*(t18+t49))./2.0,t56,t56,t43.*t47-(t37.*t44.*t46)./2.0,t10.*t47.*sin(t33).*(-1.0./2.0e+1)-(t10.*t37.*t46.*cos(t33))./4.0e+1,t51+(t37.*t46.*(t17+t48+cos(q1).*(4.3e+1./1.0e+2)))./2.0,t51+(t37.*t46.*(t17+t48))./2.0,t55,t55,t44.*t47+(t37.*t43.*t46)./2.0,t39.*t47+(t10.*t35.*t37.*t46)./4.0e+1],[6,2]);
