function [ p ] = lagrange_interpol3( x, y, z )
%LAGRANGE_INTERPOL Summary of this function goes here
%   Detailed explanation goes here
n=length(x);
p = 0;
for j=1:n
  L = prod((repmat(z,1,n-1)-x([1:j-1,j+1:n]))./(repmat(x(j),1,n-1)-x([1:j-1,j+1:n])));
  p = p + y(j)*L;
end
end


%for j=1:n
%  L = prod((repmat(z,1,n-1)-x([1:j-1,j+1:n]))./(repmat(x(j),1,n-1)-x([1:j-1,j+1:n])));
%  p = p + y(j)*L;
%end
