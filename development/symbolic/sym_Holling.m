function varargout=sym_Holling(action,varargin)
%% Automatically generated with matlabFunction
% 
%#ok<*DEFNU,*INUSD,*INUSL>

switch action
  case 'ntau'
   varargout{1}=1;
   return
  case 'tp_del'
   varargout{1}=0;
   return
  case 'mf_dxlength'
   varargout{1}=0;
   return
end
ind=varargin{1};
order=varargin{2};
nout=varargin{3};
f=str2func(sprintf('sym_Holling_%s_%d_%d',action,ind,order));
varargout=cell(nout,1);
[varargout{:}]=f(varargin{4:end});



function [out_1,out_2] = sym_Holling_rhs_1_0(x1,y1,x2,y2,beta,tau,a,m,h,delta,x1_dev,y1_dev,x2_dev,y2_dev,beta_dev,tau_dev,a_dev,m_dev,h_dev,delta_dev)
%SYM_HOLLING_RHS_1_0
%    [OUT_1,OUT_2] = SYM_HOLLING_RHS_1_0(X1,Y1,X2,Y2,BETA,TAU,A,M,H,DELTA,X1_DEV,Y1_DEV,X2_DEV,Y2_DEV,BETA_DEV,TAU_DEV,A_DEV,M_DEV,H_DEV,DELTA_DEV)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    07-Mar-2017 19:15:56

out_1 = -h-(m+x1).*(m+x1-1.0)-(x1.*y1)./(x1+a.*y1);
if nargout > 1
    out_2 = delta.*y1.*(beta-y2./x2);
end


function [out_1,out_2] = sym_Holling_rhs_1_1(x1,y1,x2,y2,beta,tau,a,m,h,delta,x1_dev,y1_dev,x2_dev,y2_dev,beta_dev,tau_dev,a_dev,m_dev,h_dev,delta_dev)
%SYM_HOLLING_RHS_1_1
%    [OUT_1,OUT_2] = SYM_HOLLING_RHS_1_1(X1,Y1,X2,Y2,BETA,TAU,A,M,H,DELTA,X1_DEV,Y1_DEV,X2_DEV,Y2_DEV,BETA_DEV,TAU_DEV,A_DEV,M_DEV,H_DEV,DELTA_DEV)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    07-Mar-2017 19:15:59

t2 = m_dev+x1_dev;
t3 = a.*y1;
t4 = t3+x1;
t5 = 1.0./t4;
out_1 = -h_dev-t2.*(m+x1)-t2.*(m+x1-1.0)-t5.*x1.*y1_dev-t5.*x1_dev.*y1+1.0./t4.^2.*x1.*y1.*(x1_dev+a.*y1_dev+a_dev.*y1);
if nargout > 1
    t6 = 1.0./x2;
    t7 = beta-t6.*y2;
    out_2 = delta.*y1.*(beta_dev-t6.*y2_dev+1.0./x2.^2.*x2_dev.*y2)+delta_dev.*t7.*y1+delta.*t7.*y1_dev;
end


function [out_1,out_2] = sym_Holling_rhs_1_2(x1,y1,x2,y2,beta,tau,a,m,h,delta,x1_dev,y1_dev,x2_dev,y2_dev,beta_dev,tau_dev,a_dev,m_dev,h_dev,delta_dev)
%SYM_HOLLING_RHS_1_2
%    [OUT_1,OUT_2] = SYM_HOLLING_RHS_1_2(X1,Y1,X2,Y2,BETA,TAU,A,M,H,DELTA,X1_DEV,Y1_DEV,X2_DEV,Y2_DEV,BETA_DEV,TAU_DEV,A_DEV,M_DEV,H_DEV,DELTA_DEV)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    07-Mar-2017 19:16:06

