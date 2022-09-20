function [K,alpha,apol]=isstable(G)
% isstable - check whether an FOSS object is stable or not
%
%   [K,alpha,apol]=isstable(G)
% 
%   G - an FOSS object
%   K- identifier to indicate the stability of G, returns 0, and 1
%   alpha - the common order
%   apol - all the pseudo poles of the system

% Copyright (c) Dingyu Xue, Northeastern University, China
% Last modified 28 March, 2017 
% Last modified 18 May, 2022 
   p=eig(G); alpha=G.alpha;
   plot(real(p),imag(p),'x',0,0,'o')
   apol=min(abs(angle(p))); K=apol>alpha*pi/2;
   xm=xlim; if alpha<1, xm(1)=0; else, xm(2)=0; end
   a1=tan(alpha*pi/2)*xm; a2=tan(alpha*pi)*xm;
  line(xm,a1), line(xm,-a1), line(xm,a2), line(xm,-a2)
end