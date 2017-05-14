f = @(x) sqrt(4.*cos(x).^2+sin(x).^2);

approx = 9.688448220547674;

for N=1:30;
  midpointR(N) = midpoint(f,0,2*pi,N);
  trapezR(N) = trapez(f,0,2*pi,N);
end

semilogy(1:30,abs(approx-rm),1:30,abs(approx-rt));
legend('Midpoint', 'Trapez');