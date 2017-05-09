f = @(x) 2./(x.^2-2*sqrt(3).*x+4);

i = 1:12;
h = 2.^(-i)*(sqrt(3)-1);

Qs = arrayfun(@(hi) quad_simpson(f,2,1+sqrt(3),hi),h);
es = abs((pi/3-Qs));

loglog(h,es,h,h.^4,h,h.^5)
legend('Error', 'Quad', 'Quint');