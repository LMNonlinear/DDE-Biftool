function varargout=sym_nested(action,varargin)
%% Automatically generated with matlabFunction
% 
%#ok<*DEFNU,*INUSD,*INUSL>

switch action
  case 'ntau'
   varargout{1}=3;
   return
  case 'tp_del'
   varargout{1}=1;
   return
  case 'maxorder'
   varargout{1}=5;
   return
  case 'directional_derivative'
   varargout{1}=1;
   return
end
ind=varargin{1};
order=varargin{2};
nout=varargin{3};
f=str2func(sprintf('sym_nested_%s_%d_%d',action,ind,order));
varargout=cell(nout,1);
[varargout{:}]=f(varargin{4:end});




function out1 = sym_nested_rhs_1_0(x1,x2,x3,x4,tau1,p,x1_d,x2_d,x3_d,x4_d,tau1_d,p_d)
%SYM_NESTED_RHS_1_0
%    OUT1 = SYM_NESTED_RHS_1_0(X1,X2,X3,X4,TAU1,P,X1_D,X2_D,X3_D,X4_D,TAU1_D,P_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    19-Apr-2019 01:01:05

out1 = -x4;


function out1 = sym_nested_rhs_1_1(x1,x2,x3,x4,tau1,p,x1_d,x2_d,x3_d,x4_d,tau1_d,p_d)
%SYM_NESTED_RHS_1_1
%    OUT1 = SYM_NESTED_RHS_1_1(X1,X2,X3,X4,TAU1,P,X1_D,X2_D,X3_D,X4_D,TAU1_D,P_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    19-Apr-2019 01:01:06

out1 = -x4_d;


function out1 = sym_nested_rhs_1_2(x1,x2,x3,x4,tau1,p,x1_d,x2_d,x3_d,x4_d,tau1_d,p_d)
%SYM_NESTED_RHS_1_2
%    OUT1 = SYM_NESTED_RHS_1_2(X1,X2,X3,X4,TAU1,P,X1_D,X2_D,X3_D,X4_D,TAU1_D,P_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    19-Apr-2019 01:01:06

out1 = 0.0;


function out1 = sym_nested_rhs_1_3(x1,x2,x3,x4,tau1,p,x1_d,x2_d,x3_d,x4_d,tau1_d,p_d)
%SYM_NESTED_RHS_1_3
%    OUT1 = SYM_NESTED_RHS_1_3(X1,X2,X3,X4,TAU1,P,X1_D,X2_D,X3_D,X4_D,TAU1_D,P_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    19-Apr-2019 01:01:06

out1 = 0.0;


function out1 = sym_nested_rhs_1_4(x1,x2,x3,x4,tau1,p,x1_d,x2_d,x3_d,x4_d,tau1_d,p_d)
%SYM_NESTED_RHS_1_4
%    OUT1 = SYM_NESTED_RHS_1_4(X1,X2,X3,X4,TAU1,P,X1_D,X2_D,X3_D,X4_D,TAU1_D,P_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    19-Apr-2019 01:01:06

out1 = 0.0;


function out1 = sym_nested_rhs_1_5(x1,x2,x3,x4,tau1,p,x1_d,x2_d,x3_d,x4_d,tau1_d,p_d)
%SYM_NESTED_RHS_1_5
%    OUT1 = SYM_NESTED_RHS_1_5(X1,X2,X3,X4,TAU1,P,X1_D,X2_D,X3_D,X4_D,TAU1_D,P_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    19-Apr-2019 01:01:06

out1 = 0.0;


function out1 = sym_nested_tau_1_0(x1,x2,x3,x4,tau1,p,x1_d,x2_d,x3_d,x4_d,tau1_d,p_d)
%SYM_NESTED_TAU_1_0
%    OUT1 = SYM_NESTED_TAU_1_0(X1,X2,X3,X4,TAU1,P,X1_D,X2_D,X3_D,X4_D,TAU1_D,P_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    19-Apr-2019 01:01:06

out1 = tau1+x1+p.*x1.^2;


function out1 = sym_nested_tau_2_0(x1,x2,x3,x4,tau1,p,x1_d,x2_d,x3_d,x4_d,tau1_d,p_d)
%SYM_NESTED_TAU_2_0
%    OUT1 = SYM_NESTED_TAU_2_0(X1,X2,X3,X4,TAU1,P,X1_D,X2_D,X3_D,X4_D,TAU1_D,P_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    19-Apr-2019 01:01:06

out1 = tau1+x2+p.*x2.^2;


function out1 = sym_nested_tau_3_0(x1,x2,x3,x4,tau1,p,x1_d,x2_d,x3_d,x4_d,tau1_d,p_d)
%SYM_NESTED_TAU_3_0
%    OUT1 = SYM_NESTED_TAU_3_0(X1,X2,X3,X4,TAU1,P,X1_D,X2_D,X3_D,X4_D,TAU1_D,P_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    19-Apr-2019 01:01:07

out1 = tau1+x3+p.*x3.^2;


function out1 = sym_nested_tau_1_1(x1,x2,x3,x4,tau1,p,x1_d,x2_d,x3_d,x4_d,tau1_d,p_d)
%SYM_NESTED_TAU_1_1
%    OUT1 = SYM_NESTED_TAU_1_1(X1,X2,X3,X4,TAU1,P,X1_D,X2_D,X3_D,X4_D,TAU1_D,P_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    19-Apr-2019 01:01:07

out1 = tau1_d+x1_d+p_d.*x1.^2+p.*x1.*x1_d.*2.0;


function out1 = sym_nested_tau_2_1(x1,x2,x3,x4,tau1,p,x1_d,x2_d,x3_d,x4_d,tau1_d,p_d)
%SYM_NESTED_TAU_2_1
%    OUT1 = SYM_NESTED_TAU_2_1(X1,X2,X3,X4,TAU1,P,X1_D,X2_D,X3_D,X4_D,TAU1_D,P_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    19-Apr-2019 01:01:07

out1 = tau1_d+x2_d+p_d.*x2.^2+p.*x2.*x2_d.*2.0;


function out1 = sym_nested_tau_3_1(x1,x2,x3,x4,tau1,p,x1_d,x2_d,x3_d,x4_d,tau1_d,p_d)
%SYM_NESTED_TAU_3_1
%    OUT1 = SYM_NESTED_TAU_3_1(X1,X2,X3,X4,TAU1,P,X1_D,X2_D,X3_D,X4_D,TAU1_D,P_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    19-Apr-2019 01:01:07

out1 = tau1_d+x3_d+p_d.*x3.^2+p.*x3.*x3_d.*2.0;


function out1 = sym_nested_tau_1_2(x1,x2,x3,x4,tau1,p,x1_d,x2_d,x3_d,x4_d,tau1_d,p_d)
%SYM_NESTED_TAU_1_2
%    OUT1 = SYM_NESTED_TAU_1_2(X1,X2,X3,X4,TAU1,P,X1_D,X2_D,X3_D,X4_D,TAU1_D,P_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    19-Apr-2019 01:01:07

out1 = p.*x1_d.^2.*2.0+p_d.*x1.*x1_d.*4.0;


function out1 = sym_nested_tau_2_2(x1,x2,x3,x4,tau1,p,x1_d,x2_d,x3_d,x4_d,tau1_d,p_d)
%SYM_NESTED_TAU_2_2
%    OUT1 = SYM_NESTED_TAU_2_2(X1,X2,X3,X4,TAU1,P,X1_D,X2_D,X3_D,X4_D,TAU1_D,P_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    19-Apr-2019 01:01:07

out1 = p.*x2_d.^2.*2.0+p_d.*x2.*x2_d.*4.0;


function out1 = sym_nested_tau_3_2(x1,x2,x3,x4,tau1,p,x1_d,x2_d,x3_d,x4_d,tau1_d,p_d)
%SYM_NESTED_TAU_3_2
%    OUT1 = SYM_NESTED_TAU_3_2(X1,X2,X3,X4,TAU1,P,X1_D,X2_D,X3_D,X4_D,TAU1_D,P_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    19-Apr-2019 01:01:07

out1 = p.*x3_d.^2.*2.0+p_d.*x3.*x3_d.*4.0;


function out1 = sym_nested_tau_1_3(x1,x2,x3,x4,tau1,p,x1_d,x2_d,x3_d,x4_d,tau1_d,p_d)
%SYM_NESTED_TAU_1_3
%    OUT1 = SYM_NESTED_TAU_1_3(X1,X2,X3,X4,TAU1,P,X1_D,X2_D,X3_D,X4_D,TAU1_D,P_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    19-Apr-2019 01:01:07

out1 = p_d.*x1_d.^2.*6.0;


function out1 = sym_nested_tau_2_3(x1,x2,x3,x4,tau1,p,x1_d,x2_d,x3_d,x4_d,tau1_d,p_d)
%SYM_NESTED_TAU_2_3
%    OUT1 = SYM_NESTED_TAU_2_3(X1,X2,X3,X4,TAU1,P,X1_D,X2_D,X3_D,X4_D,TAU1_D,P_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    19-Apr-2019 01:01:07

out1 = p_d.*x2_d.^2.*6.0;


function out1 = sym_nested_tau_3_3(x1,x2,x3,x4,tau1,p,x1_d,x2_d,x3_d,x4_d,tau1_d,p_d)
%SYM_NESTED_TAU_3_3
%    OUT1 = SYM_NESTED_TAU_3_3(X1,X2,X3,X4,TAU1,P,X1_D,X2_D,X3_D,X4_D,TAU1_D,P_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    19-Apr-2019 01:01:08

out1 = p_d.*x3_d.^2.*6.0;


function out1 = sym_nested_tau_1_4(x1,x2,x3,x4,tau1,p,x1_d,x2_d,x3_d,x4_d,tau1_d,p_d)
%SYM_NESTED_TAU_1_4
%    OUT1 = SYM_NESTED_TAU_1_4(X1,X2,X3,X4,TAU1,P,X1_D,X2_D,X3_D,X4_D,TAU1_D,P_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    19-Apr-2019 01:01:08

out1 = 0.0;


function out1 = sym_nested_tau_2_4(x1,x2,x3,x4,tau1,p,x1_d,x2_d,x3_d,x4_d,tau1_d,p_d)
%SYM_NESTED_TAU_2_4
%    OUT1 = SYM_NESTED_TAU_2_4(X1,X2,X3,X4,TAU1,P,X1_D,X2_D,X3_D,X4_D,TAU1_D,P_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    19-Apr-2019 01:01:08

out1 = 0.0;


function out1 = sym_nested_tau_3_4(x1,x2,x3,x4,tau1,p,x1_d,x2_d,x3_d,x4_d,tau1_d,p_d)
%SYM_NESTED_TAU_3_4
%    OUT1 = SYM_NESTED_TAU_3_4(X1,X2,X3,X4,TAU1,P,X1_D,X2_D,X3_D,X4_D,TAU1_D,P_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    19-Apr-2019 01:01:08

out1 = 0.0;


function out1 = sym_nested_tau_1_5(x1,x2,x3,x4,tau1,p,x1_d,x2_d,x3_d,x4_d,tau1_d,p_d)
%SYM_NESTED_TAU_1_5
%    OUT1 = SYM_NESTED_TAU_1_5(X1,X2,X3,X4,TAU1,P,X1_D,X2_D,X3_D,X4_D,TAU1_D,P_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    19-Apr-2019 01:01:08

out1 = 0.0;


function out1 = sym_nested_tau_2_5(x1,x2,x3,x4,tau1,p,x1_d,x2_d,x3_d,x4_d,tau1_d,p_d)
%SYM_NESTED_TAU_2_5
%    OUT1 = SYM_NESTED_TAU_2_5(X1,X2,X3,X4,TAU1,P,X1_D,X2_D,X3_D,X4_D,TAU1_D,P_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    19-Apr-2019 01:01:08

out1 = 0.0;


function out1 = sym_nested_tau_3_5(x1,x2,x3,x4,tau1,p,x1_d,x2_d,x3_d,x4_d,tau1_d,p_d)
%SYM_NESTED_TAU_3_5
%    OUT1 = SYM_NESTED_TAU_3_5(X1,X2,X3,X4,TAU1,P,X1_D,X2_D,X3_D,X4_D,TAU1_D,P_D)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    19-Apr-2019 01:01:08

out1 = 0.0;
