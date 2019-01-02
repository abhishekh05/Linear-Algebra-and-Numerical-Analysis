
function [Q,A] = householder_fac(A)
[m,n] = size(A);
Q = eye(m)
for k = 1:n
    mat = A(k:m,k);
    e = eye(m);
    error_v = sign(mat(1)) * norm(mat,2) * e(k:m,k) +mat;
    error_v = error_v/norm(error_v);
    A(k:m,k:n) = A(k:m,k:n) - 2*error_v*(error_v'*A(k:m,k:n));
    for j = 1:m
           Q(k:m,j) = Q(k:m,j)- error_v*(2*(error_v'*Q(k:m,j)));
    end
end
Q = Q';i
end