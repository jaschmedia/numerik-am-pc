function [ beta ] = beta_coeff( y,n )
%BETA_COEFF Summary of this function goes here
%   Detailed explanation goes here
beta=zeros(n,1);

einheitswurzel=exp(2*pi*1i/n);
for l=1:n
  summ=0;
  for j=0:n-1
    summ=summ+y(j+1)*(einheitswurzel)^(-j*(l-1));
  end
  beta(l)=(1/n)*summ;
end

end

