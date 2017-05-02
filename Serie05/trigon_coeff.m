function [ a,b ] = trigon_coeff( beta,n )
%TRIGON_COEFF Summary of this function goes here
%   Detailed explanation goes here
m=n/2;
length(beta);
a=zeros(1,m+1);
b=zeros(1,m+1);
a(1)=2*beta(1);
a(m+1)=2*beta(m+1);
for l=1:(m-1)
  a(l+1)=beta(l+1)+beta(n+1-l);
  b(l+1)=1i*(beta(l+1)-beta(n-l+1));
end
end

