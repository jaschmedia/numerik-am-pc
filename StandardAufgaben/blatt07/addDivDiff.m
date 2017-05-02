function [xe, Ne] = addDivDiff(x, N, xi, yi)
xe = [xi; x];
Ne = zeros(size(N));
Ne(1)=yi;
for i=1:length(N)
  %Ne(i+1) = (Ne(i)-N(i))/(xi-x(i));
  Ne(i+1) = (N(i)-Ne(i))/(x(i)-xi);
end
end