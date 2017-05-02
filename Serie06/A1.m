function A1()
x=[0;0.5;1];
y=[1;-1;0.5];
z=[0.2;0.4;0.6;0.8];

K = spline_coeff(x,y);
disp('Aufgabe 1, c) (i):');
for i=1:4
  disp([char(64+i),' = [',regexprep(num2str(K(:,i)'), '\s+', '; '),']']);
end
disp(' ');

s = spline_interpol(K,x,z);
disp('Aufgabe 1, c) (ii):');
for i=1:4
  disp(['s(', num2str(z(i)), ') = ', num2str(round(s(i),2));]);
end
end