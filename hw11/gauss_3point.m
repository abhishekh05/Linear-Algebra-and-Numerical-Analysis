function [ x, w ] = gauss_point(a,b)
w(1) =  1.0; 
w(2) =  w(1);

x(1) = -sqrt(1/3);
x(2) = sqrt(1/3);

%  Transform x 
x = ( a * (1 - x) + b * (1 + x) ) / 2;

%  Transform weights 
w = w * (b - a) / 2;
end