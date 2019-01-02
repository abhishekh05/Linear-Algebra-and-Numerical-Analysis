function [x_newton, err] = newton(f,f_prime,a,tol,iterations)

% Give initial guesses.
% Solves it by newton method.
iter = 0;
if(f_prime(a) == 0)
    disp("First derivative zero, cannot proceed")
    x_newton = Inf;
    err = Inf;
    return
end
x_newton = a - (f(a)/f_prime(a));
err = abs(f(x_newton));
    while err > tol && iter < iterations
        disp(err);
        if(f_prime(x_newton) == 0)
             disp("First derivative zero, cannot proceed")
             x_newton = Inf;
             err = Inf;
             return
        end
        x_newton = x_newton - (f(x_newton)/f_prime(x_newton));
        if(abs(f(x_newton)) > err)
            disp("Divergent")
            x_newton = "";
            return
        end
        err = abs(f(x_newton));
        iter = iter + 1;
        
    end