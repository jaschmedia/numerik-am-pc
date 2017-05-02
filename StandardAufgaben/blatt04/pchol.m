function [ L, p ] = pchol( A, tol )
[~,n] = size(A);
L = zeros(n);
p = 1:n;
d = diag(A);
tr = trace(A);
k = 1;
while k <= n && tr > tol
  [~,pivl] = max(d(p(k:n)));
  p([pivl k]) = p([k pivl]);
  L(p(k),k) = sqrt(d(p(k)));
  L(p(k+1:n),k) = A(p(k+1:n),p(k))/L(p(k),k);
  L(p(k+1:n),k) = L(p(k+1:n),k) - L(p(k+1:n),1:k-1)*L(p(k),1:k-1)'/L(p(k),k);
  d(p(k:n)) = d(p(k:n)) - L(p(k:n),k).^2;
  tr = sum(abs(d(p(k:n))));
  k = k + 1;
end
end

