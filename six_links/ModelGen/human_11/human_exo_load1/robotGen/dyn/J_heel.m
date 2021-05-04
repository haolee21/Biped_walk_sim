function J = J_heel(in1)
%J_HEEL
%    J = J_HEEL(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    19-Apr-2021 18:38:19

q1 = in1(:,1);
q2 = in1(:,2);
q3 = in1(:,3);
q4 = in1(:,4);
q5 = in1(:,5);
q6 = in1(:,6);
t2 = q1+q2;
t20 = atan(5.774051282051283e-1);
t21 = 1.546478599905513e+18;
t3 = cos(t2);
t4 = sin(t2);
t5 = q3+q4+t2;
t6 = cos(t5);
t7 = q5+t5;
t8 = sin(t5);
t11 = t3.*4.4835e-1;
t12 = t4.*4.4835e-1;
t9 = sin(t7);
t10 = cos(t7);
t13 = -t12;
t14 = t6.*4.4835e-1;
t15 = t8.*4.4835e-1;
t22 = q6+t7+t20;
t16 = t10.*4.4835e-1;
t17 = t9.*4.4835e-1;
t18 = -t15;
t23 = cos(t22);
t24 = sin(t22);
t19 = -t17;
t25 = t21.*t23.*5.329070518200751e-20;
t26 = t21.*t24.*5.329070518200751e-20;
t27 = -t25;
t28 = -t26;
t29 = t14+t16+t28;
t30 = t18+t19+t27;
J = reshape([t13+t30-sin(q1).*4.4835e-1,t11+t29+cos(q1).*4.4835e-1,t13+t30,t11+t29,t30,t29,t30,t29,t19+t27,t16+t28,t27,t28],[2,6]);
