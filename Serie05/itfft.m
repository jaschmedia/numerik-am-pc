function [ a,b,betas ] = itfft( y,n )
gammas=fast_fourier_transform(y,n);
betas=(1/n)*conj(gammas);
[a,b]=trigon_coeff(betas,n);
a=real(a);
b=real(b);

end

