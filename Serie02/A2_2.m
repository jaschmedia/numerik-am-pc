function A2_2()
    A1 = [
          0,  1;
          1,  0
         ];
    b1 = [2; -4];
    x1 = solve_lr_pivot(A1,b1)
    r1 = b1 - A1*x1
    A2 = [
          27,  -4,  24,   6;
         -29,   8,  -7,   8;
         -16,  25,  28, -18;
           4,   8, -10,  14
        ];
    b2 = [326; 46;   4; 184];
    x2 = solve_lr_pivot(A2,b2)
    r2 = b2 - A2*x2
    A3 = gallery('orthog', 3*666, -2);
    b3 = ones(size(A3,1),1);
    x3 = solve_lr_pivot(A3,b3);
    r3 = norm(b3 -A3*x3)
end