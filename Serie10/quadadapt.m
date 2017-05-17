function [IA,g] = quadadapt(f,a,b,fa,fb,tol)
m=(a+b)/2;
h=(b-a);
fm = f(m);
IT = (h/2)*(fa+fb);
IS = (1/3)*IT+(2/3)*h*fm;
if abs(IS-IT) >= tol
  [IA1, g1] = quadadapt(f,a,m,fa,fm,tol/2);
  [IA2, g2] = quadadapt(f,m,b,fm,fb,tol/2);
  IA = IA1+IA2;
  g = [g1, g2(2:end)];
else
  IA = IT;
  g = [a, b];
end
end