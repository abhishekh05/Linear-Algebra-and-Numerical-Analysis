%Q3 
clear;
clc;
close all;
syms f(x)
f_x = @(x) exp(-0.5*x)*(4-x) - 2;
f_prime = inline(diff(f_x,x));
[root_newton, error_newton_2] = newton(f_x, f_prime, 2, 10^-6, 1000)
[root_newton, error_newton_6] = newton(f_x, f_prime,6, 10^-6, 1000)
[root_newton, error_newton_8] = newton(f_x, f_prime, 8, 10^-6, 1000)