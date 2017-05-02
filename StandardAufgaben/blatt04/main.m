[X, Y] = meshgrid(linspace(0, 1, 4001));
A = exp(-(X - Y).^2);
[L, p] = pchol(A, 1e-9);
B = L*L.';
norm(A(:) - B(:))
