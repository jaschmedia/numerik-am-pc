function [ z ] = newton( f,df,z1 )
z=z1;
for i=1:49
 z=z-f(z)./df(z);
end
end