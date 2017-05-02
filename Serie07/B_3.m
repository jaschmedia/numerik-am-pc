function [ b ] = B_3( x )
%B_3 Summary of this function goes here
%   Detailed explanation goes here
b=zeros(size(x));
c1 = abs(x) <= 1;
c2 = 1 < abs(x) & abs(x) <= 2;
% c3 = 2 < abs(x);
b(c1)=(2-abs(x(c1))).^3-4.*(1-abs(x(c1))).^3;
b(c2)=(2-abs(x(c2))).^3;
b = b/6;
end

