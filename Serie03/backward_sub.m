function x = backward_sub(R, y)
    n = size(R,1);
    for i = n:-1:1
        div = R(i,i);
        R(i,i:n) = R(i,i:n)/div;
        y(i) = y(i)/div;
        for j = i+1:n
            y(i) = y(i)-R(i,j)*y(j);
            R(i,j) = 0;
        end
    end
    x = y;
end