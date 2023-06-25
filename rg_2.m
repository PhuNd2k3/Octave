h=0.1;
f=@(y,t) -2*y*t+4*t;
g=@(t) 2+ exp(-t^2);
t=[0:h:1];
Y = zeros(1,length(t));
ycx= zeros(1,length(t));
y(1)=3;
for i=1:length(t)-1
  k1=h*f(y(i),t(i));
  k2=h*f(y(i)+k1,t(i+1));
  y(i+1)=y(i)+(1/2)*(k1+k2);
  ycx(i)=g(t(i));
end
ycx(11)=g(t(11));
plot(t,y);
hold on;
plot(t,ycx);
