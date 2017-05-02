function y = forward_sub(L, b, q)
    [~,n] = size(L);
    for i = 1:n
        div = L(i,i);
        L(i,max(i-q,1):i) = L(i,max(i-q,1):i)/div;
        b(i) = b(i)/div;
        for j = max(i-q,1):i-1
            b(i) = b(i)-L(i,j)*b(j);
            L(i,j) = 0;
        end
    end
    y = b;
end