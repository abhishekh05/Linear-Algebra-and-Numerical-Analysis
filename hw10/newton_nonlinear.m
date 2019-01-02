function [solution] = newton_nonlinear(MyFunc,Jacobian,Guess,tol)

x = Guess;
error = 2*tol;
while error > tol
F = feval(MyFunc,x);
J = feval(Jacobian,x);
dx = J\(-F);
x = x+dx;
F = feval(MyFunc,x);
error = max(abs(F));
end 
solution = x;
return