function ans=simpson38(f,a,b,n)
    h=(b-a)/n;
    ans=f(a)+f(b);
    for i=1:n-1
        if mod(i,3)==0
            ans+=2*f(a+i*h);
        else ans+=3*f(a+i*h);
        endif
    endfor
    ans*=3*(b-a)/(8*n);
end
