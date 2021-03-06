function varargout=sym_MackeyGlass_mf(action,varargin)
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
  case 'maxorder'
   varargout{1}=5;
   return
  case 'directional_derivative'
   varargout{1}=0;
   return
end
ind=varargin{1};
order=varargin{2};
nout=varargin{3};
f=str2func(sprintf('sym_MackeyGlass_mf_%s_%d_%d',action,ind,order));
varargout=cell(nout,1);
[varargout{:}]=f(varargin{4:end});




function out1 = sym_MackeyGlass_mf_rhs_1_0(x1,x2,beta,n,tau,gamma)
%SYM_MACKEYGLASS_MF_RHS_1_0
%    OUT1 = SYM_MACKEYGLASS_MF_RHS_1_0(X1,X2,BETA,N,TAU,GAMMA)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    30-Jan-2019 09:29:32

out1 = -gamma.*x1+(beta.*x2)./(x2.^n+1.0);


function out1 = sym_MackeyGlass_mf_rhs_1_1(x1,x2,beta,n,tau,gamma,x1_d,x2_d,beta_d,n_d,tau_d,gamma_d)
%SYM_MACKEYGLASS_MF_RHS_1_1
%    OUT1 = SYM_MACKEYGLASS_MF_RHS_1_1(X1,X2,BETA,N,TAU,GAMMA,X1_D,X2_D,BETA_D,N_D,TAU_D,GAMMA_D)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    30-Jan-2019 09:29:33

t2 = x2.^n;
t3 = t2+1.0;
t4 = 1.0./t3;
out1 = -gamma_d.*x1-gamma.*x1_d+beta_d.*t4.*x2+beta.*t4.*x2_d-beta.*1.0./t3.^2.*x2.*(n_d.*t2.*log(x2)+n.*x2.^(n-1.0).*x2_d);


function out1 = sym_MackeyGlass_mf_rhs_1_2(x1,x2,beta,n,tau,gamma,x1_d,x2_d,x1_d_d,x2_d_d,beta_d,n_d,tau_d,gamma_d,beta_d_d,n_d_d,tau_d_d,gamma_d_d)
%SYM_MACKEYGLASS_MF_RHS_1_2
%    OUT1 = SYM_MACKEYGLASS_MF_RHS_1_2(X1,X2,BETA,N,TAU,GAMMA,X1_D,X2_D,X1_D_D,X2_D_D,BETA_D,N_D,TAU_D,GAMMA_D,BETA_D_D,N_D_D,TAU_D_D,GAMMA_D_D)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    30-Jan-2019 09:29:33

t2 = x2.^n;
t3 = t2+1.0;
t4 = 1.0./t3;
t5 = n-1.0;
t6 = x2.^t5;
t7 = log(x2);
t8 = 1.0./t3.^2;
t9 = n.*t6.*x2_d_d;
t10 = n_d_d.*t2.*t7;
t11 = t9+t10;
t12 = n.*t6.*x2_d;
t13 = n_d.*t2.*t7;
t14 = t12+t13;
out1 = -gamma_d.*x1_d_d-gamma_d_d.*x1_d+beta_d.*t4.*x2_d_d+beta_d_d.*t4.*x2_d-beta_d.*t8.*t11.*x2-beta_d_d.*t8.*t14.*x2-beta.*t8.*t11.*x2_d-beta.*t8.*t14.*x2_d_d-beta.*t8.*x2.*(n.*x2_d.*(n_d_d.*t6.*t7+t5.*x2.^(n-2.0).*x2_d_d)+n_d.*t7.*t11+n_d_d.*t6.*x2_d+(n_d.*t2.*x2_d_d)./x2)+beta.*1.0./t3.^3.*t11.*t14.*x2.*2.0;


function out1 = sym_MackeyGlass_mf_rhs_1_3(x1,x2,beta,n,tau,gamma,x1_d,x2_d,x1_d_d,x2_d_d,x1_d_d_d,x2_d_d_d,beta_d,n_d,tau_d,gamma_d,beta_d_d,n_d_d,tau_d_d,gamma_d_d,beta_d_d_d,n_d_d_d,tau_d_d_d,gamma_d_d_d)
%SYM_MACKEYGLASS_MF_RHS_1_3
%    OUT1 = SYM_MACKEYGLASS_MF_RHS_1_3(X1,X2,BETA,N,TAU,GAMMA,X1_D,X2_D,X1_D_D,X2_D_D,X1_D_D_D,X2_D_D_D,BETA_D,N_D,TAU_D,GAMMA_D,BETA_D_D,N_D_D,TAU_D_D,GAMMA_D_D,BETA_D_D_D,N_D_D_D,TAU_D_D_D,GAMMA_D_D_D)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    30-Jan-2019 09:29:34

t2 = n-1.0;
t3 = n-2.0;
t4 = x2.^t3;
t5 = x2.^t2;
t6 = log(x2);
t7 = t2.*t4.*x2_d_d_d;
t8 = n_d_d_d.*t5.*t6;
t9 = t7+t8;
t10 = x2.^n;
t11 = 1.0./x2;
t12 = n.*t5.*x2_d_d_d;
t13 = n_d_d_d.*t6.*t10;
t14 = t12+t13;
t15 = t10+1.0;
t16 = 1.0./t15.^2;
t17 = t2.*t4.*x2_d_d;
t18 = n_d_d.*t5.*t6;
t19 = t17+t18;
t20 = n.*t5.*x2_d_d;
t21 = n_d_d.*t6.*t10;
t22 = t20+t21;
t23 = n.*t9.*x2_d_d;
t24 = n_d_d_d.*t5.*x2_d_d;
t25 = n_d_d.*t6.*t14;
t26 = n_d_d.*t10.*t11.*x2_d_d_d;
t27 = t23+t24+t25+t26;
t28 = n.*t19.*x2_d;
t29 = n_d_d.*t5.*x2_d;
t30 = n_d.*t6.*t22;
t31 = n_d.*t10.*t11.*x2_d_d;
t32 = t28+t29+t30+t31;
t33 = n.*t9.*x2_d;
t34 = n_d_d_d.*t5.*x2_d;
t35 = n_d.*t6.*t14;
t36 = n_d.*t10.*t11.*x2_d_d_d;
t37 = t33+t34+t35+t36;
t38 = n.*t5.*x2_d;
t39 = n_d.*t6.*t10;
t40 = t38+t39;
t41 = 1.0./t15.^3;
out1 = -beta_d.*t16.*t27.*x2-beta_d_d.*t16.*t37.*x2-beta_d_d_d.*t16.*t32.*x2-beta_d.*t14.*t16.*x2_d_d-beta_d_d.*t14.*t16.*x2_d-beta.*t16.*t27.*x2_d-beta_d.*t16.*t22.*x2_d_d_d-beta_d_d_d.*t16.*t22.*x2_d-beta.*t16.*t37.*x2_d_d-beta.*t16.*t32.*x2_d_d_d-beta_d_d.*t16.*t40.*x2_d_d_d-beta_d_d_d.*t16.*t40.*x2_d_d-beta.*t16.*x2.*(n.*x2_d.*(t2.*x2_d_d.*(n_d_d_d.*t4.*t6+t3.*x2.^(n-3.0).*x2_d_d_d)+n_d_d.*t6.*t9+n_d_d_d.*t4.*x2_d_d+n_d_d.*t5.*t11.*x2_d_d_d)+n_d.*t6.*t27+n_d_d.*t9.*x2_d+n_d_d_d.*t19.*x2_d+n_d.*t11.*t14.*x2_d_d+n_d.*t11.*t22.*x2_d_d_d-n_d.*t10.*1.0./x2.^2.*x2_d_d.*x2_d_d_d)+beta_d.*t14.*t22.*t41.*x2.*2.0+beta.*t14.*t32.*t41.*x2.*2.0+beta_d_d.*t14.*t40.*t41.*x2.*2.0+beta.*t22.*t37.*t41.*x2.*2.0+beta.*t27.*t40.*t41.*x2.*2.0+beta_d_d_d.*t22.*t40.*t41.*x2.*2.0+beta.*t14.*t22.*t41.*x2_d.*2.0+beta.*t14.*t40.*t41.*x2_d_d.*2.0+beta.*t22.*t40.*t41.*x2_d_d_d.*2.0-beta.*t14.*1.0./t15.^4.*t22.*t40.*x2.*6.0;


function out1 = sym_MackeyGlass_mf_rhs_1_4(x1,x2,beta,n,tau,gamma,x1_d,x2_d,x1_d_d,x2_d_d,x1_d_d_d,x2_d_d_d,x1_d_d_d_d,x2_d_d_d_d,beta_d,n_d,tau_d,gamma_d,beta_d_d,n_d_d,tau_d_d,gamma_d_d,beta_d_d_d,n_d_d_d,tau_d_d_d,gamma_d_d_d,beta_d_d_d_d,n_d_d_d_d,tau_d_d_d_d,gamma_d_d_d_d)
%SYM_MACKEYGLASS_MF_RHS_1_4
%    OUT1 = SYM_MACKEYGLASS_MF_RHS_1_4(X1,X2,BETA,N,TAU,GAMMA,X1_D,X2_D,X1_D_D,X2_D_D,X1_D_D_D,X2_D_D_D,X1_D_D_D_D,X2_D_D_D_D,BETA_D,N_D,TAU_D,GAMMA_D,BETA_D_D,N_D_D,TAU_D_D,GAMMA_D_D,BETA_D_D_D,N_D_D_D,TAU_D_D_D,GAMMA_D_D_D,BETA_D_D_D_D,N_D_D_D_D,TAU_D_D_D_D,GAMMA_D_D_D_D)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    30-Jan-2019 09:29:40

