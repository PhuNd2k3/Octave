function [ ]= PPNT(f,df,x0,eps)
  count=0;
  saiso=eps+1;
  while (saiso>eps)
    count = count +1;
    x = x0 - f(x0)/df(x0);
    x0=x;
    saiso=abs(f(x));
  endwhile

  nghiem =x
