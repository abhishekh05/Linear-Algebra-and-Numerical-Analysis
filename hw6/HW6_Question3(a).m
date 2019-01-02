x = [0 1 2 3 4 5 6];
b=[-0.002 1.1 1.98 3.05 3.95 5.1 6.02]

input= [1 1 1 1 1 1 1;x ]
[L,U]=lu(input')
y=L\b'
unknown=U\y
test=input'*unknown

plot(x,b,'o')  
hold on;
plot(x,test)