t2 = n-1.0;
t3 = n-2.0;
t4 = x2.^t3;
t5 = x2.^t2;
t6 = log(x2);
t7 = t2.*t4.*x2_d_d_d;
t8 = n_d_d_d.*t5.*t6;
t9 = t7+t8;
t10 = x2.^n;
t11 = 1.0./x2;
t12 = n.*t5.*x2_d_d_d;
t13 = n_d_d_d.*t6.*t10;
t14 = t12+t13;
t15 = t10+1.0;
t16 = 1.0./t15.^2;
t17 = t2.*t4.*x2_d_d;
t18 = n_d_d.*t5.*t6;
t19 = t17+t18;
t20 = t2.*t4.*x2_d_d_d_d;
t21 = n_d_d_d_d.*t5.*t6;
t22 = t20+t21;
t23 = n-3.0;
t24 = x2.^t23;
t25 = n.*t5.*x2_d_d;
t26 = n_d_d.*t6.*t10;
t27 = t25+t26;
t28 = n.*t5.*x2_d_d_d_d;
t29 = n_d_d_d_d.*t6.*t10;
t30 = t28+t29;
t31 = 1.0./x2.^2;
t32 = t3.*t24.*x2_d_d_d_d;
t33 = n_d_d_d_d.*t4.*t6;
t34 = t32+t33;
t35 = n.*t22.*x2_d_d_d;
t36 = n_d_d_d_d.*t5.*x2_d_d_d;
t37 = n_d_d_d.*t6.*t30;
t38 = n_d_d_d.*t10.*t11.*x2_d_d_d_d;
t39 = t35+t36+t37+t38;
t40 = t2.*t34.*x2_d_d_d;
t41 = n_d_d_d.*t6.*t22;
t42 = n_d_d_d_d.*t4.*x2_d_d_d;
t43 = n_d_d_d.*t5.*t11.*x2_d_d_d_d;
t44 = t40+t41+t42+t43;
t45 = n_d_d_d.*t19.*x2_d;
t46 = n_d_d.*t9.*x2_d;
t47 = n.*t9.*x2_d_d;
t48 = n_d_d_d.*t5.*x2_d_d;
t49 = n_d_d.*t6.*t14;
t50 = n_d_d.*t10.*t11.*x2_d_d_d;
t51 = t47+t48+t49+t50;
t52 = n_d.*t6.*t51;
t53 = t3.*t24.*x2_d_d_d;
t54 = n_d_d_d.*t4.*t6;
t55 = t53+t54;
t56 = t2.*t55.*x2_d_d;
t57 = n_d_d.*t6.*t9;
t58 = n_d_d_d.*t4.*x2_d_d;
t59 = n_d_d.*t5.*t11.*x2_d_d_d;
t60 = t56+t57+t58+t59;
t61 = n.*t60.*x2_d;
t62 = n_d.*t11.*t27.*x2_d_d_d;
t63 = n_d.*t11.*t14.*x2_d_d;
t113 = n_d.*t10.*t31.*x2_d_d.*x2_d_d_d;
t64 = t45+t46+t52+t61+t62+t63-t113;
t65 = n_d_d_d_d.*t19.*x2_d;
t66 = n_d_d.*t22.*x2_d;
t67 = n.*t22.*x2_d_d;
t68 = n_d_d_d_d.*t5.*x2_d_d;
t69 = n_d_d.*t6.*t30;
t70 = n_d_d.*t10.*t11.*x2_d_d_d_d;
t71 = t67+t68+t69+t70;
t72 = n_d.*t6.*t71;
t73 = t2.*t34.*x2_d_d;
t74 = n_d_d.*t6.*t22;
t75 = n_d_d_d_d.*t4.*x2_d_d;
t76 = n_d_d.*t5.*t11.*x2_d_d_d_d;
t77 = t73+t74+t75+t76;
t78 = n.*t77.*x2_d;
t79 = n_d.*t11.*t27.*x2_d_d_d_d;
t80 = n_d.*t11.*t30.*x2_d_d;
t114 = n_d.*t10.*t31.*x2_d_d.*x2_d_d_d_d;
t81 = t65+t66+t72+t78+t79+t80-t114;
t82 = n_d_d_d_d.*t9.*x2_d;
t83 = n_d_d_d.*t22.*x2_d;
t84 = n_d.*t6.*t39;
t85 = n.*t44.*x2_d;
t86 = n_d.*t11.*t14.*x2_d_d_d_d;
t87 = n_d.*t11.*t30.*x2_d_d_d;
t115 = n_d.*t10.*t31.*x2_d_d_d.*x2_d_d_d_d;
t88 = t82+t83+t84+t85+t86+t87-t115;
t89 = n_d_d_d_d.*t9.*x2_d_d;
t90 = n_d_d_d.*t22.*x2_d_d;
t91 = n_d_d.*t6.*t39;
t92 = n.*t44.*x2_d_d;
t93 = n_d_d.*t11.*t14.*x2_d_d_d_d;
t94 = n_d_d.*t11.*t30.*x2_d_d_d;
t111 = n_d_d.*t10.*t31.*x2_d_d_d.*x2_d_d_d_d;
t95 = t89+t90+t91+t92+t93+t94-t111;
t96 = n.*t19.*x2_d;
t97 = n_d_d.*t5.*x2_d;
t98 = n_d.*t6.*t27;
t99 = n_d.*t10.*t11.*x2_d_d;
t100 = t96+t97+t98+t99;
t101 = n.*t9.*x2_d;
t102 = n_d_d_d.*t5.*x2_d;
t103 = n_d.*t6.*t14;
t104 = n_d.*t10.*t11.*x2_d_d_d;
t105 = t101+t102+t103+t104;
t106 = n.*t22.*x2_d;
t107 = n_d_d_d_d.*t5.*x2_d;
t108 = n_d.*t6.*t30;
t109 = n_d.*t10.*t11.*x2_d_d_d_d;
t110 = t106+t107+t108+t109;
t112 = 1.0./t15.^3;
t116 = n.*t5.*x2_d;
t117 = n_d.*t6.*t10;
t118 = t116+t117;
t119 = 1.0./t15.^4;
out1 = -beta_d.*t16.*t95.*x2-beta_d_d.*t16.*t88.*x2-beta_d_d_d.*t16.*t81.*x2-beta_d_d_d_d.*t16.*t64.*x2-beta_d.*t16.*t39.*x2_d_d-beta_d_d.*t16.*t39.*x2_d-beta.*t16.*t95.*x2_d-beta_d.*t16.*t71.*x2_d_d_d-beta_d_d_d.*t16.*t71.*x2_d-beta.*t16.*t88.*x2_d_d-beta_d.*t16.*t51.*x2_d_d_d_d-beta_d_d_d_d.*t16.*t51.*x2_d-beta.*t16.*t81.*x2_d_d_d-beta_d_d.*t16.*t110.*x2_d_d_d-beta_d_d_d.*t16.*t110.*x2_d_d-beta.*t16.*t64.*x2_d_d_d_d-beta_d_d.*t16.*t105.*x2_d_d_d_d-beta_d_d_d_d.*t16.*t105.*x2_d_d-beta_d_d_d.*t16.*t100.*x2_d_d_d_d-beta_d_d_d_d.*t16.*t100.*x2_d_d_d-beta.*t16.*x2.*(n.*x2_d.*(t2.*x2_d_d.*(t3.*x2_d_d_d.*(n_d_d_d_d.*t6.*t24+t23.*x2.^(n-4.0).*x2_d_d_d_d)+n_d_d_d.*t6.*t34+n_d_d_d_d.*t24.*x2_d_d_d+n_d_d_d.*t4.*t11.*x2_d_d_d_d)+n_d_d.*t6.*t44+n_d_d_d.*t34.*x2_d_d+n_d_d_d_d.*t55.*x2_d_d+n_d_d.*t11.*t22.*x2_d_d_d+n_d_d.*t9.*t11.*x2_d_d_d_d-n_d_d.*t5.*t31.*x2_d_d_d.*x2_d_d_d_d)+n_d.*t6.*t95+n_d_d.*t44.*x2_d+n_d_d_d.*t77.*x2_d+n_d_d_d_d.*t60.*x2_d+n_d.*t11.*t39.*x2_d_d+n_d.*t11.*t71.*x2_d_d_d+n_d.*t11.*t51.*x2_d_d_d_d-n_d.*t30.*t31.*x2_d_d.*x2_d_d_d-n_d.*t14.*t31.*x2_d_d.*x2_d_d_d_d-n_d.*t27.*t31.*x2_d_d_d.*x2_d_d_d_d+n_d.*t10.*1.0./x2.^3.*x2_d_d.*x2_d_d_d.*x2_d_d_d_d.*2.0)+beta_d.*t27.*t39.*t112.*x2.*2.0+beta_d.*t30.*t51.*t112.*x2.*2.0+beta_d.*t14.*t71.*t112.*x2.*2.0+beta.*t30.*t64.*t112.*x2.*2.0+beta.*t14.*t81.*t112.*x2.*2.0+beta.*t27.*t88.*t112.*x2.*2.0+beta_d_d.*t14.*t110.*t112.*x2.*2.0+beta_d_d.*t30.*t105.*t112.*x2.*2.0+beta.*t39.*t100.*t112.*x2.*2.0+beta_d_d.*t39.*t112.*t118.*x2.*2.0+beta.*t51.*t110.*t112.*x2.*2.0+beta.*t71.*t105.*t112.*x2.*2.0+beta.*t95.*t112.*t118.*x2.*2.0+beta_d_d_d.*t30.*t100.*t112.*x2.*2.0+beta_d_d_d.*t27.*t110.*t112.*x2.*2.0+beta_d_d_d.*t71.*t112.*t118.*x2.*2.0+beta_d_d_d_d.*t14.*t100.*t112.*x2.*2.0+beta_d_d_d_d.*t27.*t105.*t112.*x2.*2.0+beta_d_d_d_d.*t51.*t112.*t118.*x2.*2.0+beta_d.*t14.*t30.*t112.*x2_d_d.*2.0+beta_d_d.*t14.*t30.*t112.*x2_d.*2.0+beta.*t27.*t39.*t112.*x2_d.*2.0+beta.*t30.*t51.*t112.*x2_d.*2.0+beta.*t14.*t71.*t112.*x2_d.*2.0+beta_d.*t27.*t30.*t112.*x2_d_d_d.*2.0+beta_d_d_d.*t27.*t30.*t112.*x2_d.*2.0+beta.*t14.*t110.*t112.*x2_d_d.*2.0+beta.*t30.*t105.*t112.*x2_d_d.*2.0+beta.*t39.*t112.*t118.*x2_d_d.*2.0+beta_d.*t14.*t27.*t112.*x2_d_d_d_d.*2.0+beta_d_d_d_d.*t14.*t27.*t112.*x2_d.*2.0+beta.*t30.*t100.*t112.*x2_d_d_d.*2.0+beta.*t27.*t110.*t112.*x2_d_d_d.*2.0+beta_d_d.*t30.*t112.*t118.*x2_d_d_d.*2.0+beta_d_d_d.*t30.*t112.*t118.*x2_d_d.*2.0+beta.*t71.*t112.*t118.*x2_d_d_d.*2.0+beta.*t14.*t100.*t112.*x2_d_d_d_d.*2.0+beta_d_d.*t14.*t112.*t118.*x2_d_d_d_d.*2.0+beta_d_d_d_d.*t14.*t112.*t118.*x2_d_d.*2.0+beta.*t27.*t105.*t112.*x2_d_d_d_d.*2.0+beta.*t51.*t112.*t118.*x2_d_d_d_d.*2.0+beta_d_d_d.*t27.*t112.*t118.*x2_d_d_d_d.*2.0+beta_d_d_d_d.*t27.*t112.*t118.*x2_d_d_d.*2.0-beta_d.*t14.*t27.*t30.*t119.*x2.*6.0-beta.*t14.*t30.*t100.*t119.*x2.*6.0-beta.*t14.*t27.*t110.*t119.*x2.*6.0-beta_d_d.*t14.*t30.*t118.*t119.*x2.*6.0-beta.*t27.*t30.*t105.*t119.*x2.*6.0-beta.*t27.*t39.*t118.*t119.*x2.*6.0-beta.*t30.*t51.*t118.*t119.*x2.*6.0-beta.*t14.*t71.*t118.*t119.*x2.*6.0-beta_d_d_d.*t27.*t30.*t118.*t119.*x2.*6.0-beta_d_d_d_d.*t14.*t27.*t118.*t119.*x2.*6.0-beta.*t14.*t27.*t30.*t119.*x2_d.*6.0-beta.*t14.*t30.*t118.*t119.*x2_d_d.*6.0-beta.*t27.*t30.*t118.*t119.*x2_d_d_d.*6.0-beta.*t14.*t27.*t118.*t119.*x2_d_d_d_d.*6.0+beta.*t14.*1.0./t15.^5.*t27.*t30.*t118.*x2.*2.4e1;


