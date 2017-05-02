n=2^5;
[sx,sy]=saegezahn(n);
sgamma = fast_fourier_transform(sy,n);
sbeta=(1/n)*conj(sgamma);
[sa,sb] = trigon_coeff(sbeta,n);
sa = real(sa);
sb = real(sb);
ix = (0:(pi/1000):(8*pi))';
iq = trigon_interpol(ix,sa,sb,n);

figure;
plot(sx,sy,ix,iq)

