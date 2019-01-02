clear;
clc;
close all;
syms f(x)
f_x = @(x)sin(x)-x^3;
f_prime = inline(diff(f_x,x));
[root_bi1, error_bi1] = bisection(f_x, 0.5, 1, 10^-6, 1000)
[error_falsi3] = falsi(f_x, 0.5, 1, 10^-6, 1000)
[sol_newton, error_newton1] = newton(f_x, f_prime, 1, 10^-6, 1000)
error_bi = zeros(100);
error_falsi = zeros(1, 100);
error_newton = zeros(1, 100);
for i = (1:100)
    [root_bi1, error_bi(i)] = bisection(f_x, 0.5, 1, -realmax, i);
    [root_fal1,error_falsi(i)] = falsi(f_x, 0.5, 1, -realmax, i);
    [sol_newton, error_newton(i)] = newton(f_x, f_prime, 0.5, -realmax, i);
end
figure;
semilogy((1:100), error_bi);hold on;
semilogy((1:100), error_falsi);
semilogy((1:100), error_newton);
legend("Bisection", "Regular Falsi", "Newton")
title("Errors")