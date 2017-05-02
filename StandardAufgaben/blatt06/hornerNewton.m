function [ p ] = hornerNewton( N, x, xi )
n=length(N);
p=N(n)*ones(size(xi));
for i=n-1:-1:1
  p = p.*(xi-x(i))+N(i);
end
end

