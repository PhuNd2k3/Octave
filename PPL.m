function [ ]=PPL(g,x1,eps)
  saiso=eps+1;
  while (saiso>eps)
    x=g(x1);
    saiso=abs(x-x1); %g(x1)-x1
    x1=x;
  endwhile
  nghiem = x1

