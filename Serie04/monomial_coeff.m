function [ a ] = monomial_coeff( x, y )
%MONOMIA_COEFF Summary of this function goes here
%   Detailed explanation goes here
n = length(x);
X = repmat(x',1,n).^repmat(0:n-1,n,1);
a = X\y';
end

