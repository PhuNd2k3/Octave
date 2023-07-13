function [cnt,v]= PerfectNum(n)
  a=[2:1:n/2];
  a=2.^(a-1).*(2.^a-1);
  v=[];
  for i=1:1:length(a)
    if(a(i)<=n)
    v=[v a(i)];
    endif
  endfor
  cnt=length(v);
end

function [cnt,v] =PerfectNum(n)
  a=[1:n];
  is_perfect=ones(1,n);
  sum=0;
  v=[];
  for i=[1:n]
    for j=[1:1:n/2]
      if mod(i,j)==0
        sum=sum+j;
      endif
    endfor
    if sum!=i
      is_perfect(i)=0;
    endif
  endfor
  for k=[1:n]
    if is_perfect(k)
      v=[v a(k);
    endif
  endfor
  cnt=length(v);
end

function check=ck(n)
  sum=0;
  check=0;
  for i=1:1:n/2
  if mod(n,i)==0
  sum=sum+i;
  endif
  endfor
  if sum==n
  check=1;
  endif
end


function [cnt,v] =PerfectNum(n)
  a=[1:n];
  v=[];
  for i=1:n
  if ck(i)
  v=[v i];
  endif
  endfor
  cnt=length(v);
end
