function A1 = sys_A1(in1,in2,in3,in4)
%SYS_A1
%    A1 = SYS_A1(IN1,IN2,IN3,IN4)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    24-Feb-2017 15:51:57

par8 = in2(:,8);
phi01 = in3(1,:);
psi02 = in4(2,:);
A1 = [0.0;0.0;par8.*phi01.*psi02];