A = gallery('orthog', 3*666, -2);
b = ones(size(A, 1), 1);
xm = A\b;

B=A; tic; [B, p] = gaussGAXPY(B); toc