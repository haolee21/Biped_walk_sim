function hip_x_grad = hip_x_grad(in1)
%HIP_X_GRAD
%    HIP_X_GRAD = HIP_X_GRAD(IN1)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    24-Apr-2020 12:32:12

q1 = in1(:,1);
q2 = in1(:,2);
t2 = q1+q2;
t3 = sin(t2);
t4 = t3.*(2.0./5.0);
t5 = -t4;
hip_x_grad = [t5-sin(q1).*(4.3e+1./1.0e+2),t5,0.0];
