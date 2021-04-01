function dbeta_heel_dx3 = dbeta_heel_dx3(in1,th)
%DBETA_HEEL_DX3
%    DBETA_HEEL_DX3 = DBETA_HEEL_DX3(IN1,TH)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    17-May-2020 03:26:28

q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
t2 = cos(q1);
t3 = cos(q2);
t4 = cos(q3);
t5 = cos(q4);
t6 = cos(q5);
t7 = sin(q1);
t8 = sin(q2);
t9 = sin(q3);
t10 = sin(q4);
t11 = sin(q5);
t12 = q1+q2;
t20 = th.*4.0e+2;
t13 = cos(t12);
t14 = sin(t12);
t15 = t2.*t3;
t16 = t2.*t8;
t17 = t3.*t7;
t18 = q3+q4+t12;
t19 = t7.*t8;
t21 = t7.*1.72e+2;
t25 = -t20;
t22 = cos(t18);
t23 = q5+t18;
t24 = sin(t18);
t27 = -t19;
t29 = t13.*(2.0./5.0);
t30 = t14.*(2.0./5.0);
t31 = t16.*1.6e+2;
t32 = t17.*1.6e+2;
t37 = t16+t17;
t26 = sin(t23);
t28 = cos(t23);
t33 = t22.*(2.0./5.0);
t34 = t24.*(2.0./5.0);
t38 = t15+t27;
t39 = t4.*t37;
t40 = t9.*t37;
t35 = t28./2.0;
t36 = t26./2.0;
t41 = t4.*t38;
t42 = t9.*t38;
t43 = -t40;
t44 = t33+t35;
t45 = t34+t36;
t46 = t39+t42;
t47 = t41+t43;
t50 = -t5.*(t40-t41);
t51 = -t10.*(t40-t41);
t55 = t5.*(t40-t41).*-1.6e+2;
t56 = t10.*(t40-t41).*-1.6e+2;
t57 = t5.*(t40-t41).*1.6e+2;
t48 = t5.*t46;
t49 = t10.*t46;
t52 = -t49;
t53 = t48.*1.6e+2;
t54 = t49.*1.6e+2;
t58 = t48+t51;
t62 = t11.*(t49+t5.*(t40-t41)).*-2.0e+2;
t63 = t6.*(t49+t5.*(t40-t41)).*-2.0e+2;
t64 = t6.*(t49+t5.*(t40-t41)).*2.0e+2;
t59 = t50+t52;
t60 = t11.*t58.*2.0e+2;
t61 = t6.*t58.*2.0e+2;
t65 = t54+t57+t60+t64;
t66 = t21+t25+t31+t32+t53+t56+t61+t62;
t67 = tanh(t66);
t68 = t67.^2;
t69 = t67./2.0;
t70 = t68-1.0;
t71 = t69-1.0./2.0;
t72 = t44.*t71;
t73 = t45.*t71;
t74 = (t44.*t65.*t70)./2.0;
t75 = (t45.*t65.*t70)./2.0;
t76 = -t74;
t77 = t72+t75;
t78 = t73+t76;
dbeta_heel_dx3 = reshape([t72+(t65.*t70.*(t7.*(4.3e+1./1.0e+2)+t30+t45))./2.0,t72+(t65.*t70.*(t30+t45))./2.0,t77,t77,t35.*t71+(t26.*t65.*t70)./4.0,0.0,t73-(t65.*t70.*(t2.*(4.3e+1./1.0e+2)+t29+t44))./2.0,t73-(t65.*t70.*(t29+t44))./2.0,t78,t78,t36.*t71-(t28.*t65.*t70)./4.0,0.0],[6,2]);
