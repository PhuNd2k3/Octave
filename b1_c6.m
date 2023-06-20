#Dat y'=z, y(0) = 2
#Dat z'=w, z(0) = -1
#    w'=-2sin(t)*w+t*z-y-cos(t),w(0)=-1
#    y(n+1) = y(n) + h*z(n)
#    z(n+1) = z(n) + h*w(n)
#    w(n+1) = w(n) + h*(-2w(n)sin(tn) +tn*zn - yn - cos(tn)); w(0) = -1
f = @(y,z,w,t) -2*w*sin(t) + t*z - y - cos(t);
h = input("");
t = 0:h:1;
y(1) = 2;
z(1) = -1;
w(1) = -1;

for i = 1:length(t)-1
   y(i+1) = y(i) + h*z(i);
   z(i+1) = z(i) + h*w(i);
   w(i+1) = w(i) + h*f(y(i),z(i),w(i),t(i));
end
for i = 1:length(t)
   printf("%.4f\n",y(i));
end
