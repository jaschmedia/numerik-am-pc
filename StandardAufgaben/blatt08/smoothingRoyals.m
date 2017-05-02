z = repmat([5; 1.7; 4; 1.7], 7, 1);
n = length(z);
t = (0:n-1).';

n1 = 3;  n2 = 2;
for m = 0:n1*n2-1
    c = splineCoeffPeriodic(z, m);
    ts = linspace(t(1), t(end)+1, 601);
    zs = splineEval(ts, c, m);

    px = sin(t/n*2*pi);
    py = cos(t/n*2*pi);
    pxs = sin(ts/n*2*pi);
    pys = cos(ts/n*2*pi);
    
    subplot(n1, n2, m+1);
    plot3(px, py, z, 'r*', pxs, pys, zs, 'k-', pxs, pys, 0*zs, 'k-');
    hold on;
    surf([pxs; pxs], [pys; pys], [zs; 0*zs], ...
         'EdgeColor', 'none', 'FaceColor', [1, 1, 0]);
    hold off;
    view([-28, 28]);
    axis([-1, 1, -1, 1, -.5, 5.5]);
    title(['m = ' num2str(m)]);
end
