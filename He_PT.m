A=[10 -7 0;-3 2 6;5 -1 5];
b=[7;4;6];
n=3;
[L,U,P]=lu(A);
x=zeros(3,1);
y=zeros(3,1);

U1=U;
b1=P*b;

  for k=1:n
    y(k)=b1(k);
    b1(k+1:n)-=y(k)*L(k+1:n,k);
  endfor

for k=n:-1:1
    x(k)=y(k)/U(k,k);
    y(1:k-1)-=x(k)*U(1:k-1,k);
  endfor
x
