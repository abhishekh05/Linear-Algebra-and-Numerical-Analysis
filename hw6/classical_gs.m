function [Q,R] = gs(X)
    [m,n] = size(X);
    Q = zeros(m,n);
    R = zeros(n,n);
    V = zeros(m,n ); %One row
    for j = 1:n
        V(:,j) = X(:,j);
        for i = 1:j-1
            R(i,j) = Q(:,i)'*X(:,j);
            V(:,j) = V(:,j) - R(i,j)*Q(:,i);
        end
        R(j,j) = norm(V(:,j));
        Q(:,j) = V(:,j)/R(j,j);
     end
end