clc
clear

n = 5;
a = 2;
b = 3;

A = 2*ones(a,n);
B = zeros(b,n);

A(a,:) = 0:n-1;
A(a-1,1) = 7;
A(a-1,4) = 10;
A = A.^3;

for i = 1:b
    if i == 2
        B(2,i) = A(1,i) + i;
    else
        B(2,i) = A(1,i) + 20;
    end
end
B([1,3],:) = 5*ones(2,5);
B(b-a,2) = 12;
C = [A;B]