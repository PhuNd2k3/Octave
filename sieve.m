function [v m]=sieve(n)
  is_prime = ones(n,1);
  for p=2:sqrt(n)
    if is_prime(p)
      %for j=p*p:p:n
        %is_prime(j)=0;
      %endfor
      is_prime(and(mod(1:n,p)==0,1:n>p))=0
    endif
  endfor

  v=[];
  for j=2:n
    if(is_prime(j))
    v=[v j];
    endif
  endfor
  m=length(v);
end
