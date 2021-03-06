function Tau_toe = Tau_toe(in1,in2)
%TAU_TOE
%    TAU_TOE = TAU_TOE(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 8.4.
%    18-Jul-2020 23:02:25

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
t13 = 1.31862742200231e+17;
t3 = cos(t2);
t4 = sin(t2);
t5 = q_t3+q_t4+t2;
t16 = -t12;
t6 = cos(t5);
t7 = q_t5+t5;
t8 = sin(t5);
t14 = t3.*4.453122e-1;
t15 = t4.*4.453122e-1;
t9 = sin(t7);
t10 = cos(t7);
t17 = t6.*4.453122e-1;
t18 = t8.*4.453122e-1;
t21 = q_t6+t7+t11;
t23 = q_t6+t7+t16;
t19 = t10.*4.60062e-1;
t20 = t9.*4.60062e-1;
t22 = cos(t21);
t24 = cos(t23);
t25 = t13.*t22.*2.131628207280301e-18;
t26 = t13.*t24.*2.131628207280301e-18;
t27 = t17+t19+t25;
t29 = t18+t20+t26;
t28 = Fy.*t27;
t30 = Fx.*t29;
t31 = -t30;
t32 = t28+t31;
Tau_toe = [Fy.*(t14+t27+cos(q_t1).*4.60062e-1)-Fx.*(t15+t29+sin(q_t1).*4.60062e-1);-Fx.*(t15+t29)+Fy.*(t14+t27);t32;t32;-Fx.*(t20+t26)+Fy.*(t19+t25);Fy.*t25-Fx.*t13.*t24.*2.131628207280301e-18];
