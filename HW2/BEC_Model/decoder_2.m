function [out, b_hat] = decoder_2(degree,in)
  
  
  for ii = 1:degree
    
    ind = find([1:degree]~=ii);
    
    tmp = prod(tanh(in(ind) / 2));
    
    out(ii) = log((1 + tmp) / (1 - tmp));    
    
  end
    
end