function out1 = sym_MackeyGlass_mf_rhs_1_5(x1,x2,beta,n,tau,gamma,x1_d,x2_d,x1_d_d,x2_d_d,x1_d_d_d,x2_d_d_d,x1_d_d_d_d,x2_d_d_d_d,x1_d_d_d_d_d,x2_d_d_d_d_d,beta_d,n_d,tau_d,gamma_d,beta_d_d,n_d_d,tau_d_d,gamma_d_d,beta_d_d_d,n_d_d_d,tau_d_d_d,gamma_d_d_d,beta_d_d_d_d,n_d_d_d_d,tau_d_d_d_d,gamma_d_d_d_d,beta_d_d_d_d_d,n_d_d_d_d_d,tau_d_d_d_d_d,gamma_d_d_d_d_d)
%SYM_MACKEYGLASS_MF_RHS_1_5
%    OUT1 = SYM_MACKEYGLASS_MF_RHS_1_5(X1,X2,BETA,N,TAU,GAMMA,X1_D,X2_D,X1_D_D,X2_D_D,X1_D_D_D,X2_D_D_D,X1_D_D_D_D,X2_D_D_D_D,X1_D_D_D_D_D,X2_D_D_D_D_D,BETA_D,N_D,TAU_D,GAMMA_D,BETA_D_D,N_D_D,TAU_D_D,GAMMA_D_D,BETA_D_D_D,N_D_D_D,TAU_D_D_D,GAMMA_D_D_D,BETA_D_D_D_D,N_D_D_D_D,TAU_D_D_D_D,GAMMA_D_D_D_D,BETA_D_D_D_D_D,N_D_D_D_D_D,TAU_D_D_D_D_D,GAMMA_D_D_D_D_D)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    30-Jan-2019 09:31:13

