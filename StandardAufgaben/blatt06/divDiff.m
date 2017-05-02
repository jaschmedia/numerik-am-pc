function [ N ] = divDiff( x, y )
n=length(y);
N=y;
for i=1:n-1
  N(i+1:n)=(N(i+1:n)-N(i:n-1))./(x(i+1:n)-x(1:n-i));
end
end