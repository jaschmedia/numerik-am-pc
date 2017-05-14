function [ I ] = trapez( f,a,b,N )
h=(b-a)/N;
x=a:h:b;
fx=f(x);
I=(h/2)*(fx(1)+fx(end))+h*sum(fx(2:end-1));
end