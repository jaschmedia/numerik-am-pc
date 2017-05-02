function [x,u] = RWA_bugged(n,f_handle)

    h = 1/n;

    x = (0:n)*h;

    f = (h^2*f_handle(x))';

    f(1) = 0;
    f(n+1) = 0;

    A = spdiags([-ones(n+1,1), 2*ones(n+1,1), -ones(n+1,1)], -1:1, n+1, n+1);

    A(1,1) = 1;
    A(1,2) = 0;

    A(n+1,n+1) = 1;
    A(n+1,n) = 0;
    
    u = A\f;

end