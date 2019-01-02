m=50
n=12
t=linspace(0,1,m);
b=cos(4*t);
A=vander(t);
A=fliplr(A);
A=A(:,1:12);
A_trans=transpose(A);
%Part a
A_star = inv(A_trans*A)*A_trans;
solution= A_star*b'
%part b
[modern_Q,modern_R] = Modern_gram(A);
Y=modern_Q.'*b.';
sol_modern= modern_R\Y
%part c
[house_Q,house_R]=householder(A);
Y=house_Q.'*b.';
sol_house= house_R\Y

%part d
[matlab_Q,matlab_R]=qr(A);
Y=matlab_Q.'*b.';
sol_matlab= matlab_R\Y
%part e
part_e=A\b.'
figure()
plot(solution)
hold on
plot(sol_modern)
hold on 
plot(sol_house)
hold on 
plot(sol_matlab)
hold on 
plot(part_e)

%The error difference between the plots of the different methods
%shows as a minimum and theres not much difference. 

