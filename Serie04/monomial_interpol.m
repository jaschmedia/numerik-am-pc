function [ p ] = monomial_interpol( a, x, z )
%MONOMIAL_INTERPOL Summary of this function goes here
%   Detailed explanation goes here
n = length(x)-1;
%p = repmat(a(n+1),1,length(z));
p = ones(1,length(z));
p = p*a(n+1);
for j=n:-1:1
  p = p.*z + a(j);
end
end

