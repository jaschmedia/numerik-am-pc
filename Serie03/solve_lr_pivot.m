function x = solve_lr_pivot(A,b)
    n = size(A,1);
    p = 1:n;
    for k = 1:n-1
        [~,m] = max(abs(A(k:n,k)));
        m = m + k-1;
        %swap
        p([m k]) = p([k m]);
        A([m k],:) = A([k m],:);
        for i = k+1:n
            A(i,k) = A(i,k)/A(k,k);
            A(i,k+1:n) = A(i,k+1:n) - A(i,k)*A(k,k+1:n);
        end
    end
    L = speye(n) + tril(A,-1);
    U = triu(A,0);
    P = per_mat(p)';
    y = forward_sub(L,P*b);
    x = backward_sub(U,y);
end