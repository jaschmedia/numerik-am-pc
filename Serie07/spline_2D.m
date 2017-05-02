function [ s ] = spline_2D( x1,x2,y )
%SPLINE_2D Summary of this function goes here
%   Detailed explanation goes here
n=length(y);
Y=zeros(n+2);
Y(2:(n+1),2:(n+1))=y;
vY = reshape(Y,(n+2)*(n+2),1);

osl = ones(1,n+1)./6;
fsl = ones(1,n+2).*(2/3);
A=diag(fsl)+diag(osl,-1)+diag(osl,1);
A(1,1)=1; A(1,3)=1; A(n+2,n)=1; A(n+2,n+2)=1; A(1,2)=-2; A(n+2,n+1)=-2;

alpha = kron(A,A) \ vY;
alpha = reshape(alpha,[n+2,n+2]);
s=zeros(size(x1));
for i=-1:(n-1)
  for j=-1:(n-1)
    s=s+alpha(i+2,j+2).*B_3(x1-i).*B_3(x2-j);
  end
end
end

