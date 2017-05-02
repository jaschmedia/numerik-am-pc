## Übungsblatt 2
#### NAME NAME NAME
#### 2017-03-13

### Lösung Aufgabe 5

#### gauss.m
    function [ A ] = gauss( A )
    [~,n]=size(A);
    for j=1:n
      for i=j+1:n
        A(i,j)=A(i,j)/A(j,j);
        for k=j+1:n
          A(i,k)=A(i,k)-A(i,j)*A(j,k);
        end
      end
    end
    end

#### gaussRank1.m
    function [ A ] = gaussRank1( A )
    [~,n] = size(A);
    for j=1:n-1
      A(j+1:n,j)=A(j+1:n,j)/A(j,j);
      A(j+1:n,j+1:n)=A(j+1:n,j+1:n)-A(j+1:n,j)*A(j,j+1:n);
    end
    end


#### main.m

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

#### Output

    >> main
    Normal gauss
    Elapsed time is 43.266586 seconds.

    ans = 1.195951554021476e-10

    Gauss Rank 1
    Elapsed time is 32.879539 seconds.

    ans = 1.195951554021476e-10
