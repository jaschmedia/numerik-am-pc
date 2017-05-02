function [ P ] = per_mat( p )
%PER_MAT Summary of this function goes here
%   Detailed explanation goes here
[m,n] = size(p);
P =zeros(n);
for i=1:n
  j = p(m,i);
  P(j,i)=1;
end
end

