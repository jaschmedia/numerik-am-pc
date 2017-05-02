function [ A ] = cholesky( A )
[~,n] = size(A);
for i=1:n
  summ = A(i,i)-sum(A(i,1:i-1).^2);
  if summ < 0
    A = zeros(n);
    break
  end
  A(i,i)=sqrt(summ);
  for j=i+1:n
    A(j,i)=(A(j,i)-sum(A(j,1:i-1).*A(i,1:i-1)))/A(i,i);
  end
end
end