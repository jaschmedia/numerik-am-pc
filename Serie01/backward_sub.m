function x = backward_sub(R, y, p)
    [~,n] = size(R);
    for i = n:-1:1
        div = R(i,i);
        R(i,i:min(i+p,n)) = R(i,i:min(i+p,n))/div;
        y(i) = y(i)/div;
        for j = i+1:min(i+p,n)
            y(i) = y(i)-R(i,j)*y(j);
            R(i,j) = 0;
        end
    end
    x = y;
end