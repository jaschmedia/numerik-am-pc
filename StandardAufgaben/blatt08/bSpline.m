function [ ys ] = bSpline( xs, m )
ys = zeros(size(xs));
if m == 0
  ys((-0.5 < xs) & (xs <= 0.5))=1;
else
  ys = ((xs + 0.5*(m+1))./m).*bSpline(xs+0.5,m-1)+...
    ((0.5*(m+1)-xs)./m).*bSpline(xs-0.5,m-1);
end
end