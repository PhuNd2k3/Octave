function [ ]=PPDC(f,a,c,eps)
  saiso=c-a;
  while (saiso>eps)
      b=(a*f(c)-c*f(a))/(f(c)-f(a));
      if ((f(a)*f(b))<0)
        c=b;
      end

      if ((f(a)*f(b))>0)
        a=b;
      end

      saiso=abs(c-a);

      if (f(b)==0)
        saiso = 0;
      end

  endwhile
  nghiem=b

