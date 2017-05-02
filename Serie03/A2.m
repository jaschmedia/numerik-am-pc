load A.txt
A = spconvert(A);
load b.txt

[n,m] = size(A)

x=A\b;

[x1,L1,R1,P1] = solve_lr_pivot2(A,b);

L2=tril(cholesky2(A));
R2=L2';

y2 = forward_sub_pivot(L2,b);
x2 = backward_sub_pivot(R2,y2);

d1=norm(x1-x)
d2=norm(x2-x)

subplot(2,3,1);
spy(A)
subplot(2,3,2);
spy(L2)
subplot(2,3,4);
spy(P1)
subplot(2,3,5);
spy(L1)
subplot(2,3,6);
spy(R1)
