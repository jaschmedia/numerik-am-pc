f = @(x) sqrt(1-x.^2);

abs((pi/4)-quadadapt(f,0,1,1,0,10^-8))

g = @(x) sin(2*pi*x).^2;

abs((1/2)-quadadapt(g,0,1,0,0,10^-8))