function y = forward_sub(L, b)
    n = size(L,1);
    for i = 1:n
        div = L(i,i);
        L(i,i:n) = L(i,i:n)/div;
        b(i) = b(i)/div;
        for j = 1:i-1
            b(i) = b(i)-L(i,j)*b(j);
            L(i,j) = 0;
        end
    end
    y = b;
end