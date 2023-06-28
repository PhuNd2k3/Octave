function [ ]=PPC2(f,a,c,eps)
  saiso=c-a;
  while (saiso>eps)
      b=(c+a)/2;
      if ((f(a)*f(b))<0)
        c=b;
      end

      if ((f(a)*f(b))>0)
        a=b;
      end

      %saiso=abs(c-a)
      saiso=abs(f(b));

      if (f(b)==0)
        saiso = 0;
      end

  endwhile

  nghiem=b


