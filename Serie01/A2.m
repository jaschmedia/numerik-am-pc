p=[3,5,1,2,4];
myP = [
  [0,0,1,0,0];
  [0,0,0,1,0];
  [1,0,0,0,0];
  [0,0,0,0,1];
  [0,1,0,0,0];
  ];
x=[2,7,1,8,2]';
A=[
  [ 0, 1, 2, 3, 4];
  [-1, 7, 2, 0, 0];
  [-2, 1, 4, 3,-6];
  [-3, 0, 5, 0, 2];
  [-4, 1, 1,-2,-3];
  ];
P=per_mat(p)
disp('Px=');
P*x
disp('xTP=');
x'*P
disp('PA=');
P*A
disp('AP=');
A*P
disp('PAP=');
P*A*P
disp('PAPT=');
P*A*P'

disp('################## part b ##########');

disp('per_sign:');
tic;
per_sign(P)
toc

disp('per_signHS:');
tic;
per_signHS(P)
toc
