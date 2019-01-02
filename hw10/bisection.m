function [x_r, err] = bisection(f_x,a,b,tol,iterations)
if f_x(a)*f_x(b)>0 
    disx('Choose another guess')
else
    x_r = (a + b)/2;
    err = norm(f_x(x_r));
    i=1;
    while err > tol && i<iterations
        if f_x(a)*f_x(x_r)<0 
           b = x_r;
        else
           a = x_r;          
        end
        x_r = (a + b)/2; 
        err = norm(f_x(x_r));
        i=i+1;
    end
end    
end