t2 = n-1.0;
t3 = n-2.0;
t4 = x2.^t3;
t5 = x2.^t2;
t6 = log(x2);
t7 = t2.*t4.*x2_d_d_d;
t8 = n_d_d_d.*t5.*t6;
t9 = t7+t8;
t10 = x2.^n;
t11 = 1.0./x2;
t12 = n.*t5.*x2_d_d_d;
t13 = n_d_d_d.*t6.*t10;
t14 = t12+t13;
t15 = t10+1.0;
t16 = 1.0./t15.^2;
t17 = t2.*t4.*x2_d_d;
t18 = n_d_d.*t5.*t6;
t19 = t17+t18;
t20 = n_d_d_d.*t19.*x2_d;
t21 = n_d_d.*t9.*x2_d;
t22 = n.*t9.*x2_d_d;
t23 = n_d_d_d.*t5.*x2_d_d;
t24 = n_d_d.*t6.*t14;
t25 = n_d_d.*t10.*t11.*x2_d_d_d;
t26 = t22+t23+t24+t25;
t27 = n_d.*t6.*t26;
t28 = n-3.0;
t29 = x2.^t28;
t30 = t3.*t29.*x2_d_d_d;
t31 = n_d_d_d.*t4.*t6;
t32 = t30+t31;
t33 = t2.*t32.*x2_d_d;
t34 = n_d_d.*t6.*t9;
t35 = n_d_d_d.*t4.*x2_d_d;
t36 = n_d_d.*t5.*t11.*x2_d_d_d;
t37 = t33+t34+t35+t36;
t38 = n.*t37.*x2_d;
t39 = n.*t5.*x2_d_d;
t40 = n_d_d.*t6.*t10;
t41 = t39+t40;
t42 = n_d.*t11.*t41.*x2_d_d_d;
t43 = n_d.*t11.*t14.*x2_d_d;
t44 = 1.0./x2.^2;
t311 = n_d.*t10.*t44.*x2_d_d.*x2_d_d_d;
t45 = t20+t21+t27+t38+t42+t43-t311;
t46 = t2.*t4.*x2_d_d_d_d;
t47 = n_d_d_d_d.*t5.*t6;
t48 = t46+t47;
t49 = n.*t5.*x2_d_d_d_d;
t50 = n_d_d_d_d.*t6.*t10;
t51 = t49+t50;
t52 = n_d_d_d_d.*t19.*x2_d;
t53 = n_d_d.*t48.*x2_d;
t54 = n.*t48.*x2_d_d;
t55 = n_d_d_d_d.*t5.*x2_d_d;
t56 = n_d_d.*t6.*t51;
t57 = n_d_d.*t10.*t11.*x2_d_d_d_d;
t58 = t54+t55+t56+t57;
t59 = n_d.*t6.*t58;
t60 = t3.*t29.*x2_d_d_d_d;
t61 = n_d_d_d_d.*t4.*t6;
t62 = t60+t61;
t63 = t2.*t62.*x2_d_d;
t64 = n_d_d.*t6.*t48;
t65 = n_d_d_d_d.*t4.*x2_d_d;
t66 = n_d_d.*t5.*t11.*x2_d_d_d_d;
t67 = t63+t64+t65+t66;
t68 = n.*t67.*x2_d;
t69 = n_d.*t11.*t41.*x2_d_d_d_d;
t70 = n_d.*t11.*t51.*x2_d_d;
t312 = n_d.*t10.*t44.*x2_d_d.*x2_d_d_d_d;
t71 = t52+t53+t59+t68+t69+t70-t312;
t72 = n_d_d_d_d.*t9.*x2_d;
t73 = n_d_d_d.*t48.*x2_d;
t74 = n.*t48.*x2_d_d_d;
t75 = n_d_d_d_d.*t5.*x2_d_d_d;
t76 = n_d_d_d.*t6.*t51;
t77 = n_d_d_d.*t10.*t11.*x2_d_d_d_d;
t78 = t74+t75+t76+t77;
t79 = n_d.*t6.*t78;
t80 = t2.*t62.*x2_d_d_d;
t81 = n_d_d_d.*t6.*t48;
t82 = n_d_d_d_d.*t4.*x2_d_d_d;
t83 = n_d_d_d.*t5.*t11.*x2_d_d_d_d;
t84 = t80+t81+t82+t83;
t85 = n.*t84.*x2_d;
t86 = n_d.*t11.*t14.*x2_d_d_d_d;
t87 = n_d.*t11.*t51.*x2_d_d_d;
t313 = n_d.*t10.*t44.*x2_d_d_d.*x2_d_d_d_d;
t88 = t72+t73+t79+t85+t86+t87-t313;
t89 = t2.*t4.*x2_d_d_d_d_d;
t90 = n_d_d_d_d_d.*t5.*t6;
t91 = t89+t90;
t92 = n.*t5.*x2_d_d_d_d_d;
t93 = n_d_d_d_d_d.*t6.*t10;
t94 = t92+t93;
t95 = n_d_d_d_d_d.*t19.*x2_d;
t96 = n_d_d.*t91.*x2_d;
t97 = n.*t91.*x2_d_d;
t98 = n_d_d_d_d_d.*t5.*x2_d_d;
t99 = n_d_d.*t6.*t94;
t100 = n_d_d.*t10.*t11.*x2_d_d_d_d_d;
t101 = t97+t98+t99+t100;
t102 = n_d.*t6.*t101;
t103 = t3.*t29.*x2_d_d_d_d_d;
t104 = n_d_d_d_d_d.*t4.*t6;
t105 = t103+t104;
t106 = t2.*t105.*x2_d_d;
t107 = n_d_d.*t6.*t91;
t108 = n_d_d_d_d_d.*t4.*x2_d_d;
t109 = n_d_d.*t5.*t11.*x2_d_d_d_d_d;
t110 = t106+t107+t108+t109;
t111 = n.*t110.*x2_d;
t112 = n_d.*t11.*t41.*x2_d_d_d_d_d;
t113 = n_d.*t11.*t94.*x2_d_d;
t314 = n_d.*t10.*t44.*x2_d_d.*x2_d_d_d_d_d;
t114 = t95+t96+t102+t111+t112+t113-t314;
t115 = n_d_d_d_d.*t9.*x2_d_d;
t116 = n_d_d_d.*t48.*x2_d_d;
t117 = n_d_d.*t6.*t78;
t118 = n.*t84.*x2_d_d;
t119 = n_d_d.*t11.*t14.*x2_d_d_d_d;
t120 = n_d_d.*t11.*t51.*x2_d_d_d;
t210 = n_d_d.*t10.*t44.*x2_d_d_d.*x2_d_d_d_d;
t121 = t115+t116+t117+t118+t119+t120-t210;
t122 = n_d_d_d_d_d.*t9.*x2_d;
t123 = n_d_d_d.*t91.*x2_d;
t124 = n.*t91.*x2_d_d_d;
t125 = n_d_d_d_d_d.*t5.*x2_d_d_d;
t126 = n_d_d_d.*t6.*t94;
t127 = n_d_d_d.*t10.*t11.*x2_d_d_d_d_d;
t128 = t124+t125+t126+t127;
t129 = n_d.*t6.*t128;
t130 = t2.*t105.*x2_d_d_d;
t131 = n_d_d_d.*t6.*t91;
t132 = n_d_d_d_d_d.*t4.*x2_d_d_d;
t133 = n_d_d_d.*t5.*t11.*x2_d_d_d_d_d;
t134 = t130+t131+t132+t133;
t135 = n.*t134.*x2_d;
t136 = n_d.*t11.*t14.*x2_d_d_d_d_d;
t137 = n_d.*t11.*t94.*x2_d_d_d;
t315 = n_d.*t10.*t44.*x2_d_d_d.*x2_d_d_d_d_d;
t138 = t122+t123+t129+t135+t136+t137-t315;
t139 = n_d_d_d_d_d.*t9.*x2_d_d;
t140 = n_d_d_d.*t91.*x2_d_d;
t141 = n_d_d.*t6.*t128;
t142 = n.*t134.*x2_d_d;
t143 = n_d_d.*t11.*t14.*x2_d_d_d_d_d;
t144 = n_d_d.*t11.*t94.*x2_d_d_d;
t211 = n_d_d.*t10.*t44.*x2_d_d_d.*x2_d_d_d_d_d;
t145 = t139+t140+t141+t142+t143+t144-t211;
t146 = n_d_d_d_d_d.*t48.*x2_d;
t147 = n_d_d_d_d.*t91.*x2_d;
t148 = n.*t91.*x2_d_d_d_d;
t149 = n_d_d_d_d_d.*t5.*x2_d_d_d_d;
t150 = n_d_d_d_d.*t6.*t94;
t151 = n_d_d_d_d.*t10.*t11.*x2_d_d_d_d_d;
t152 = t148+t149+t150+t151;
t153 = n_d.*t6.*t152;
t154 = t2.*t105.*x2_d_d_d_d;
t155 = n_d_d_d_d.*t6.*t91;
t156 = n_d_d_d_d_d.*t4.*x2_d_d_d_d;
t157 = n_d_d_d_d.*t5.*t11.*x2_d_d_d_d_d;
t158 = t154+t155+t156+t157;
t159 = n.*t158.*x2_d;
t160 = n_d.*t11.*t51.*x2_d_d_d_d_d;
t161 = n_d.*t11.*t94.*x2_d_d_d_d;
t319 = n_d.*t10.*t44.*x2_d_d_d_d.*x2_d_d_d_d_d;
t162 = t146+t147+t153+t159+t160+t161-t319;
t163 = n_d_d_d_d_d.*t48.*x2_d_d;
t164 = n_d_d_d_d.*t91.*x2_d_d;
t165 = n_d_d.*t6.*t152;
t166 = n.*t158.*x2_d_d;
t167 = n_d_d.*t11.*t51.*x2_d_d_d_d_d;
t168 = n_d_d.*t11.*t94.*x2_d_d_d_d;
t212 = n_d_d.*t10.*t44.*x2_d_d_d_d.*x2_d_d_d_d_d;
t169 = t163+t164+t165+t166+t167+t168-t212;
t170 = n_d_d_d_d_d.*t48.*x2_d_d_d;
t171 = n_d_d_d_d.*t91.*x2_d_d_d;
t172 = n_d_d_d.*t6.*t152;
t173 = n.*t158.*x2_d_d_d;
t174 = n_d_d_d.*t11.*t51.*x2_d_d_d_d_d;
t175 = n_d_d_d.*t11.*t94.*x2_d_d_d_d;
t177 = n_d_d_d.*t10.*t44.*x2_d_d_d_d.*x2_d_d_d_d_d;
t176 = t170+t171+t172+t173+t174+t175-t177;
t178 = n-4.0;
t179 = x2.^t178;
t180 = t28.*t179.*x2_d_d_d_d_d;
t181 = n_d_d_d_d_d.*t6.*t29;
t182 = t180+t181;
t183 = t3.*t182.*x2_d_d_d_d;
t184 = n_d_d_d_d.*t6.*t105;
t185 = n_d_d_d_d_d.*t29.*x2_d_d_d_d;
t186 = n_d_d_d_d.*t4.*t11.*x2_d_d_d_d_d;
t187 = t183+t184+t185+t186;
t188 = t2.*t187.*x2_d_d_d;
t189 = n_d_d_d.*t6.*t158;
t190 = n_d_d_d_d_d.*t62.*x2_d_d_d;
t191 = n_d_d_d_d.*t105.*x2_d_d_d;
t192 = n_d_d_d.*t11.*t48.*x2_d_d_d_d_d;
t193 = n_d_d_d.*t11.*t91.*x2_d_d_d_d;
t198 = n_d_d_d.*t5.*t44.*x2_d_d_d_d.*x2_d_d_d_d_d;
t194 = t188+t189+t190+t191+t192+t193-t198;
t195 = t28.*t179.*x2_d_d_d_d;
t196 = n_d_d_d_d.*t6.*t29;
t197 = t195+t196;
t199 = t3.*t197.*x2_d_d_d;
t200 = n_d_d_d.*t6.*t62;
t201 = n_d_d_d_d.*t29.*x2_d_d_d;
t202 = n_d_d_d.*t4.*t11.*x2_d_d_d_d;
t203 = t199+t200+t201+t202;
t204 = t3.*t182.*x2_d_d_d;
t205 = n_d_d_d.*t6.*t105;
t206 = n_d_d_d_d_d.*t29.*x2_d_d_d;
t207 = n_d_d_d.*t4.*t11.*x2_d_d_d_d_d;
t208 = t204+t205+t206+t207;
t209 = 1.0./x2.^3;
t213 = t2.*t203.*x2_d_d;
t214 = n_d_d.*t6.*t84;
t215 = n_d_d_d_d.*t32.*x2_d_d;
t216 = n_d_d_d.*t62.*x2_d_d;
t217 = n_d_d.*t9.*t11.*x2_d_d_d_d;
t218 = n_d_d.*t11.*t48.*x2_d_d_d;
t238 = n_d_d.*t5.*t44.*x2_d_d_d.*x2_d_d_d_d;
t219 = t213+t214+t215+t216+t217+t218-t238;
t220 = t2.*t208.*x2_d_d;
t221 = n_d_d.*t6.*t134;
t222 = n_d_d_d_d_d.*t32.*x2_d_d;
t223 = n_d_d_d.*t105.*x2_d_d;
t224 = n_d_d.*t9.*t11.*x2_d_d_d_d_d;
t225 = n_d_d.*t11.*t91.*x2_d_d_d;
t259 = n_d_d.*t5.*t44.*x2_d_d_d.*x2_d_d_d_d_d;
t226 = t220+t221+t222+t223+t224+t225-t259;
t227 = t2.*t187.*x2_d_d;
t228 = n_d_d.*t6.*t158;
t229 = n_d_d_d_d_d.*t62.*x2_d_d;
t230 = n_d_d_d_d.*t105.*x2_d_d;
t231 = n_d_d.*t11.*t48.*x2_d_d_d_d_d;
t232 = n_d_d.*t11.*t91.*x2_d_d_d_d;
t270 = n_d_d.*t5.*t44.*x2_d_d_d_d.*x2_d_d_d_d_d;
t233 = t227+t228+t229+t230+t231+t232-t270;
t234 = n_d.*t6.*t121;
t235 = n_d_d_d_d.*t37.*x2_d;
t236 = n_d_d_d.*t67.*x2_d;
t237 = n_d_d.*t84.*x2_d;
t239 = n.*t219.*x2_d;
t240 = n_d.*t11.*t26.*x2_d_d_d_d;
t241 = n_d.*t11.*t58.*x2_d_d_d;
t242 = n_d.*t11.*t78.*x2_d_d;
t243 = n_d.*t10.*t209.*x2_d_d.*x2_d_d_d.*x2_d_d_d_d.*2.0;
t320 = n_d.*t41.*t44.*x2_d_d_d.*x2_d_d_d_d;
t321 = n_d.*t14.*t44.*x2_d_d.*x2_d_d_d_d;
t322 = n_d.*t44.*t51.*x2_d_d.*x2_d_d_d;
t244 = t234+t235+t236+t237+t239+t240+t241+t242+t243-t320-t321-t322;
t245 = n_d_d.*t6.*t176;
t246 = n_d_d_d_d_d.*t84.*x2_d_d;
t247 = n_d_d_d_d.*t134.*x2_d_d;
t248 = n_d_d_d.*t158.*x2_d_d;
t249 = n.*t194.*x2_d_d;
t250 = n_d_d.*t11.*t78.*x2_d_d_d_d_d;
t251 = n_d_d.*t11.*t128.*x2_d_d_d_d;
t252 = n_d_d.*t11.*t152.*x2_d_d_d;
t253 = n_d_d.*t10.*t209.*x2_d_d_d.*x2_d_d_d_d.*x2_d_d_d_d_d.*2.0;
t287 = n_d_d.*t14.*t44.*x2_d_d_d_d.*x2_d_d_d_d_d;
t288 = n_d_d.*t44.*t51.*x2_d_d_d.*x2_d_d_d_d_d;
t289 = n_d_d.*t44.*t94.*x2_d_d_d.*x2_d_d_d_d;
t254 = t245+t246+t247+t248+t249+t250+t251+t252+t253-t287-t288-t289;
t255 = n_d.*t6.*t145;
t256 = n_d_d_d_d_d.*t37.*x2_d;
t257 = n_d_d_d.*t110.*x2_d;
t258 = n_d_d.*t134.*x2_d;
t260 = n.*t226.*x2_d;
t261 = n_d.*t11.*t26.*x2_d_d_d_d_d;
t262 = n_d.*t11.*t101.*x2_d_d_d;
t263 = n_d.*t11.*t128.*x2_d_d;
t264 = n_d.*t10.*t209.*x2_d_d.*x2_d_d_d.*x2_d_d_d_d_d.*2.0;
t323 = n_d.*t41.*t44.*x2_d_d_d.*x2_d_d_d_d_d;
t324 = n_d.*t14.*t44.*x2_d_d.*x2_d_d_d_d_d;
t325 = n_d.*t44.*t94.*x2_d_d.*x2_d_d_d;
t265 = t255+t256+t257+t258+t260+t261+t262+t263+t264-t323-t324-t325;
t266 = n_d.*t6.*t169;
t267 = n_d_d_d_d_d.*t67.*x2_d;
t268 = n_d_d_d_d.*t110.*x2_d;
t269 = n_d_d.*t158.*x2_d;
t271 = n.*t233.*x2_d;
t272 = n_d.*t11.*t58.*x2_d_d_d_d_d;
t273 = n_d.*t11.*t101.*x2_d_d_d_d;
t274 = n_d.*t11.*t152.*x2_d_d;
t275 = n_d.*t10.*t209.*x2_d_d.*x2_d_d_d_d.*x2_d_d_d_d_d.*2.0;
t326 = n_d.*t41.*t44.*x2_d_d_d_d.*x2_d_d_d_d_d;
t327 = n_d.*t44.*t51.*x2_d_d.*x2_d_d_d_d_d;
t328 = n_d.*t44.*t94.*x2_d_d.*x2_d_d_d_d;
t276 = t266+t267+t268+t269+t271+t272+t273+t274+t275-t326-t327-t328;
t277 = n_d.*t6.*t176;
t278 = n_d_d_d_d_d.*t84.*x2_d;
t279 = n_d_d_d_d.*t134.*x2_d;
t280 = n_d_d_d.*t158.*x2_d;
t281 = n.*t194.*x2_d;
t282 = n_d.*t11.*t78.*x2_d_d_d_d_d;
t283 = n_d.*t11.*t128.*x2_d_d_d_d;
t284 = n_d.*t11.*t152.*x2_d_d_d;
t285 = n_d.*t10.*t209.*x2_d_d_d.*x2_d_d_d_d.*x2_d_d_d_d_d.*2.0;
t329 = n_d.*t14.*t44.*x2_d_d_d_d.*x2_d_d_d_d_d;
t330 = n_d.*t44.*t51.*x2_d_d_d.*x2_d_d_d_d_d;
t331 = n_d.*t44.*t94.*x2_d_d_d.*x2_d_d_d_d;
t286 = t277+t278+t279+t280+t281+t282+t283+t284+t285-t329-t330-t331;
t290 = 1.0./t15.^3;
t291 = n.*t19.*x2_d;
t292 = n_d_d.*t5.*x2_d;
t293 = n_d.*t6.*t41;
t294 = n_d.*t10.*t11.*x2_d_d;
t295 = t291+t292+t293+t294;
t296 = n.*t9.*x2_d;
t297 = n_d_d_d.*t5.*x2_d;
t298 = n_d.*t6.*t14;
t299 = n_d.*t10.*t11.*x2_d_d_d;
t300 = t296+t297+t298+t299;
t301 = n.*t48.*x2_d;
t302 = n_d_d_d_d.*t5.*x2_d;
t303 = n_d.*t6.*t51;
t304 = n_d.*t10.*t11.*x2_d_d_d_d;
t305 = t301+t302+t303+t304;
t306 = n.*t91.*x2_d;
t307 = n_d_d_d_d_d.*t5.*x2_d;
t308 = n_d.*t6.*t94;
t309 = n_d.*t10.*t11.*x2_d_d_d_d_d;
t310 = t306+t307+t308+t309;
t316 = n.*t5.*x2_d;
t317 = n_d.*t6.*t10;
t318 = t316+t317;
t332 = 1.0./t15.^4;
t333 = 1.0./t15.^5;
out1 = -beta_d.*t16.*t254.*x2-beta_d_d.*t16.*t286.*x2-beta_d_d_d.*t16.*t276.*x2-beta_d_d_d_d.*t16.*t265.*x2-beta_d_d_d_d_d.*t16.*t244.*x2-beta_d.*t16.*t176.*x2_d_d-beta_d_d.*t16.*t176.*x2_d-beta.*t16.*t254.*x2_d-beta_d.*t16.*t169.*x2_d_d_d-beta_d_d_d.*t16.*t169.*x2_d-beta.*t16.*t286.*x2_d_d-beta_d.*t16.*t145.*x2_d_d_d_d-beta_d_d_d_d.*t16.*t145.*x2_d-beta_d_d.*t16.*t162.*x2_d_d_d-beta_d_d_d.*t16.*t162.*x2_d_d-beta.*t16.*t276.*x2_d_d_d-beta_d.*t16.*t121.*x2_d_d_d_d_d-beta_d_d_d_d_d.*t16.*t121.*x2_d-beta_d_d.*t16.*t138.*x2_d_d_d_d-beta_d_d_d_d.*t16.*t138.*x2_d_d-beta.*t16.*t265.*x2_d_d_d_d-beta_d_d.*t16.*t88.*x2_d_d_d_d_d-beta_d_d_d_d_d.*t16.*t88.*x2_d_d-beta_d_d_d.*t16.*t114.*x2_d_d_d_d-beta_d_d_d_d.*t16.*t114.*x2_d_d_d-beta.*t16.*t244.*x2_d_d_d_d_d-beta_d_d_d.*t16.*t71.*x2_d_d_d_d_d-beta_d_d_d_d_d.*t16.*t71.*x2_d_d_d-beta_d_d_d_d.*t16.*t45.*x2_d_d_d_d_d-beta_d_d_d_d_d.*t16.*t45.*x2_d_d_d_d-beta.*t16.*x2.*(n.*x2_d.*(t2.*x2_d_d.*(t3.*x2_d_d_d.*(t28.*x2_d_d_d_d.*(n_d_d_d_d_d.*t6.*t179+t178.*x2.^(n-5.0).*x2_d_d_d_d_d)+n_d_d_d_d.*t6.*t182+n_d_d_d_d_d.*t179.*x2_d_d_d_d+n_d_d_d_d.*t11.*t29.*x2_d_d_d_d_d)+n_d_d_d.*t6.*t187+n_d_d_d_d.*t182.*x2_d_d_d+n_d_d_d_d_d.*t197.*x2_d_d_d+n_d_d_d.*t11.*t105.*x2_d_d_d_d+n_d_d_d.*t11.*t62.*x2_d_d_d_d_d-n_d_d_d.*t4.*t44.*x2_d_d_d_d.*x2_d_d_d_d_d)+n_d_d.*t6.*t194+n_d_d_d.*t187.*x2_d_d+n_d_d_d_d.*t208.*x2_d_d+n_d_d_d_d_d.*t203.*x2_d_d+n_d_d.*t11.*t158.*x2_d_d_d+n_d_d.*t11.*t134.*x2_d_d_d_d+n_d_d.*t11.*t84.*x2_d_d_d_d_d-n_d_d.*t44.*t91.*x2_d_d_d.*x2_d_d_d_d-n_d_d.*t44.*t48.*x2_d_d_d.*x2_d_d_d_d_d-n_d_d.*t9.*t44.*x2_d_d_d_d.*x2_d_d_d_d_d+n_d_d.*t5.*t209.*x2_d_d_d.*x2_d_d_d_d.*x2_d_d_d_d_d.*2.0)+n_d.*t6.*t254+n_d_d.*t194.*x2_d+n_d_d_d.*t233.*x2_d+n_d_d_d_d.*t226.*x2_d+n_d_d_d_d_d.*t219.*x2_d+n_d.*t11.*t176.*x2_d_d+n_d.*t11.*t169.*x2_d_d_d+n_d.*t11.*t145.*x2_d_d_d_d+n_d.*t11.*t121.*x2_d_d_d_d_d-n_d.*t44.*t152.*x2_d_d.*x2_d_d_d-n_d.*t44.*t128.*x2_d_d.*x2_d_d_d_d-n_d.*t44.*t78.*x2_d_d.*x2_d_d_d_d_d-n_d.*t44.*t101.*x2_d_d_d.*x2_d_d_d_d-n_d.*t44.*t58.*x2_d_d_d.*x2_d_d_d_d_d-n_d.*t26.*t44.*x2_d_d_d_d.*x2_d_d_d_d_d+n_d.*t94.*t209.*x2_d_d.*x2_d_d_d.*x2_d_d_d_d.*2.0+n_d.*t51.*t209.*x2_d_d.*x2_d_d_d.*x2_d_d_d_d_d.*2.0+n_d.*t14.*t209.*x2_d_d.*x2_d_d_d_d.*x2_d_d_d_d_d.*2.0+n_d.*t41.*t209.*x2_d_d_d.*x2_d_d_d_d.*x2_d_d_d_d_d.*2.0-n_d.*t10.*1.0./x2.^4.*x2_d_d.*x2_d_d_d.*x2_d_d_d_d.*x2_d_d_d_d_d.*6.0)+beta_d.*t26.*t152.*t290.*x2.*2.0+beta_d.*t78.*t101.*t290.*x2.*2.0+beta_d.*t14.*t169.*t290.*x2.*2.0+beta_d.*t58.*t128.*t290.*x2.*2.0+beta_d.*t51.*t145.*t290.*x2.*2.0+beta_d.*t94.*t121.*t290.*x2.*2.0+beta_d.*t41.*t176.*t290.*x2.*2.0+beta_d_d.*t14.*t162.*t290.*x2.*2.0+beta_d_d.*t88.*t94.*t290.*x2.*2.0+beta_d_d.*t51.*t138.*t290.*x2.*2.0+beta.*t26.*t162.*t290.*x2.*2.0+beta.*t88.*t101.*t290.*x2.*2.0+beta.*t78.*t114.*t290.*x2.*2.0+beta.*t58.*t138.*t290.*x2.*2.0+beta.*t45.*t152.*t290.*x2.*2.0+beta.*t71.*t128.*t290.*x2.*2.0+beta.*t14.*t276.*t290.*x2.*2.0+beta.*t51.*t265.*t290.*x2.*2.0+beta.*t41.*t286.*t290.*x2.*2.0+beta.*t94.*t244.*t290.*x2.*2.0+beta_d_d_d.*t51.*t114.*t290.*x2.*2.0+beta_d_d_d.*t71.*t94.*t290.*x2.*2.0+beta_d_d.*t78.*t290.*t310.*x2.*2.0+beta_d_d_d.*t41.*t162.*t290.*x2.*2.0+beta_d_d.*t128.*t290.*t305.*x2.*2.0+beta.*t121.*t290.*t310.*x2.*2.0+beta_d_d.*t152.*t290.*t300.*x2.*2.0+beta.*t145.*t290.*t305.*x2.*2.0+beta.*t169.*t290.*t300.*x2.*2.0+beta.*t176.*t290.*t295.*x2.*2.0+beta_d_d.*t176.*t290.*t318.*x2.*2.0+beta_d_d_d_d.*t14.*t114.*t290.*x2.*2.0+beta_d_d_d_d.*t45.*t94.*t290.*x2.*2.0+beta_d_d_d.*t58.*t290.*t310.*x2.*2.0+beta_d_d_d_d.*t41.*t138.*t290.*x2.*2.0+beta.*t254.*t290.*t318.*x2.*2.0+beta_d_d_d.*t101.*t290.*t305.*x2.*2.0+beta_d_d_d.*t152.*t290.*t295.*x2.*2.0+beta_d_d_d_d_d.*t14.*t71.*t290.*x2.*2.0+beta_d_d_d_d_d.*t45.*t51.*t290.*x2.*2.0+beta_d_d_d.*t169.*t290.*t318.*x2.*2.0+beta_d_d_d_d_d.*t41.*t88.*t290.*x2.*2.0+beta_d_d_d_d.*t26.*t290.*t310.*x2.*2.0+beta_d_d_d_d.*t101.*t290.*t300.*x2.*2.0+beta_d_d_d_d.*t128.*t290.*t295.*x2.*2.0+beta_d_d_d_d.*t145.*t290.*t318.*x2.*2.0+beta_d_d_d_d_d.*t26.*t290.*t305.*x2.*2.0+beta_d_d_d_d_d.*t58.*t290.*t300.*x2.*2.0+beta_d_d_d_d_d.*t78.*t290.*t295.*x2.*2.0+beta_d_d_d_d_d.*t121.*t290.*t318.*x2.*2.0+beta_d.*t14.*t152.*t290.*x2_d_d.*2.0+beta_d_d.*t14.*t152.*t290.*x2_d.*2.0+beta_d.*t78.*t94.*t290.*x2_d_d.*2.0+beta_d_d.*t78.*t94.*t290.*x2_d.*2.0+beta_d.*t51.*t128.*t290.*x2_d_d.*2.0+beta_d_d.*t51.*t128.*t290.*x2_d.*2.0+beta.*t26.*t152.*t290.*x2_d.*2.0+beta.*t78.*t101.*t290.*x2_d.*2.0+beta.*t14.*t169.*t290.*x2_d.*2.0+beta.*t58.*t128.*t290.*x2_d.*2.0+beta.*t51.*t145.*t290.*x2_d.*2.0+beta.*t94.*t121.*t290.*x2_d.*2.0+beta.*t41.*t176.*t290.*x2_d.*2.0+beta_d.*t51.*t101.*t290.*x2_d_d_d.*2.0+beta_d.*t58.*t94.*t290.*x2_d_d_d.*2.0+beta_d_d_d.*t51.*t101.*t290.*x2_d.*2.0+beta_d_d_d.*t58.*t94.*t290.*x2_d.*2.0+beta.*t14.*t162.*t290.*x2_d_d.*2.0+beta.*t88.*t94.*t290.*x2_d_d.*2.0+beta.*t51.*t138.*t290.*x2_d_d.*2.0+beta_d.*t41.*t152.*t290.*x2_d_d_d.*2.0+beta_d_d_d.*t41.*t152.*t290.*x2_d.*2.0+beta_d.*t14.*t101.*t290.*x2_d_d_d_d.*2.0+beta_d_d_d_d.*t14.*t101.*t290.*x2_d.*2.0+beta_d.*t26.*t94.*t290.*x2_d_d_d_d.*2.0+beta_d_d_d_d.*t26.*t94.*t290.*x2_d.*2.0+beta.*t51.*t114.*t290.*x2_d_d_d.*2.0+beta.*t71.*t94.*t290.*x2_d_d_d.*2.0+beta_d.*t41.*t128.*t290.*x2_d_d_d_d.*2.0+beta_d_d_d_d.*t41.*t128.*t290.*x2_d.*2.0+beta.*t78.*t290.*t310.*x2_d_d.*2.0+beta.*t41.*t162.*t290.*x2_d_d_d.*2.0+beta.*t128.*t290.*t305.*x2_d_d.*2.0+beta.*t152.*t290.*t300.*x2_d_d.*2.0+beta_d.*t14.*t58.*t290.*x2_d_d_d_d_d.*2.0+beta_d_d_d_d_d.*t14.*t58.*t290.*x2_d.*2.0+beta_d.*t26.*t51.*t290.*x2_d_d_d_d_d.*2.0+beta_d_d_d_d_d.*t26.*t51.*t290.*x2_d.*2.0+beta.*t176.*t290.*t318.*x2_d_d.*2.0+beta_d.*t41.*t78.*t290.*x2_d_d_d_d_d.*2.0+beta_d_d_d_d_d.*t41.*t78.*t290.*x2_d.*2.0+beta.*t14.*t114.*t290.*x2_d_d_d_d.*2.0+beta.*t45.*t94.*t290.*x2_d_d_d_d.*2.0+beta_d_d.*t51.*t290.*t310.*x2_d_d_d.*2.0+beta_d_d_d.*t51.*t290.*t310.*x2_d_d.*2.0+beta.*t58.*t290.*t310.*x2_d_d_d.*2.0+beta.*t41.*t138.*t290.*x2_d_d_d_d.*2.0+beta_d_d.*t94.*t290.*t305.*x2_d_d_d.*2.0+beta_d_d_d.*t94.*t290.*t305.*x2_d_d.*2.0+beta.*t101.*t290.*t305.*x2_d_d_d.*2.0+beta.*t152.*t290.*t295.*x2_d_d_d.*2.0+beta_d_d.*t152.*t290.*t318.*x2_d_d_d.*2.0+beta_d_d_d.*t152.*t290.*t318.*x2_d_d.*2.0+beta.*t14.*t71.*t290.*x2_d_d_d_d_d.*2.0+beta.*t45.*t51.*t290.*x2_d_d_d_d_d.*2.0+beta.*t169.*t290.*t318.*x2_d_d_d.*2.0+beta_d_d.*t14.*t290.*t310.*x2_d_d_d_d.*2.0+beta_d_d_d_d.*t14.*t290.*t310.*x2_d_d.*2.0+beta.*t41.*t88.*t290.*x2_d_d_d_d_d.*2.0+beta.*t26.*t290.*t310.*x2_d_d_d_d.*2.0+beta_d_d.*t94.*t290.*t300.*x2_d_d_d_d.*2.0+beta_d_d_d_d.*t94.*t290.*t300.*x2_d_d.*2.0+beta.*t101.*t290.*t300.*x2_d_d_d_d.*2.0+beta.*t128.*t290.*t295.*x2_d_d_d_d.*2.0+beta_d_d.*t128.*t290.*t318.*x2_d_d_d_d.*2.0+beta_d_d_d_d.*t128.*t290.*t318.*x2_d_d.*2.0+beta.*t145.*t290.*t318.*x2_d_d_d_d.*2.0+beta_d_d.*t14.*t290.*t305.*x2_d_d_d_d_d.*2.0+beta_d_d_d_d_d.*t14.*t290.*t305.*x2_d_d.*2.0+beta.*t26.*t290.*t305.*x2_d_d_d_d_d.*2.0+beta_d_d.*t51.*t290.*t300.*x2_d_d_d_d_d.*2.0+beta_d_d_d.*t41.*t290.*t310.*x2_d_d_d_d.*2.0+beta_d_d_d_d.*t41.*t290.*t310.*x2_d_d_d.*2.0+beta_d_d_d_d_d.*t51.*t290.*t300.*x2_d_d.*2.0+beta.*t58.*t290.*t300.*x2_d_d_d_d_d.*2.0+beta.*t78.*t290.*t295.*x2_d_d_d_d_d.*2.0+beta_d_d_d.*t94.*t290.*t295.*x2_d_d_d_d.*2.0+beta_d_d_d_d.*t94.*t290.*t295.*x2_d_d_d.*2.0+beta_d_d.*t78.*t290.*t318.*x2_d_d_d_d_d.*2.0+beta_d_d_d_d_d.*t78.*t290.*t318.*x2_d_d.*2.0+beta_d_d_d.*t101.*t290.*t318.*x2_d_d_d_d.*2.0+beta_d_d_d_d.*t101.*t290.*t318.*x2_d_d_d.*2.0+beta.*t121.*t290.*t318.*x2_d_d_d_d_d.*2.0+beta_d_d_d.*t41.*t290.*t305.*x2_d_d_d_d_d.*2.0+beta_d_d_d.*t51.*t290.*t295.*x2_d_d_d_d_d.*2.0+beta_d_d_d_d_d.*t41.*t290.*t305.*x2_d_d_d.*2.0+beta_d_d_d_d_d.*t51.*t290.*t295.*x2_d_d_d.*2.0+beta_d_d_d.*t58.*t290.*t318.*x2_d_d_d_d_d.*2.0+beta_d_d_d_d_d.*t58.*t290.*t318.*x2_d_d_d.*2.0+beta_d_d_d_d.*t14.*t290.*t295.*x2_d_d_d_d_d.*2.0+beta_d_d_d_d_d.*t14.*t290.*t295.*x2_d_d_d_d.*2.0+beta_d_d_d_d.*t41.*t290.*t300.*x2_d_d_d_d_d.*2.0+beta_d_d_d_d_d.*t41.*t290.*t300.*x2_d_d_d_d.*2.0+beta_d_d_d_d.*t26.*t290.*t318.*x2_d_d_d_d_d.*2.0+beta_d_d_d_d_d.*t26.*t290.*t318.*x2_d_d_d_d.*2.0-beta_d.*t14.*t51.*t101.*t332.*x2.*6.0-beta_d.*t14.*t58.*t94.*t332.*x2.*6.0-beta_d.*t26.*t51.*t94.*t332.*x2.*6.0-beta_d.*t14.*t41.*t152.*t332.*x2.*6.0-beta_d.*t41.*t78.*t94.*t332.*x2.*6.0-beta_d.*t41.*t51.*t128.*t332.*x2.*6.0-beta.*t14.*t51.*t114.*t332.*x2.*6.0-beta.*t14.*t71.*t94.*t332.*x2.*6.0-beta.*t45.*t51.*t94.*t332.*x2.*6.0-beta.*t14.*t41.*t162.*t332.*x2.*6.0-beta.*t41.*t88.*t94.*t332.*x2.*6.0-beta.*t41.*t51.*t138.*t332.*x2.*6.0-beta_d_d.*t14.*t51.*t310.*t332.*x2.*6.0-beta.*t14.*t58.*t310.*t332.*x2.*6.0-beta.*t26.*t51.*t310.*t332.*x2.*6.0-beta_d_d.*t14.*t94.*t305.*t332.*x2.*6.0-beta.*t14.*t101.*t305.*t332.*x2.*6.0-beta.*t26.*t94.*t305.*t332.*x2.*6.0-beta.*t41.*t78.*t310.*t332.*x2.*6.0-beta_d_d.*t51.*t94.*t300.*t332.*x2.*6.0-beta.*t51.*t101.*t300.*t332.*x2.*6.0-beta.*t58.*t94.*t300.*t332.*x2.*6.0-beta.*t14.*t152.*t295.*t332.*x2.*6.0-beta.*t78.*t94.*t295.*t332.*x2.*6.0-beta.*t41.*t128.*t305.*t332.*x2.*6.0-beta.*t51.*t128.*t295.*t332.*x2.*6.0-beta_d_d.*t14.*t152.*t318.*t332.*x2.*6.0-beta_d_d.*t78.*t94.*t318.*t332.*x2.*6.0-beta.*t41.*t152.*t300.*t332.*x2.*6.0-beta_d_d.*t51.*t128.*t318.*t332.*x2.*6.0-beta.*t26.*t152.*t318.*t332.*x2.*6.0-beta.*t78.*t101.*t318.*t332.*x2.*6.0-beta.*t14.*t169.*t318.*t332.*x2.*6.0-beta.*t58.*t128.*t318.*t332.*x2.*6.0-beta.*t51.*t145.*t318.*t332.*x2.*6.0-beta.*t94.*t121.*t318.*t332.*x2.*6.0-beta.*t41.*t176.*t318.*t332.*x2.*6.0-beta_d_d_d.*t41.*t51.*t310.*t332.*x2.*6.0-beta_d_d_d.*t41.*t94.*t305.*t332.*x2.*6.0-beta_d_d_d.*t51.*t94.*t295.*t332.*x2.*6.0-beta_d_d_d.*t51.*t101.*t318.*t332.*x2.*6.0-beta_d_d_d.*t58.*t94.*t318.*t332.*x2.*6.0-beta_d_d_d.*t41.*t152.*t318.*t332.*x2.*6.0-beta_d_d_d_d.*t14.*t41.*t310.*t332.*x2.*6.0-beta_d_d_d_d.*t14.*t94.*t295.*t332.*x2.*6.0-beta_d_d_d_d.*t14.*t101.*t318.*t332.*x2.*6.0-beta_d_d_d_d.*t41.*t94.*t300.*t332.*x2.*6.0-beta_d_d_d_d.*t26.*t94.*t318.*t332.*x2.*6.0-beta_d_d_d_d.*t41.*t128.*t318.*t332.*x2.*6.0-beta_d_d_d_d_d.*t14.*t41.*t305.*t332.*x2.*6.0-beta_d_d_d_d_d.*t14.*t51.*t295.*t332.*x2.*6.0-beta_d_d_d_d_d.*t14.*t58.*t318.*t332.*x2.*6.0-beta_d_d_d_d_d.*t41.*t51.*t300.*t332.*x2.*6.0-beta_d_d_d_d_d.*t26.*t51.*t318.*t332.*x2.*6.0-beta_d_d_d_d_d.*t41.*t78.*t318.*t332.*x2.*6.0-beta_d.*t14.*t51.*t94.*t332.*x2_d_d.*6.0-beta_d_d.*t14.*t51.*t94.*t332.*x2_d.*6.0-beta.*t14.*t51.*t101.*t332.*x2_d.*6.0-beta.*t14.*t58.*t94.*t332.*x2_d.*6.0-beta.*t26.*t51.*t94.*t332.*x2_d.*6.0-beta.*t14.*t41.*t152.*t332.*x2_d.*6.0-beta.*t41.*t78.*t94.*t332.*x2_d.*6.0-beta.*t41.*t51.*t128.*t332.*x2_d.*6.0-beta_d.*t41.*t51.*t94.*t332.*x2_d_d_d.*6.0-beta_d_d_d.*t41.*t51.*t94.*t332.*x2_d.*6.0-beta_d.*t14.*t41.*t94.*t332.*x2_d_d_d_d.*6.0-beta_d_d_d_d.*t14.*t41.*t94.*t332.*x2_d.*6.0-beta.*t14.*t51.*t310.*t332.*x2_d_d.*6.0-beta.*t14.*t94.*t305.*t332.*x2_d_d.*6.0-beta.*t51.*t94.*t300.*t332.*x2_d_d.*6.0-beta.*t14.*t152.*t318.*t332.*x2_d_d.*6.0-beta.*t78.*t94.*t318.*t332.*x2_d_d.*6.0-beta_d.*t14.*t41.*t51.*t332.*x2_d_d_d_d_d.*6.0-beta_d_d_d_d_d.*t14.*t41.*t51.*t332.*x2_d.*6.0-beta.*t51.*t128.*t318.*t332.*x2_d_d.*6.0-beta.*t41.*t51.*t310.*t332.*x2_d_d_d.*6.0-beta.*t41.*t94.*t305.*t332.*x2_d_d_d.*6.0-beta.*t51.*t94.*t295.*t332.*x2_d_d_d.*6.0-beta_d_d.*t51.*t94.*t318.*t332.*x2_d_d_d.*6.0-beta_d_d_d.*t51.*t94.*t318.*t332.*x2_d_d.*6.0-beta.*t51.*t101.*t318.*t332.*x2_d_d_d.*6.0-beta.*t58.*t94.*t318.*t332.*x2_d_d_d.*6.0-beta.*t41.*t152.*t318.*t332.*x2_d_d_d.*6.0-beta.*t14.*t41.*t310.*t332.*x2_d_d_d_d.*6.0-beta.*t14.*t94.*t295.*t332.*x2_d_d_d_d.*6.0-beta_d_d.*t14.*t94.*t318.*t332.*x2_d_d_d_d.*6.0-beta_d_d_d_d.*t14.*t94.*t318.*t332.*x2_d_d.*6.0-beta.*t14.*t101.*t318.*t332.*x2_d_d_d_d.*6.0-beta.*t41.*t94.*t300.*t332.*x2_d_d_d_d.*6.0-beta.*t26.*t94.*t318.*t332.*x2_d_d_d_d.*6.0-beta.*t41.*t128.*t318.*t332.*x2_d_d_d_d.*6.0-beta.*t14.*t41.*t305.*t332.*x2_d_d_d_d_d.*6.0-beta.*t14.*t51.*t295.*t332.*x2_d_d_d_d_d.*6.0-beta_d_d.*t14.*t51.*t318.*t332.*x2_d_d_d_d_d.*6.0-beta_d_d_d_d_d.*t14.*t51.*t318.*t332.*x2_d_d.*6.0-beta.*t14.*t58.*t318.*t332.*x2_d_d_d_d_d.*6.0-beta.*t41.*t51.*t300.*t332.*x2_d_d_d_d_d.*6.0-beta.*t26.*t51.*t318.*t332.*x2_d_d_d_d_d.*6.0-beta.*t41.*t78.*t318.*t332.*x2_d_d_d_d_d.*6.0-beta_d_d_d.*t41.*t94.*t318.*t332.*x2_d_d_d_d.*6.0-beta_d_d_d_d.*t41.*t94.*t318.*t332.*x2_d_d_d.*6.0-beta_d_d_d.*t41.*t51.*t318.*t332.*x2_d_d_d_d_d.*6.0-beta_d_d_d_d_d.*t41.*t51.*t318.*t332.*x2_d_d_d.*6.0-beta_d_d_d_d.*t14.*t41.*t318.*t332.*x2_d_d_d_d_d.*6.0-beta_d_d_d_d_d.*t14.*t41.*t318.*t332.*x2_d_d_d_d.*6.0+beta_d.*t14.*t41.*t51.*t94.*t333.*x2.*2.4e1+beta.*t14.*t41.*t51.*t310.*t333.*x2.*2.4e1+beta.*t14.*t41.*t94.*t305.*t333.*x2.*2.4e1+beta.*t14.*t51.*t94.*t295.*t333.*x2.*2.4e1+beta_d_d.*t14.*t51.*t94.*t318.*t333.*x2.*2.4e1+beta.*t14.*t51.*t101.*t318.*t333.*x2.*2.4e1+beta.*t14.*t58.*t94.*t318.*t333.*x2.*2.4e1+beta.*t41.*t51.*t94.*t300.*t333.*x2.*2.4e1+beta.*t26.*t51.*t94.*t318.*t333.*x2.*2.4e1+beta.*t14.*t41.*t152.*t318.*t333.*x2.*2.4e1+beta.*t41.*t78.*t94.*t318.*t333.*x2.*2.4e1+beta.*t41.*t51.*t128.*t318.*t333.*x2.*2.4e1+beta_d_d_d.*t41.*t51.*t94.*t318.*t333.*x2.*2.4e1+beta_d_d_d_d.*t14.*t41.*t94.*t318.*t333.*x2.*2.4e1+beta_d_d_d_d_d.*t14.*t41.*t51.*t318.*t333.*x2.*2.4e1+beta.*t14.*t41.*t51.*t94.*t333.*x2_d.*2.4e1+beta.*t14.*t51.*t94.*t318.*t333.*x2_d_d.*2.4e1+beta.*t41.*t51.*t94.*t318.*t333.*x2_d_d_d.*2.4e1+beta.*t14.*t41.*t94.*t318.*t333.*x2_d_d_d_d.*2.4e1+beta.*t14.*t41.*t51.*t318.*t333.*x2_d_d_d_d_d.*2.4e1-beta.*t14.*1.0./t15.^6.*t41.*t51.*t94.*t318.*x2.*1.2e2;

