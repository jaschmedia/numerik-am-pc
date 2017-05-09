function [ Q38 ] = quad_38( f,a,b,h )
%QUAD Summary of this function goes here
%   Detailed explanation goes here
N=(b-a)/h;
M=N/3;
k1 = 1:(M-1);
k2 = 0:(M-1);

Q38 = (3*h/8).*(f(a)+2.*sum(f(a+3*h*k1))+3*sum(f(a+(3*k2+1)*h)+f(a+(3*k2+2)*h))+f(b));
end