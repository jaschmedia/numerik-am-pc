function [ p ] = approx_cos_2( z )
%APPROX_COS_1 Summary of this function goes here
%   Detailed explanation goes here
x=[0,pi/3,2*pi/3,pi,4*pi/3,5*pi/3,2*pi];
y=[1,0.5,-0.5,-1,-0.5,0.5,1];

p=lagrange_interpol(x,y,z);
end

