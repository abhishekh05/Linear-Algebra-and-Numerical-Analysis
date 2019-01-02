clc
clear
x = [0 1 2 3 4 5 6];

b=[-0.002 1.1 1.98 3.05 3.95 5.1 6.02]
third_column=x.^2
input= [1 1 1 1 1 1 1;x ;third_column]
[L,U]=lu(input')
y=L\b'
unknown=U\y
test=unknown'*input
%plot(x,b,'o')  
%hold on;
plot(x,test,'o')

%Question 3
%On observing the plots of linear and quadratic functions, its seen that
%the data points are covered by both and there's not much of an advantage
%that we could get out of the quadratic function. Hence linear function
%proves to be a better fit.