
for i=2:11

%Classical Gram-Schmidt
[class_Q,class_R] = gs(A)

%Modern Gram-Schmidt
[modern_Q_hilb,modern_R_hilb] = Modern_gram(A)

%Householder Factoriation
[house_Q,house_R]=householder(A)

end 
 