function [ pA, pB, pC ] = interpols( f, n, z )
%INTERPOLS Summary of this function goes here
%   Detailed explanation goes here
k=0:n;
xA=(-1+(2/n).*k);

pA = lagrange_interpol(xA,f(xA),z);

xB = cos((2.*k+1)./(n+1).*(pi/2));
pB = lagrange_interpol(xB,f(xB),z);

K = spline_coeff(xA',f(xA'));
pC = spline_interpol(K,xA',z');

end

