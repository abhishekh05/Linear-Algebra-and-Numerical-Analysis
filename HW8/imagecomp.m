function[M]=imagecomp(x,y)
%subplot(1,1,1)
[A,B,C]=size(imread(y))
 UB=imread(y);
 UB=double(UB);
if(C==3)
   
    red = UB(:,:,1); % Red channel
    green = UB(:,:,2); % Green channel
    blue = UB(:,:,3); % Blue channe
    [U_red,S_red,V_red]=svd(red);
    [U_blue,S_blue,V_blue]=svd(blue);
    [U_green,S_green,V_green]=svd(green);
    %r=rank(ub);
    %for i=1:x
        M_red=U_red(:,1:x)*S_red(1:x,1:x)*V_red(:,1:x)';
        M_blue=U_blue(:,1:x)*S_blue(1:x,1:x)*V_blue(:,1:x)';
        M_green=U_green(:,1:x)*S_green(1:x,1:x)*V_green(:,1:x)';
        M=cat(3,M_red,M_green,M_blue);

    %end
else
    [U,S,V]=svd(UB)
    M=U(:,1:x)*S(1:x,1:x)*V(:,1:x)';
%imshow(uint8(M))
end