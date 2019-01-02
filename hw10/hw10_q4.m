clear;
clc;
close all;
syms f(x)
f_x = @(x) 100 - 2*x*sinh(97/(2*x));
f_prime = inline(diff(f_x,x));
[root_newton, error_newton1] = newton(f_x, f_prime, 8, 10^-6, 1000)

func = @(x) root_newton*cosh(x/root_newton);
figure;
fplot(func, [-97/2 97/2])