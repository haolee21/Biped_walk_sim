function dbeta_heel_dx4 = dbeta_heel_dx4(in1,th)
%DBETA_HEEL_DX4
%    DBETA_HEEL_DX4 = DBETA_HEEL_DX4(IN1,TH)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    16-May-2020 14:58:34

q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
q6 = in1(:,6);
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
t22 = sqrt(2.9e+1);
t13 = cos(t12);
t14 = sin(t12);
t15 = t2.*t3;
t16 = t2.*t8;
t17 = t3.*t7;
t18 = q3+q4+t12;
t19 = t7.*t8;
t21 = t7.*1.72e+2;
t26 = -t20;
t23 = cos(t18);
t24 = q5+t18;
t25 = sin(t18);
t28 = -t19;
t30 = t13.*(2.0./5.0);
t31 = t14.*(2.0./5.0);
t32 = t16.*1.6e+2;
t33 = t17.*1.6e+2;
t36 = t16+t17;
t27 = sin(t24);
t29 = cos(t24);
t34 = t23.*(2.0./5.0);
t35 = t25.*(2.0./5.0);
t37 = t15+t28;
t40 = t4.*t36;
t41 = t9.*t36;
t57 = q6+t24-1.307801595113977;
t58 = q6+t24+2.629947316809195e-1;
t38 = t29.*(4.3e+1./1.0e+2);
t39 = t27.*(4.3e+1./1.0e+2);
t42 = t4.*t37;
t43 = t9.*t37;
t44 = -t41;
t59 = cos(t58);
t60 = sin(t58);
t45 = t40+t43;
t46 = t42+t44;
t49 = -t5.*(t41-t42);
t50 = -t10.*(t41-t42);
t54 = t5.*(t41-t42).*-1.6e+2;
t55 = t10.*(t41-t42).*-1.6e+2;
t56 = t5.*(t41-t42).*1.6e+2;
t61 = (t22.*t59)./2.0e+1;
t62 = (t22.*t60)./2.0e+1;
t47 = t5.*t45;
t48 = t10.*t45;
t63 = t38+t61;
t64 = t39+t62;
t51 = -t48;
t52 = t47.*1.6e+2;
t53 = t48.*1.6e+2;
t65 = t47+t50;
t69 = t34+t63;
t70 = t35+t64;
t71 = t11.*(t48+t5.*(t41-t42)).*-2.0e+2;
t72 = t6.*(t48+t5.*(t41-t42)).*-2.0e+2;
t73 = t6.*(t48+t5.*(t41-t42)).*2.0e+2;
t66 = t49+t51;
t67 = t11.*t65.*2.0e+2;
t68 = t6.*t65.*2.0e+2;
t74 = t53+t56+t67+t73;
t75 = t21+t26+t32+t33+t52+t55+t68+t71;
t76 = tanh(t75);
t77 = t76.^2;
t78 = t76./2.0;
t79 = t77-1.0;
t80 = t78-1.0./2.0;
t81 = t69.*t80;
t82 = t70.*t80;
t83 = (t69.*t74.*t79)./2.0;
t84 = (t70.*t74.*t79)./2.0;
t85 = -t83;
t86 = t81+t84;
t87 = t82+t85;
dbeta_heel_dx4 = reshape([t81+(t74.*t79.*(t7.*(4.3e+1./1.0e+2)+t31+t70))./2.0,t81+(t74.*t79.*(t31+t70))./2.0,t86,t86,t63.*t80+(t64.*t74.*t79)./2.0,t22.*t80.*sin(t57).*(-1.0./2.0e+1)+(t22.*t74.*t79.*cos(t57))./4.0e+1,t82-(t74.*t79.*(t2.*(4.3e+1./1.0e+2)+t30+t69))./2.0,t82-(t74.*t79.*(t30+t69))./2.0,t87,t87,t64.*t80-(t63.*t74.*t79)./2.0,t62.*t80-(t22.*t59.*t74.*t79)./4.0e+1],[6,2]);
