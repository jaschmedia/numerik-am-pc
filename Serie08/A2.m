function A2()
f = @(z) z.^6-1;
df = @(z) 6.*z.^5;

h=0.1;
[x,y]=meshgrid(-2:h:2);
z = newton(f,df,x+1i.*y);
surf(x,y,angle(z))
view(2)
shading('flat')
axis('square')
end