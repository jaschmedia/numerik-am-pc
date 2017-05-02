function [ K ] = spline_coeff( x, y )
% Indices are script based, index calls are adjusted with a +1 or 1+
n = length(x)-1;
h = diff(x);
f = diff(y)./diff(x);
M=diag([h((0:(n-2))+1).^(-1);1],-1)+diag([1;h((0:(n-2))+1+1).^(-1)],1)+...
  diag([2;2*(h((0:(n-2))+1).^(-1)+h((0:(n-2))+1+1).^(-1));2],0);
d(0+1)=3*f(1);
d(n+1)=3*f(n);
d((1:(n-1))+1)=3*(f((1:(n-1)))./h((1:(n-1)-1+1)-1+1)+f((1:(n-1))+1)./h((1:(n-1))+1));
p=M\d';
A = y((1:n)-1+1);
B = f;
C = (p((1:n)+1)-f)./(h.^2);
D = (p((1:n)-1+1)-f)./(h.^2);
K = [A B C D];
end