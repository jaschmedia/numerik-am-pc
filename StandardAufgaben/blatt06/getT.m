function [ t ] = getT( x,y,z )
n=length(x);
t=zeros(size(x));
for i=2:n
  t(i)=t(i-1)+(x(i)-x(i-1)).^2 + (y(i)-y(i-1)).^2 + (z(i)-z(i-1)).^2;
end
end

