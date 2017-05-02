function [ A ] = gauss( A )
[~,n]=size(A);
for j=1:n
  for i=j+1:n
    A(i,j)=A(i,j)/A(j,j);
    for k=j+1:n
      A(i,k)=A(i,k)-A(i,j)*A(j,k);
    end
  end
end
end