X = [0.1; 0.2; 0.4; 0.6; 0.9; 1.3; 1.5; 1.7; 1.8];
Y = [0.75; 1.25; 1.45; 1.25; 0.85; 0.55; 0.35; 0.28; 0.18];
iteration = 5;
tol = 1.0e-10;
a0 = 1;
a1 = 1;
initial_guess = [a0;a1];
alpha = 1;
Y_hat = initial_guess(1) * X .* exp(initial_guess(2)*X);
residuals = Y - Y_hat;
so = (norm(residuals))^2;
residuals = 1;
while(norm(residuals)/norm(Y-Y_hat)>tol)
    Y_hat = initial_guess(1) * X .* exp(initial_guess(2)*X);
    residuals = Y - Y_hat;
    S = (norm(residuals))^2;
    if (S>so)
        break
    end
    drda0 = -X.*exp(initial_guess(2)*X);
    drda1 = -initial_guess(1)*(X.^2).*exp(initial_guess(2)*X);
    jac = [drda0 drda1];
    D = (-1)*(jac'*jac)\(jac'*residuals);
    initial_guess = initial_guess + alpha * D;
    alpha = alpha + 0.1; 
    so = S;
end
figure
plot(X,Y,'ko') 
hold on
syms x y 
fimplicit(y-initial_guess(1)*x*exp(initial_guess(2)*x), 'b'); 
axis([-0.5 5 0 1.5]) 
%1d
% Newton method will fit better because as we have eliminate the
% second derivative function as we assume it to be really small
%hence, this becomes gauss-newton.
% Computationally gauss-newton performs better as we do not have to compyt the second derivative function
%Although,newton is computationally expensive but is stable
% performs better