t2 = m_dev+x1_dev;
t3 = a.*y1;
t4 = t3+x1;
t5 = 1.0./t4.^2;
t6 = a.*y1_dev;
t7 = a_dev.*y1;
t8 = t6+t7+x1_dev;
out_1 = t2.^2.*-2.0-(x1_dev.*y1_dev.*2.0)./t4+t5.*t8.*x1.*y1_dev.*2.0+t5.*t8.*x1_dev.*y1.*2.0-1.0./t4.^3.*t8.^2.*x1.*y1.*2.0+a_dev.*t5.*x1.*y1.*y1_dev.*2.0;
if nargout > 1
    t9 = 1.0./x2;
    t10 = 1.0./x2.^2;
    t11 = t10.*x2_dev.*y2;
    t12 = beta_dev+t11-t9.*y2_dev;
    out_2 = delta_dev.*y1_dev.*(beta-t9.*y2).*2.0+delta_dev.*t12.*y1.*2.0+delta.*t12.*y1_dev.*2.0-delta.*y1.*(1.0./x2.^3.*x2_dev.^2.*y2.*2.0-t10.*x2_dev.*y2_dev.*2.0);
end


function [out_1,out_2] = sym_Holling_rhs_1_3(x1,y1,x2,y2,beta,tau,a,m,h,delta,x1_dev,y1_dev,x2_dev,y2_dev,beta_dev,tau_dev,a_dev,m_dev,h_dev,delta_dev)
%SYM_HOLLING_RHS_1_3
%    [OUT_1,OUT_2] = SYM_HOLLING_RHS_1_3(X1,Y1,X2,Y2,BETA,TAU,A,M,H,DELTA,X1_DEV,Y1_DEV,X2_DEV,Y2_DEV,BETA_DEV,TAU_DEV,A_DEV,M_DEV,H_DEV,DELTA_DEV)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    07-Mar-2017 19:16:07

t2 = a.*y1;
t3 = t2+x1;
t4 = a.*y1_dev;
t5 = a_dev.*y1;
t6 = t4+t5+x1_dev;
t7 = t6.^2;
t8 = 1.0./t3.^3;
t9 = 1.0./t3.^2;
out_1 = t7.*t8.*x1.*y1_dev.*-6.0-t7.*t8.*x1_dev.*y1.*6.0+t6.*t9.*x1_dev.*y1_dev.*6.0+a_dev.*t9.*x1.*y1_dev.^2.*6.0+1.0./t3.^4.*t6.*t7.*x1.*y1.*6.0+a_dev.*t9.*x1_dev.*y1.*y1_dev.*6.0-a_dev.*t6.*t8.*x1.*y1.*y1_dev.*1.2e1;
if nargout > 1
    t10 = 1.0./x2.^2;
    t11 = 1.0./x2.^3;
    t12 = x2_dev.^2;
    t13 = t11.*t12.*y2.*2.0;
    t14 = t13-t10.*x2_dev.*y2_dev.*2.0;
    out_2 = delta_dev.*y1_dev.*(beta_dev-y2_dev./x2+t10.*x2_dev.*y2).*6.0-delta_dev.*t14.*y1.*3.0-delta.*t14.*y1_dev.*3.0-delta.*y1.*(t11.*t12.*y2_dev.*6.0-t12.*1.0./x2.^4.*x2_dev.*y2.*6.0);
end


function [out_1,out_2] = sym_Holling_rhs_1_4(x1,y1,x2,y2,beta,tau,a,m,h,delta,x1_dev,y1_dev,x2_dev,y2_dev,beta_dev,tau_dev,a_dev,m_dev,h_dev,delta_dev)
%SYM_HOLLING_RHS_1_4
%    [OUT_1,OUT_2] = SYM_HOLLING_RHS_1_4(X1,Y1,X2,Y2,BETA,TAU,A,M,H,DELTA,X1_DEV,Y1_DEV,X2_DEV,Y2_DEV,BETA_DEV,TAU_DEV,A_DEV,M_DEV,H_DEV,DELTA_DEV)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    07-Mar-2017 19:16:08

