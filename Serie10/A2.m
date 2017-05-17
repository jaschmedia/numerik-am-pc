f1 = @(x) sqrt(abs(x));
f2 = @(x) sin(1/x);

[I1,g1] = quadadapt(f1,-1,1,1,1,10.^-6);
[I2,g2] = quadadapt(f2,0.01,1,f2(0.01),f2(1),10.^-6);

d1 = abs((4/3)-I1);
d2 = abs(0.5039818932-I2);

disp(['Error f1: ', num2str(d1)]);
disp(['Intervalle f1: ', num2str(length(g1))]);
disp(['Error f2: ', num2str(d2)]);
disp(['Intervalle f2: ', num2str(length(g2))]);

% b
% Für f1: unmöglich
% Für f2: 2.787287904316667e+06 (2787288)