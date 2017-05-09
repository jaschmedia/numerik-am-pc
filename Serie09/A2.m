f = @(x) exp(-x.^2);

Q38 = [quad_38(f,0,1,1/3)];
i=1;

not_done = true;
while not_done
  i=i+1;
  Q38(i)=quad_38(f,0,1,3^(-i));
  not_done = abs(Q38(i)-Q38(i-1))>=(10^-12);
end
disp(i)