function [ L,U ] = lrp( A )
n = size(A,1);
p = 1:n;
for k = 1:n-1
    [~,m] = max(abs(A(k:n,k)));
    m = m + k-1;
    A([m k],:) = A([k m],:);
    
    A(k+1:n,k) = A(k+1:n,k)/A(k,k);
    A(k+1:n,k+1:n) = A(k+1:n,k+1:n) - A(k+1:n,k)*A(k,k+1:n);
end
L = speye(n) + tril(A,-1);
U = triu(A,0);
end