function [ QS ] = quad_simpson( f,a,b,h )
%QUAD_SIMPSON Summary of this function goes here
%   Detailed explanation goes here
N=(b-a)/h;
M=N/2;
k1 = 1:(M-1);
k2 = 0:(M-1);

QS = (h/3).*(f(a)+2.*sum(f(a+2*h*k1))+4*sum(f(a+(2*k2+1)*h))+f(b));
end