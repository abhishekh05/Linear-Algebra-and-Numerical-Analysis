A=zeros(15,40)
%FOR H
A([2:9],2)=1
A([2:9],3)=1
A([5:6],4)=1
A([5:6],5)=1
A([2:9],6)=1
A([2:9],7)=1
%For E
A([3:10],10)=1
A([3:10],11)=1
A(3,[12:15])=1
A(4,[12:15])=1
A(6,[12:15])=1
A(7,[12:15])=1
A(9,[12:15])=1
A(10,[12:15])=1
%For L
A([4:11],18)=1
A([4:11],19)=1
A(10,[20:23])=1
A(11,[20:23])=1
%For L 
A([5:12],26)=1
A([5:12],27)=1
A(11,[28:31])=1
A(12,[28:31])=1
%For O
A([6:13],34)=1
A([6:13],35)=1
A(6,[36:37])=1
A(7,[36:37])=1
A(12,[36:37])=1
A(13,[36:37])=1
A([6:13],38)=1
A([6:13],39)=1
figure()
spy(A)

%SVD decompostion
[U,S,V]=svd(A)
B=U*S*V.'
x=[];
for i=1:12
    x=[x;S(i,i)]
end
figure()
plot(x)
figure()
semilogy(x)
M=zeros(15,40)
r=rank(A)
for i=1:r
    M=U(:,1:i)*S(1:i,1:i)*V(:,1:i)'
    figure()
    pcolor(M)
    colormap('gray')
    set(gca,'Ydir','reverse')
end

%The exact rank of A is 10


