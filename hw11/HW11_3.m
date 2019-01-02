clear;
clc;
close all;

f = str2func('f');

exact_integral = integral(f, 1, 2);


simp = -1;
trap = -1;
gauss = 0;

iter_simp = 0;
while(abs((exact_integral - simp)/exact_integral) > 0.001)
    iter_simp = iter_simp + 1;
    simp = simpsons(f,1,2,iter_simp);
end

iter_trap = 0;
while(abs((exact_integral - trap)/exact_integral) > 0.001)
    iter_trap = iter_trap + 1;
    trap = trapez(1,2,iter_trap,f);
end

[x, c] = gauss_point(1, 2);
f_vals = f(x);
q_I = dot(c,f_vals);
error_gauss = abs((exact_integral-q_I)/exact_integral);
iter_simp
iter_trap
error_gauss