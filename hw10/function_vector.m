function [vector] = function_vector(val)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
f = @(x)[x(1)^3 + x(2) - 1; x(1) + x(2)];
vector = f([val(1);val(2)]);
end

