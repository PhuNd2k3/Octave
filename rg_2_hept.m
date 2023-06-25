h = input("");
m1 = input("");
m2 = input("");
k = input("");

t = 0:h:1;
N = length(t);

x = zeros(N, 4);
x(1, :) = [0, 0, 1, 2];

for i = 1:N-1
  x1 = x(i, 1);
  x2 = x(i, 2);
  x1dot = x(i, 3);
  x2dot = x(i, 4);

  x1dotdot = (k/m1) * (x2 - x1);
  x2dotdot = (-k/m2) * (x2 - x1);

  k1 = [x1dot, x2dot, x1dotdot, x2dotdot];

  x1 = x(i, 1) + (h/2) * x1dot;
  x2 = x(i, 2) + (h/2) * x2dot;
  x1dot = x(i, 3) + (h/2) * x1dotdot;
  x2dot = x(i, 4) + (h/2) * x2dotdot;

  x1dotdot = (k/m1) * (x2 - x1);
  x2dotdot = (-k/m2) * (x2 - x1);

  k2 = [x1dot, x2dot, x1dotdot, x2dotdot];

  x(i+1, :) = x(i, :) + h * k2;
end
x(:, 1)

