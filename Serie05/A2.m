load('x_k.txt');
load('y_k.txt');
load('y_orig.txt');

n=length(y_k);
gammas=fast_fourier_transform(y_k,n);
betas=(1/n)*conj(gammas);
[a,b]=trigon_coeff(betas,n);
a=real(a);
b=real(b);

if true
  ind = find(abs(a) > 10^-4);
  ind = ind(ind < 15);
  a(ind)=0;
  ind = find(abs(b) > 10^-4);
  ind = ind(ind < 15);
  b(ind)=0;
  ind = find(abs(a) > 10^-4);
  ind = ind(ind > 100);
  a(ind)=0;
  ind = find(abs(b) > 10^-4);
  ind = ind(ind > 100);
  b(ind)=0;
end

ix=(0:(pi/1000):(2*pi))';
iq=trigon_interpol(x_k,a,b,n);


subplot(2,2,1);
plot(x_k,y_orig);
subplot(2,2,2);
plot(x_k,iq);
subplot(2,2,3);
plot(1:512,abs(y_orig-iq));
subplot(2,2,4);
plot(x_k,y_orig,x_k,iq);