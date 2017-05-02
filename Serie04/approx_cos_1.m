function [ p ] = approx_cos_1( z )
%APPROX_COS_1 Summary of this function goes here
%   Detailed explanation goes here
x=[0,pi/2,pi,3*pi/2,2*pi];
y=[1,0,-1,0,1];

p=lagrange_interpol(x,y,z);
end

