A = [1,2,3;4,5,6;7,8,7;4 2 3;4 2 2];
error_class=[];
error_modern=[];
error_house=[];
I=eye(3);
I_house=eye(5);
%Question 1(a)
[Q,R] = classical_gs(A);
error_class=[error_class norm(Q'*Q-I)]
%Question1(b)
[modern_Q,modern_R] = Modern_gram(A);
error_modern=[error_modern norm(modern_Q'*modern_Q-I)]

%question1(c)
[house_Q,house_R]=householder(A);
error_house=[error_house norm(house_Q'*house_Q-I_house)]

%we can see from the results that the classical Gram-Schmidt has the maximum error and modern Gram-Schmidt and house Holder had a similar error 