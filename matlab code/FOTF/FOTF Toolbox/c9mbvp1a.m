function y=c9mbvp1a(x)
% c9mbvp1a - MATLAB function to boundary value problem

% Copyright (c) Dingyu Xue, Northeastern University, China
% Last Modified 18 May, 2022
   W=get_param(gcs,'ModelWorkspace'); assignin(W,'a',x)
   try
      txy=sim('bp6_model.slx'); y0=txy.yout; y=y0(end)-exp(-2);
   catch, y=10; 
   end
end