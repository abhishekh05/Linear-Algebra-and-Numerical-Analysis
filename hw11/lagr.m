function l = lagr(x,p_x,p_y)
n=size(p_x,2);
A=ones(n,size(x,2));
for i=1:n
  for j=1:n
     if (i~=j)
        A(i,:)=A(i,:).*(x-p_x(j))/(p_x(i)-p_x(j));
     end
  end
end
l=0;
for i=1:n
   l=l+p_y(i)*A(i,:);
end
end