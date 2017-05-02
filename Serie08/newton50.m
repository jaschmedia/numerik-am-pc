function [ z ] = newton50( f,df,z1 )
z=zeros(50,1);
z(1)=z1;
for i=1:49
  z(i+1)=z(i)-f(z(i))/df(z(i));
end
end