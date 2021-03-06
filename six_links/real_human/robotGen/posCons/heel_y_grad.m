function heel_y_grad = heel_y_grad(in1)
%HEEL_Y_GRAD
%    HEEL_Y_GRAD = HEEL_Y_GRAD(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    17-May-2020 16:05:53

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
t12 = t2.*t3;
t13 = t2.*t8;
t14 = t3.*t7;
t15 = t7.*t8;
t16 = -t15;
t17 = t12.*(2.0./5.0);
t18 = t15.*(2.0./5.0);
t20 = t13+t14;
t19 = -t18;
t21 = t12+t16;
t22 = t4.*t20;
t23 = t9.*t20;
t24 = t4.*t21;
t25 = t9.*t21;
t26 = -t23;
t27 = t22+t25;
t28 = t24+t26;
t31 = -t5.*(t23-t24);
t32 = -t10.*(t23-t24);
t36 = t5.*(t23-t24).*(-2.0./5.0);
t29 = t5.*t27;
t30 = t10.*t27;
t33 = -t30;
t34 = t30.*(2.0./5.0);
t37 = t29+t32;
t41 = t6.*(t30+t5.*(t23-t24)).*(-1.0./2.0);
t35 = -t34;
t38 = t31+t33;
t39 = (t11.*t37)./2.0;
t40 = -t39;
t42 = t35+t36+t40+t41;
heel_y_grad = [t2.*(4.3e+1./1.0e+2)+t17+t19+t42,t17+t19+t42,t42,t42,t40+t41,0.0];
