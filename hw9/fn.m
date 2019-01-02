
function delta_y = fn(t,y)
delta_y = zeros(2,1);
w = 1;
delta_y(1) = y(2);
delta_y(2) = -w*w*sin(y(1));
end