h=0.1;
f=@(y,t) t^2+1;
g=@(t)(1/3)*t^3+t+1;
t=[0:h:1];
Y = zeros(1,length(t));
ycx= zeros(1,length(t));
y(1)=1;
for i=[1 2 3 4 5 6 7 8 9 10]
  y(i+1)=y(i)+h*f(y(i),t(i));
  ycx(i)=g(t(i));
end
ycx(11)=g(t(11));
plot(t,y);
hold on;
plot(t,ycx);
