function [ p ] = lagrange_interpol( x,y,z )
%LAGRANGE_INTERPOL2 Summary of this function goes here
%   Detailed explanation goes here
n=length(x);
nz=length(z);
p = zeros(nz,1);
for j=1:n
  L = prod((repmat(z',1,n-1)-repmat(x([1:j-1,j+1:n]),nz,1))./(repmat(x(j),nz,n-1)-repmat(x([1:j-1,j+1:n]),nz,1)),2);
  p = p + y(j)*L;
end
end