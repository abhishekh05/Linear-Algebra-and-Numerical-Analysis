store_mat=[];
store_class=[];
store_modern=[];
store_house=[]
values = 2:10;
for i=2:10
A=hilb(i)
I=eye(i)
[Q_mat,R_mat] = qr(A)
store_mat=[store_mat norm(Q_mat'*Q_mat-I)];
[Q_hilb,R_hilb] = classical_gs(A)
store_class=[store_class norm(Q_hilb'*Q_hilb-I)]
[modern_Q_hilb,modern_R_hilb] = Modern_gram(A)
store_modern=[store_modern norm(modern_Q_hilb'*modern_Q_hilb-I)]
[house_Q_hilb,house_R_hilb]=householder(A)
store_house=[store_house norm(house_Q_hilb.'*house_Q_hilb-I)]
end
store_mat
store_class
store_modern
subplot(4,1,1) 
plot(values, store_mat)
subplot(4,1,2)
plot(values, store_class)
subplot(4,1,3) 
plot(values, store_modern)
subplot(4,1,4) 
plot(values, store_house)
%From the graph we can infer that the the householder and the classical graphical had the most error followed by the QR function and modified Gram-Schimdt  