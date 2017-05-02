function b = lsolveGAXPY(L, b)
    [n,~] = size(L);
    for j = 1:n-1
        b(j+1:n) = b(j+1:n) - b(j)*L(j+1:n,j);
    end
end