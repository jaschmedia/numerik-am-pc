load('Pts.txt');

[X1,Y1]=meshgrid(0:10);
[X2,Y2]=meshgrid(0:0.1:10);

s = spline_2D(X2,Y2,Pts);

mesh(X1,Y1,Pts);
figure
surf(X2,Y2,s);