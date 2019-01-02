function jac = Jacobian(x)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
syms x1 x2
jac = jacobian([x1^3 + x2 - 1, x1 + x2], [x1, x2]);
jac = subs(jac, [x1 x2], [x(1) x(2)]);
end