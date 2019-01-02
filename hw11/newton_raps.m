function [ x, error_m, total_iterations ] = newton_raps( func, jacobian, x0, tol, iterations )
x = x0;
for i = 1:iterations
    f = func(x);
    error_m(i) = norm( func(x) )/norm( func(x0) );
    if( error_m(i) < tol )
        break
    end
    J = jacobian(x);
    delta_x = J\f;
    x = x - delta_x;
end
total_iterations = i;