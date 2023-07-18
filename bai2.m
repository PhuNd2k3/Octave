f = @(x) x^2 - 4*sin(x);
function out=solve(f,x,EPS)
    df=@(x) (f(x+1e-8)-f(x-1e-8))/2e-8;
    while (abs(f(x))>EPS)
        x=x-f(x)/df(x);
    end
    fprintf("%.3f",x);
end
solve(f, 3, 1e-5);
