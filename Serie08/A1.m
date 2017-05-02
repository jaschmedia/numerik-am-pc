function A1()
f = @(z) z.^6-1;
df = @(z) 6.*z.^5;

c=sin(pi/3);
omega = [1,0.5+c*1i,-0.5+c*1i,-1,0.5-c*1i,-0.5-c*1i];

plot(real(omega),imag(omega),'o')
axis([-2 2 -2 2])
axis('square')

while true
  [x,y,button] = ginput(1);
  if button ~= 1
    break
  end
  
  c = newton50(f,df,x+1i*y);
  plot(real(c),imag(c),'ro-',real(omega),imag(omega),'o')
  axis([-2 2 -2 2])
  axis('square')
end

end