t6 = a.*y1_dev;
t7 = a_dev.*y1;
t2 = t6+t7+x1_dev;
t3 = t2.^2;
t4 = a.*y1;
t5 = t4+x1;
t8 = 1.0./t5.^4;
t9 = y1_dev.^2;
t10 = 1.0./t5.^3;
out_1 = t3.*t10.*x1_dev.*y1_dev.*-2.4e1+a_dev.*1.0./t5.^2.*t9.*x1_dev.*2.4e1-t3.^2.*1.0./t5.^5.*x1.*y1.*2.4e1-a_dev.*t2.*t9.*t10.*x1.*4.8e1+t2.*t3.*t8.*x1.*y1_dev.*2.4e1+t2.*t3.*t8.*x1_dev.*y1.*2.4e1-a_dev.^2.*t9.*t10.*x1.*y1.*2.4e1+a_dev.*t3.*t8.*x1.*y1.*y1_dev.*7.2e1-a_dev.*t2.*t10.*x1_dev.*y1.*y1_dev.*4.8e1;
if nargout > 1
    t11 = x2_dev.^2;
    t12 = 1.0./x2.^4;
    t13 = 1.0./x2.^3;
    t14 = t11.*t13.*y2_dev.*6.0;
    t15 = t14-t11.*t12.*x2_dev.*y2.*6.0;
    out_2 = -delta.*y1.*(t11.^2.*1.0./x2.^5.*y2.*2.4e1-t11.*t12.*x2_dev.*y2_dev.*2.4e1)+delta_dev.*y1_dev.*(1.0./x2.^2.*x2_dev.*y2_dev.*2.0-t11.*t13.*y2.*2.0).*1.2e1-delta_dev.*t15.*y1.*4.0-delta.*t15.*y1_dev.*4.0;
end


function [out_1,out_2] = sym_Holling_rhs_1_5(x1,y1,x2,y2,beta,tau,a,m,h,delta,x1_dev,y1_dev,x2_dev,y2_dev,beta_dev,tau_dev,a_dev,m_dev,h_dev,delta_dev)
%SYM_HOLLING_RHS_1_5
%    [OUT_1,OUT_2] = SYM_HOLLING_RHS_1_5(X1,Y1,X2,Y2,BETA,TAU,A,M,H,DELTA,X1_DEV,Y1_DEV,X2_DEV,Y2_DEV,BETA_DEV,TAU_DEV,A_DEV,M_DEV,H_DEV,DELTA_DEV)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    07-Mar-2017 19:16:08

t7 = a.*y1_dev;
t8 = a_dev.*y1;
t2 = t7+t8+x1_dev;
t3 = t2.^2;
t4 = t3.^2;
t5 = a.*y1;
t6 = t5+x1;
t9 = 1.0./t6.^5;
t10 = y1_dev.^2;
t11 = 1.0./t6.^4;
t12 = a_dev.^2;
t13 = 1.0./t6.^3;
out_1 = t4.*t9.*x1.*y1_dev.*-1.2e2-t4.*t9.*x1_dev.*y1.*1.2e2+t2.*t4.*1.0./t6.^6.*x1.*y1.*1.2e2+a_dev.*t3.*t10.*t11.*x1.*3.6e2-a_dev.*t2.*t10.*t13.*x1_dev.*2.4e2-t10.*t12.*t13.*x1.*y1_dev.*1.2e2-t10.*t12.*t13.*x1_dev.*y1.*1.2e2+t2.*t3.*t11.*x1_dev.*y1_dev.*1.2e2+a_dev.*t3.*t11.*x1_dev.*y1.*y1_dev.*3.6e2+t2.*t10.*t11.*t12.*x1.*y1.*3.6e2-a_dev.*t2.*t3.*t9.*x1.*y1.*y1_dev.*4.8e2;
if nargout > 1
    t14 = x2_dev.^2;
    t15 = t14.^2;
    t16 = 1.0./x2.^5;
    t17 = t15.*t16.*y2.*2.4e1;
    t18 = 1.0./x2.^4;
    t19 = t17-t14.*t18.*x2_dev.*y2_dev.*2.4e1;
    out_2 = delta_dev.*t19.*y1.*-5.0-delta.*t19.*y1_dev.*5.0-delta.*y1.*(t15.*t16.*y2_dev.*1.2e2-t15.*1.0./x2.^6.*x2_dev.*y2.*1.2e2)-delta_dev.*y1_dev.*(t14.*1.0./x2.^3.*y2_dev.*6.0-t14.*t18.*x2_dev.*y2.*6.0).*2.0e1;
end
