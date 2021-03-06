function varargout=sym_nested(action,varargin)
%% Automatically generated with matlabFunction
% 
%#ok<*DEFNU,*INUSD,*INUSL>

switch action
  case 'ntau'
   varargout{1}=1;
   return
  case 'tp_del'
   varargout{1}=1;
   return
  case 'mf_dxlength'
   varargout{1}=6;
   return
end
ind=varargin{1};
order=varargin{2};
nout=varargin{3};
f=str2func(sprintf('sym_nested_%s_%d_%d',action,ind,order));
varargout=cell(nout,1);
[varargout{:}]=f(varargin{4:end});



function out_1 = sym_nested_rhs_1_0(x1,x2,p,x1_dev,x2_dev,p_dev)
%SYM_NESTED_RHS_1_0
%    OUT_1 = SYM_NESTED_RHS_1_0(X1,X2,P,X1_DEV,X2_DEV,P_DEV)

%    This function was generated by the Symbolic Math Toolbox version 7.1.
%    15-May-2017 17:54:45

out_1 = -x2;


function out_1 = sym_nested_rhs_1_1(x1,x2,p,x1_dev,x2_dev,p_dev)
%SYM_NESTED_RHS_1_1
%    OUT_1 = SYM_NESTED_RHS_1_1(X1,X2,P,X1_DEV,X2_DEV,P_DEV)

%    This function was generated by the Symbolic Math Toolbox version 7.1.
%    15-May-2017 17:54:45

out_1 = -x2_dev;


function out_1 = sym_nested_rhs_1_2(x1,x2,p,x1_dev,x2_dev,p_dev)
%SYM_NESTED_RHS_1_2
%    OUT_1 = SYM_NESTED_RHS_1_2(X1,X2,P,X1_DEV,X2_DEV,P_DEV)

%    This function was generated by the Symbolic Math Toolbox version 7.1.
%    15-May-2017 17:54:45

out_1 = 0.0;


function out_1 = sym_nested_rhs_1_3(x1,x2,p,x1_dev,x2_dev,p_dev)
%SYM_NESTED_RHS_1_3
%    OUT_1 = SYM_NESTED_RHS_1_3(X1,X2,P,X1_DEV,X2_DEV,P_DEV)

%    This function was generated by the Symbolic Math Toolbox version 7.1.
%    15-May-2017 17:54:46

out_1 = 0.0;


function out_1 = sym_nested_rhs_1_4(x1,x2,p,x1_dev,x2_dev,p_dev)
%SYM_NESTED_RHS_1_4
%    OUT_1 = SYM_NESTED_RHS_1_4(X1,X2,P,X1_DEV,X2_DEV,P_DEV)

%    This function was generated by the Symbolic Math Toolbox version 7.1.
%    15-May-2017 17:54:46

out_1 = 0.0;


function out_1 = sym_nested_rhs_1_5(x1,x2,p,x1_dev,x2_dev,p_dev)
%SYM_NESTED_RHS_1_5
%    OUT_1 = SYM_NESTED_RHS_1_5(X1,X2,P,X1_DEV,X2_DEV,P_DEV)

%    This function was generated by the Symbolic Math Toolbox version 7.1.
%    15-May-2017 17:54:46

out_1 = 0.0;


function out = sym_nested_tau_1_0(x1,x2,p,x1_dev,x2_dev,p_dev)
%SYM_NESTED_TAU_1_0
%    OUT = SYM_NESTED_TAU_1_0(X1,X2,P,X1_DEV,X2_DEV,P_DEV)

%    This function was generated by the Symbolic Math Toolbox version 7.1.
%    15-May-2017 17:54:47

out = p+x1;


function out = sym_nested_tau_1_1(x1,x2,p,x1_dev,x2_dev,p_dev)
%SYM_NESTED_TAU_1_1
%    OUT = SYM_NESTED_TAU_1_1(X1,X2,P,X1_DEV,X2_DEV,P_DEV)

%    This function was generated by the Symbolic Math Toolbox version 7.1.
%    15-May-2017 17:54:47

out = p_dev+x1_dev;


function out = sym_nested_tau_1_2(x1,x2,p,x1_dev,x2_dev,p_dev)
%SYM_NESTED_TAU_1_2
%    OUT = SYM_NESTED_TAU_1_2(X1,X2,P,X1_DEV,X2_DEV,P_DEV)

%    This function was generated by the Symbolic Math Toolbox version 7.1.
%    15-May-2017 17:54:47

out = 0.0;


function out = sym_nested_tau_1_3(x1,x2,p,x1_dev,x2_dev,p_dev)
%SYM_NESTED_TAU_1_3
%    OUT = SYM_NESTED_TAU_1_3(X1,X2,P,X1_DEV,X2_DEV,P_DEV)

%    This function was generated by the Symbolic Math Toolbox version 7.1.
%    15-May-2017 17:54:47

out = 0.0;


