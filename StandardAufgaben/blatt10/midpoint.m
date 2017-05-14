function [ I ] = midpoint( f,a,b,N )
h=(b-a)/N;
x=a:h:b;
x=x(1:end-1)+h/2;
fx=f(x);
I=h*sum(fx);
end