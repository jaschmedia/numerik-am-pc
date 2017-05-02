function [ A ] = gaussRank1( A )
[~,n] = size(A);
for j=1:n-1
  A(j+1:n,j)=A(j+1:n,j)/A(j,j);
  A(j+1:n,j+1:n)=A(j+1:n,j+1:n)-A(j+1:n,j)*A(j,j+1:n);
end
end