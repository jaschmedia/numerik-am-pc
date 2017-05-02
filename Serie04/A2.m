function A2()
x = [-2,-1,1,2];
y = [1538,911,209,62];
z = [3,4,5,6];
%arrayfun(@(zz) lagrange_interpol(x,y,zz), z)
lagrange_interpol(x,y,z)
end

