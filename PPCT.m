function [ ]= PPCT(f,x0,x1,eps)
  count=0;
  saiso=eps+1;
  s=0;
  while (saiso>eps)
    count = count +1;
    s=(f(x1)-f(x0))/(x1-x0);
    x2=x1-f(x1)/s;
    saiso=abs(f(x2));
    x0=x1;
    x1=x2;
  endwhile

  nghiem =x1
