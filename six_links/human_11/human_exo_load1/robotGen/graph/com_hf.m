function com_hf = com_hf(in1)
%COM_HF
%    COM_HF = COM_HF(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    16-Apr-2021 13:30:48

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
t7 = cos(q6);
t8 = sin(q1);
t9 = sin(q2);
t10 = sin(q3);
t11 = sin(q4);
t12 = sin(q5);
t13 = sin(q6);
t14 = t2.*t3;
t15 = t2.*t9;
t16 = t3.*t8;
t17 = t8.*t9;
t21 = t2.*4.4835e-1;
t22 = t8.*4.4835e-1;
t18 = -t17;
t19 = t15+t16;
t25 = t14.*4.4835e-1;
t26 = t15.*4.4835e-1;
t27 = t16.*4.4835e-1;
t28 = t17.*4.4835e-1;
t20 = t14+t18;
t23 = t4.*t19;
t24 = t10.*t19;
t32 = -t28;
t29 = t4.*t20;
t30 = t10.*t20;
t31 = -t24;
t33 = t23+t30;
t34 = t29+t31;
t37 = -t5.*(t24-t29);
t38 = -t11.*(t24-t29);
t43 = t5.*(t24-t29).*(-4.4835e-1);
t44 = t11.*(t24-t29).*(-4.4835e-1);
t35 = t5.*t33;
t36 = t11.*t33;
t39 = -t36;
t40 = t35.*4.4835e-1;
t41 = t36.*4.4835e-1;
t45 = t35+t38;
t49 = -t12.*(t36+t5.*(t24-t29));
t50 = -t6.*(t36+t5.*(t24-t29));
t51 = t6.*(t36+t5.*(t24-t29));
t42 = -t41;
t46 = t37+t39;
t47 = t12.*t45;
t48 = t6.*t45;
t52 = t48+t49;
t53 = t47+t51;
com_hf = reshape([t2.*2.5421445e-1,t8.*2.5421445e-1,0.0,t14.*2.5421445e-1-t17.*2.5421445e-1+t21,t15.*2.5421445e-1+t16.*2.5421445e-1+t22,0.0,t21-t24.*3.412436765328911e-1+t25+t29.*3.412436765328911e-1+t32,t22+t23.*3.412436765328911e-1+t26+t27+t30.*3.412436765328911e-1,0.0,t21+t25+t32-t36.*1.9413555e-1-t5.*(t24-t29).*1.9413555e-1,t22+t26+t27+t35.*1.9413555e-1-t11.*(t24-t29).*1.9413555e-1,0.0,t21+t25+t32+t42+t43-t47.*1.9413555e-1-t51.*1.9413555e-1,t22+t26+t27+t40+t44+t48.*1.9413555e-1-t12.*(t36+t5.*(t24-t29)).*1.9413555e-1,0.0,t21+t25+t32+t42+t43-t47.*4.4835e-1-t51.*4.4835e-1-t7.*t52.*7.137e-2-t7.*t53.*3.6063444e-2-t13.*t52.*3.6063444e-2+t13.*t53.*7.137e-2,t22+t26+t27+t40+t44+t48.*4.4835e-1-t12.*(t36+t5.*(t24-t29)).*4.4835e-1+t7.*t52.*3.6063444e-2-t7.*t53.*7.137e-2-t13.*t52.*7.137e-2-t13.*t53.*3.6063444e-2,0.0],[3,6]);
