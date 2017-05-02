function [ gamma ] = fast_fourier_transform( y, n )
%FAST_FOURIER_TRANSFORM Summary of this function goes here
%   Detailed explanation goes here
if n==2
  %gamma = [y(1)+y(2);y(1)-y(2)];
  gamma = [1,1;1,-1]*y;
else
  n=n/2;
  c=fast_fourier_transform(y((1:n)*2-1),n);
  d=fast_fourier_transform(y((1:n)*2),n);
  for k=0:n-1
    d(k+1)=exp(pi*1i*k/n)*d(k+1);
  end
  gamma=[c+d;c-d];
end
end