t=[0 5];
X0=4;
f = @(t,x) -700*x-1000*exp(t);
[time_step,x_1] = ode45(f, t, X0);
length(time_step)
[time_s,x_1] = ode23s(f, t, X0);
length(time_s)

% ode45 takes 4237 steps,However,
% ode23s takes 140 steps