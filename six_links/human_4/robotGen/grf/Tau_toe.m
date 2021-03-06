function Tau_toe = Tau_toe(in1,in2)
%TAU_TOE
%    TAU_TOE = TAU_TOE(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    17-Jul-2020 17:34:46

Fx = in2(:,1);
Fy = in2(:,2);
q_t1 = in1(:,1);
q_t2 = in1(:,2);
q_t3 = in1(:,3);
q_t4 = in1(:,4);
q_t5 = in1(:,5);
q_t6 = in1(:,6);
t2 = q_t1+q_t2;
t11 = atan(2.87940379403794e-1);
t12 = atan(3.472941176470588);
t13 = 1.535969075209524e+3;
t3 = cos(t2);
t4 = sin(t2);
t5 = q_t3+q_t4+t2;
t14 = -t12;
t6 = cos(t5);
t7 = q_t5+t5;
t8 = sin(t5);
t21 = t3.*4.13678e-1;
t22 = t4.*4.13678e-1;
t9 = sin(t7);
t10 = cos(t7);
t15 = q_t6+t7+t11;
t19 = q_t6+t7+t14;
t24 = t6.*4.13678e-1;
t25 = t8.*4.13678e-1;
t16 = cos(t15);
t17 = t10.*4.2738e-1;
t18 = t9.*4.2738e-1;
t20 = cos(t19);
t23 = t13.*t16.*1.7e-4;
t26 = t13.*t20.*1.7e-4;
t27 = t17+t23+t24;
t29 = t18+t25+t26;
t28 = Fy.*t27;
t30 = Fx.*t29;
t31 = -t30;
t32 = t28+t31;
Tau_toe = [Fy.*(t21+t27+cos(q_t1).*4.2738e-1)-Fx.*(t22+t29+sin(q_t1).*4.2738e-1);-Fx.*(t22+t29)+Fy.*(t21+t27);t32;t32;-Fx.*(t18+t26)+Fy.*(t17+t23);Fy.*t23-Fx.*t13.*t20.*1.7e-4];
