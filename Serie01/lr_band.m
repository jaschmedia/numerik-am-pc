function [ L,R ] = lr_band( A, p, q )
%LR_BAND Summary of this function goes here
%   Detailed explanation goes here
[m,n]=size(A); % get the size of the matrix

L = eye(n); % we can just use n because A is square.
R = A;

for k=1:n-1
  for i=k+1:min(n,k+q)
    L(i,k) = R(i,k)/R(k,k);
    for j=k:min(n,k+p)
      R(i,j) = R(i,j) - L(i,k)*R(k,j);
    end
  end
end

end