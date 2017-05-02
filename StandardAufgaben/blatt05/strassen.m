function [ C ] = strassen( A, B )
%STRASSEN Summary of this function goes here
%   Detailed explanation goes here
[~,n] = size(A);
if n == 1
  C = A*B;
else
  un = 1:(n/2);
  ln = (n/2)+1:n;
  
  A11 = A(un,un);
  A12 = A(un,ln);
  A21 = A(ln,un);
  A22 = A(ln,ln);
  B11 = B(un,un);
  B12 = B(un,ln);
  B21 = B(ln,un);
  B22 = B(ln,ln);
  
  P1 = strassen((A11+A22), (B11+B22));
  P2 = strassen((A21+A22), B11);
  P3 = strassen(A11, (B12-B22));
  P4 = strassen(A22, (B21-B11));
  P5 = strassen((A11+A12), B22);
  P6 = strassen((A21-A11), (B11+B12));
  P7 = strassen((A12-A22), (B21+B22));
  
  C = [(P1+P4-P5+P7), (P3+P5); (P2+P4), (P1+P3-P2+P6)];
end

end

