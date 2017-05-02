disp('Normal gauss')
A = toeplitz(3*666:-1:1);
B = A;
tic;
B = gauss(B);
toc
L = eye(size(B)) + tril(B, -1);
U = triu(B);
norm(A - L*U)

disp('Gauss Rank 1')
A = toeplitz(3*666:-1:1);
B = A;
tic;
B = gaussRank1(B);
toc
L = eye(size(B)) + tril(B, -1);
U = triu(B);
norm(A - L*U)