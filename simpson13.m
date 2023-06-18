function ans=simpson13(f,a,b,n)
    h=(b-a)/n;
    ans=f(a)+f(b);
    for i=1:n-1
        if mod(i,2)==1
            ans+=4*f(a+i*h);
        else ans+=2*f(a+i*h);
        endif
    endfor
    ans*=(b-a)/(3*n)
end
