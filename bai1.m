f=@(x) sign(x-2)*sqrt(abs(x-2));
x0=4;
x1=3;
EPS=1e-5;
while (abs(f(x0))>EPS)
  x=(f(x1)-f(x0))/(x1-x0);
  x0=x1;
  x1=x0-f(x0)/x;
end
fprintf("%.3f\n",x0);