function out = sym_nested_tau_1_4(x1,x2,p,x1_dev,x2_dev,p_dev)
%SYM_NESTED_TAU_1_4
%    OUT = SYM_NESTED_TAU_1_4(X1,X2,P,X1_DEV,X2_DEV,P_DEV)

%    This function was generated by the Symbolic Math Toolbox version 7.1.
%    15-May-2017 17:54:47

out = 0.0;


function out = sym_nested_tau_1_5(x1,x2,p,x1_dev,x2_dev,p_dev)
%SYM_NESTED_TAU_1_5
%    OUT = SYM_NESTED_TAU_1_5(X1,X2,P,X1_DEV,X2_DEV,P_DEV)

%    This function was generated by the Symbolic Math Toolbox version 7.1.
%    15-May-2017 17:54:47

out = 0.0;


function out_1 = sym_nested_combined_1_0(x1,p,x1_dev_0,x1_dev_1,x1_dev_2,x1_dev_3,x1_dev_4,x1_dev_5)
%SYM_NESTED_COMBINED_1_0
%    OUT_1 = SYM_NESTED_COMBINED_1_0(X1,P,X1_DEV_0,X1_DEV_1,X1_DEV_2,X1_DEV_3,X1_DEV_4,X1_DEV_5)

%    This function was generated by the Symbolic Math Toolbox version 7.1.
%    15-May-2017 17:54:49

out_1 = -x1_dev_0(-p-x1(0.0));


function out_1 = sym_nested_combined_1_1(x1,p,x1_dev_0,x1_dev_1,x1_dev_2,x1_dev_3,x1_dev_4,x1_dev_5)
%SYM_NESTED_COMBINED_1_1
%    OUT_1 = SYM_NESTED_COMBINED_1_1(X1,P,X1_DEV_0,X1_DEV_1,X1_DEV_2,X1_DEV_3,X1_DEV_4,X1_DEV_5)

%    This function was generated by the Symbolic Math Toolbox version 7.1.
%    15-May-2017 17:54:49

out_1 = -x1_dev_0(-p-x1(0.0));


function out_1 = sym_nested_combined_1_2(x1,p,x1_dev_0,x1_dev_1,x1_dev_2,x1_dev_3,x1_dev_4,x1_dev_5)
%SYM_NESTED_COMBINED_1_2
%    OUT_1 = SYM_NESTED_COMBINED_1_2(X1,P,X1_DEV_0,X1_DEV_1,X1_DEV_2,X1_DEV_3,X1_DEV_4,X1_DEV_5)

%    This function was generated by the Symbolic Math Toolbox version 7.1.
%    15-May-2017 17:54:50

out_1 = x1_dev_0(0.0).*x1_dev_1(-p-x1(0.0)).*2.0;


function out_1 = sym_nested_combined_1_3(x1,p,x1_dev_0,x1_dev_1,x1_dev_2,x1_dev_3,x1_dev_4,x1_dev_5)
%SYM_NESTED_COMBINED_1_3
%    OUT_1 = SYM_NESTED_COMBINED_1_3(X1,P,X1_DEV_0,X1_DEV_1,X1_DEV_2,X1_DEV_3,X1_DEV_4,X1_DEV_5)

%    This function was generated by the Symbolic Math Toolbox version 7.1.
%    15-May-2017 17:54:50

t2 = x1_dev_0(0.0);
out_1 = t2.^2.*x1_dev_2(-p-x1(0.0)).*-3.0;


function out_1 = sym_nested_combined_1_4(x1,p,x1_dev_0,x1_dev_1,x1_dev_2,x1_dev_3,x1_dev_4,x1_dev_5)
%SYM_NESTED_COMBINED_1_4
%    OUT_1 = SYM_NESTED_COMBINED_1_4(X1,P,X1_DEV_0,X1_DEV_1,X1_DEV_2,X1_DEV_3,X1_DEV_4,X1_DEV_5)

%    This function was generated by the Symbolic Math Toolbox version 7.1.
%    15-May-2017 17:54:50

t2 = x1_dev_0(0.0);
t3 = t2.^2;
out_1 = t2.*t3.*x1_dev_3(-p-x1(0.0)).*4.0;


function out_1 = sym_nested_combined_1_5(x1,p,x1_dev_0,x1_dev_1,x1_dev_2,x1_dev_3,x1_dev_4,x1_dev_5)
%SYM_NESTED_COMBINED_1_5
%    OUT_1 = SYM_NESTED_COMBINED_1_5(X1,P,X1_DEV_0,X1_DEV_1,X1_DEV_2,X1_DEV_3,X1_DEV_4,X1_DEV_5)

%    This function was generated by the Symbolic Math Toolbox version 7.1.
%    15-May-2017 17:54:50

t2 = x1_dev_0(0.0);
t3 = t2.^2;
out_1 = t3.^2.*x1_dev_4(-p-x1(0.0)).*-5.0;

