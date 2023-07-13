function des=f(n)
  a=[1:n];
  des=0;
  b=mod(n,2)+2;
  a=a.^b;
  for i=1:n
    des=des+a(i);
  endfor
end
