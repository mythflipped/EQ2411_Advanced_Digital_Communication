function [out, c_hat] = decoder_1(degree, yy, in)
  
  for ii = 1:degree
    
    ind = find([1:degree]~=ii);
    
    out(ii) = sum(in(ind)) + yy; 
    
  end
  
  update_yy = yy + sum(in);
  c_hat = (update_yy < 0);

end