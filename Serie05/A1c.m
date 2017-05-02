bt=zeros(1,12);
ft=zeros(1,12);
for j=1:12
  [sx,sy]=saegezahn(2^j);
  tic;
  beta=beta_coeff(sy,2^j);
  bt(j)=toc;
  tic;
  gamma=fast_fourier_transform(sy,2^j);
  fbeta=(2^(-j))*conj(gamma);
  ft(j)=toc;
end

jl=1:12;
figure;
%semilogy(jl,bt,jl,ft,jl,ft(1)*2^jl);
semilogy(jl,bt,'r',jl,ft,'b',jl,bt(1)*2.^jl,'r--',jl,bt(1)*(2.^jl).^2,'r--',jl,ft(1)*2.^jl,'b--',jl,ft(1)*(2.^jl).^2,'b--');
legend('beta\_coeff','fft','b1','b2','f1','f2','Location','NorthWest');