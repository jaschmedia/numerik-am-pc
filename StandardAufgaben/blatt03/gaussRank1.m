function lu = gaussRank1(A)
    [n,~] = size(A);
    lu = A;
    for j = 1:n-1
        lu(j+1:n,j) = lu(j+1:n,j)/lu(j,j);
        lu(j+1:n,j+1:n) = lu(j+1:n,j+1:n) - lu(j+1:n,j)*lu(j,j+1:n);
    end
end