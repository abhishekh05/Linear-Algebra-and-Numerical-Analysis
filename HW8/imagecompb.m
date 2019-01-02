function[M]=imagecompb(x,y,z)
%subplot(1,1,1)
figure();
for i=1:7
    %print(i)
    [M]=imagecomp(x(i),y);
    
    subplot(2,4,i);
    imshow(uint8(M))
end
saveas(gcf,z)

end