function y=bp3_fcn(u)
   y=u^(1.5-sqrt(2))*exp(u)*...
       ml_func([1,3-sqrt(2)],-u)./ml_func([1,1.5],-u);
end
