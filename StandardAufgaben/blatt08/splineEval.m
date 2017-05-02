function ys = splineEval(xs, c, m)
    n = size(c, 1);
    k = floor(m/2);
    
    ys = zeros(size(xs));    
    for ii=1:n
        ys = ys + c(ii) .* bSpline(xs-ii+1+k, m);
    end
end