function [ p ] = approx_cos_3( z )
%APPROX_COS_1 Summary of this function goes here
%   Detailed explanation goes here
x=[0,pi/6,pi/3,2*pi/3,5*pi/6,7*pi/6,4*pi/3,5*pi/3,11*pi/6,2*pi];
y=[1,sqrt(3)/2,0.5,-0.5,-sqrt(3)/2,-sqrt(3)/2,-0.5,0.5,sqrt(3)/2,1];

p=lagrange_interpol(x,y,z);
end

