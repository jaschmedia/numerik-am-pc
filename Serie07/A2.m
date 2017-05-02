f = @(x) 1./(1+25.*x.^2);

z=(-1:0.01:1);
[pA5,pB5,pC5] = interpols(f,5,z);
[pA10,pB10,pC10] = interpols(f,10,z);
[pA25,pB25,pC25] = interpols(f,25,z);

subplot(2,3,1);
suptitle('n=5');
plot(z,f(z),z,pA5)
legend('Original', 'A')
subplot(2,3,2);
plot(z,f(z),z,pB5)
legend('Original', 'B')
subplot(2,3,3);
plot(z,f(z),z,pC5)
legend('Original', 'C');
subplot(2,3,4);
plot(z,f(z)-pA5')
legend('Error of A')
subplot(2,3,5);
plot(z,f(z)-pB5')
legend('Error of B')
subplot(2,3,6);
plot(z,f(z)-pC5')
legend('Error of C');

figure;
suptitle('n=10');
subplot(2,3,1);
plot(z,f(z),z,pA10)
legend('Original', 'A')
subplot(2,3,2);
plot(z,f(z),z,pB10)
legend('Original', 'B')
subplot(2,3,3);
plot(z,f(z),z,pC10)
legend('Original', 'C');
subplot(2,3,4);
plot(z,f(z)-pA10')
legend('Error of A')
subplot(2,3,5);
plot(z,f(z)-pB10')
legend('Error of B')
subplot(2,3,6);
plot(z,f(z)-pC10')
legend('Error of C');

figure;
suptitle('n=25');
subplot(2,3,1);
plot(z,f(z),z,pA25)
legend('Original', 'A')
subplot(2,3,2);
plot(z,f(z),z,pB25)
legend('Original', 'B')
subplot(2,3,3);
plot(z,f(z),z,pC25)
legend('Original', 'C');
subplot(2,3,4);
plot(z,f(z)-pA25')
legend('Error of A')
subplot(2,3,5);
plot(z,f(z)-pB25')
legend('Error of B')
subplot(2,3,6);
plot(z,f(z)-pC25')
legend('Error of C');