function dbeta_toe_dx2 = dbeta_toe_dx2(in1,th)
%DBETA_TOE_DX2
%    DBETA_TOE_DX2 = DBETA_TOE_DX2(IN1,TH)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    17-May-2020 03:22:55

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
t22 = -t8;
t12 = cos(t6);
t13 = q5+t6;
t14 = sin(t6);
t18 = t4.*(2.0./5.0);
t19 = t4.*1.6e+2;
t20 = t5.*(2.0./5.0);
t21 = t5.*1.6e+2;
t16 = sin(t13);
t17 = cos(t13);
t23 = t12.*(2.0./5.0);
t24 = t12.*1.6e+2;
t25 = t14.*(2.0./5.0);
t26 = t14.*1.6e+2;
t29 = q6+t7+t13;
t34 = q6+t13+t22;
t27 = t17.*1.72e+2;
t28 = t16.*1.72e+2;
t30 = cos(t29);
t31 = sin(t29);
t32 = t17.*(4.3e+1./1.0e+2);
t33 = t16.*(4.3e+1./1.0e+2);
t35 = t11.*t30.*2.0e+1;
t36 = t11.*t31.*2.0e+1;
t37 = (t11.*t30)./2.0e+1;
t38 = (t11.*t31)./2.0e+1;
t39 = t32+t37;
t40 = t33+t38;
t43 = t19+t24+t27+t35;
t46 = t10+t15+t21+t26+t28+t36;
t41 = t23+t39;
t42 = t25+t40;
t47 = tanh(t46);
t44 = t18+t41;
t45 = t20+t42;
t48 = t47.^2;
t49 = t47./2.0;
t50 = t48-1.0;
t51 = t49-1.0./2.0;
t52 = t41.*t51;
t53 = t42.*t51;
t54 = t44.*t51;
t55 = t45.*t51;
t56 = (t41.*t43.*t50)./2.0;
t57 = (t42.*t43.*t50)./2.0;
t58 = -t57;
t59 = t53+t56;
t60 = t52+t58;
dbeta_toe_dx2 = reshape([t54-(t43.*t50.*(t2.*(4.3e+1./1.0e+2)+t45))./2.0,t54-(t43.*t45.*t50)./2.0,t60,t60,t39.*t51-(t40.*t43.*t50)./2.0,t11.*t51.*sin(t34).*(-1.0./2.0e+1)-(t11.*t43.*t50.*cos(t34))./4.0e+1,t55+(t43.*t50.*(t44+cos(q1).*(4.3e+1./1.0e+2)))./2.0,t55+(t43.*t44.*t50)./2.0,t59,t59,t40.*t51+(t39.*t43.*t50)./2.0,t38.*t51+(t11.*t30.*t43.*t50)./4.0e+1],[6,2]);
