function [x_r,err] = falsi(f,a,b,tol,iterations)
iter = 0;
if f(a)*f(b)>0 
    disp('Try again')
else
    x_r = a + ((b-a)/(f(b)-f(a))*(-f(a)));
    err = abs(f(x_r));
    while err > tol && iter < iterations
        if f(a)*f(x_r)<0
           b = x_r;
        else
           a = x_r;          
        end
        x_r = a + ((b-a)/(f(b)-f(a))*(-f(a)));
        err = abs(f(x_r));
        iter = iter + 1;
    end
end