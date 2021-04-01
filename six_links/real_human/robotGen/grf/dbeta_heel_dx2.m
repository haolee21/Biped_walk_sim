function dbeta_heel_dx2 = dbeta_heel_dx2(in1,th)
%DBETA_HEEL_DX2
%    DBETA_HEEL_DX2 = DBETA_HEEL_DX2(IN1,TH)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    17-May-2020 03:19:42

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
t30 = t15.*1.6e+2;
t31 = t14.*(2.0./5.0);
t32 = t16.*1.6e+2;
t33 = t17.*1.6e+2;
t34 = t19.*1.6e+2;
t40 = t16+t17;
t26 = sin(t23);
t28 = cos(t23);
t35 = -t34;
t36 = t22.*(2.0./5.0);
t37 = t24.*(2.0./5.0);
t41 = t15+t27;
t42 = t4.*t40;
t43 = t9.*t40;
t38 = t28./2.0;
t39 = t26./2.0;
t44 = t4.*t41;
t45 = t9.*t41;
t46 = -t43;
t47 = t36+t38;
t48 = t37+t39;
t51 = t42+t45;
t52 = t44+t46;
t55 = -t5.*(t43-t44);
t56 = -t10.*(t43-t44);
t61 = t5.*(t43-t44).*-1.6e+2;
t62 = t10.*(t43-t44).*-1.6e+2;
t49 = t29+t47;
t50 = t31+t48;
t53 = t5.*t51;
t54 = t10.*t51;
t57 = -t54;
t58 = t53.*1.6e+2;
t59 = t54.*1.6e+2;
t63 = t53+t56;
t68 = t11.*(t54+t5.*(t43-t44)).*-2.0e+2;
t69 = t6.*(t54+t5.*(t43-t44)).*-2.0e+2;
t60 = -t59;
t64 = t55+t57;
t65 = t11.*t63.*2.0e+2;
t66 = t6.*t63.*2.0e+2;
t67 = -t65;
t71 = t21+t25+t32+t33+t58+t62+t66+t68;
t70 = t30+t35+t60+t61+t67+t69;
t72 = tanh(t71);
t73 = t72.^2;
t74 = t72./2.0;
t75 = t73-1.0;
t76 = t74-1.0./2.0;
t77 = t47.*t76;
t78 = t48.*t76;
t79 = t49.*t76;
t80 = t50.*t76;
t81 = t47.*t75.*(-t30+t34+t59+t65+t6.*(t54+t5.*(t43-t44)).*2.0e+2+t5.*(t43-t44).*1.6e+2).*(-1.0./2.0);
t82 = t48.*t75.*(-t30+t34+t59+t65+t6.*(t54+t5.*(t43-t44)).*2.0e+2+t5.*(t43-t44).*1.6e+2).*(-1.0./2.0);
t83 = (t48.*t75.*(-t30+t34+t59+t65+t6.*(t54+t5.*(t43-t44)).*2.0e+2+t5.*(t43-t44).*1.6e+2))./2.0;
t84 = t78+t81;
t85 = t77+t83;
dbeta_heel_dx2 = reshape([t79+(t75.*(t7.*(4.3e+1./1.0e+2)+t50).*(-t30+t34+t59+t65+t6.*(t54+t5.*(t43-t44)).*2.0e+2+t5.*(t43-t44).*1.6e+2))./2.0,t79+(t50.*t75.*(-t30+t34+t59+t65+t6.*(t54+t5.*(t43-t44)).*2.0e+2+t5.*(t43-t44).*1.6e+2))./2.0,t85,t85,t38.*t76+(t26.*t75.*(-t30+t34+t59+t65+t6.*(t54+t5.*(t43-t44)).*2.0e+2+t5.*(t43-t44).*1.6e+2))./4.0,0.0,t80-(t75.*(t2.*(4.3e+1./1.0e+2)+t49).*(-t30+t34+t59+t65+t6.*(t54+t5.*(t43-t44)).*2.0e+2+t5.*(t43-t44).*1.6e+2))./2.0,t80-(t49.*t75.*(-t30+t34+t59+t65+t6.*(t54+t5.*(t43-t44)).*2.0e+2+t5.*(t43-t44).*1.6e+2))./2.0,t84,t84,t39.*t76-(t28.*t75.*(-t30+t34+t59+t65+t6.*(t54+t5.*(t43-t44)).*2.0e+2+t5.*(t43-t44).*1.6e+2))./4.0,0.0],[6,2]);
