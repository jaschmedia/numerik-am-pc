function [A, p] =  gaussGAXPY(A)
    [n,~] = size(A);
    p = [1:n];
    for j = 1:n-1
        [~,m] = max(abs(A(j:n,j)));
        m = m + j-1;
        p([m j]) = p([j m]);
        A([m j],:) = A([j m],:);
        A([j+1:n],j) = A([j+1:n],j)/A(j,j);
        for k = 2:j+1
            A(k:n,j+1) = A(k:n,j+1) - A(k-1,j+1)*A(k:n,k-1);
        end
    end
end