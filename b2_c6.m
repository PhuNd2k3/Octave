h = input("");
g = @(y,yn,h) yn+h/2*(-y^1.5+1-yn^1.5+1);
t = 0:h:1;
y = zeros(1,length(t));
y(1) = 10;
for i = 1:length(t)-1
  y(i+1) = y(i);
  while(abs(y(i+1)-g(y(i+1),y(i),h))>1e-6)
        y(i+1) = g(y(i+1),y(i),h);
  end
end
for i=1:length(t)
    printf("%.4f\n",y(i));
end
