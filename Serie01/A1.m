function A1()
    A = [[7,5,0,0];
         [-4,2,0,0];
         [2,-2,3,4];
         [0,1,0,6]];
    b = [-17;
           0;
         -23;
         -26];
    [L, U] = lr_band(A,1,2);
    y = forward_sub(L,b,2);
    backward_sub(U,y,1)
    A = [[2,0,0,0,1];
         [9,1,0,0,0];
         [0,3,6,0,0];
         [0,0,5,-4,0];
         [0,0,0,2,1]];
    b = [23;
         89;
         66;
         11;
         17];
    [L, U] = lr_band(A,4,1);
    y = forward_sub(L,b,1);
    backward_sub(U,y,4)
    lr_band([0,1;1,0],1,1)
end