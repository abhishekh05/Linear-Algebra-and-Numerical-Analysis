x = linspace(0, 2*pi, 10);
y = sin(x);
h = (2*pi)/10;
B = secondorderDiff(y,h);
C = fourthorderDiff(B,h);
diff_y = -sin(x);
error_sec = zeros(1,length(100));
error_four = zeros(1,length(100));
 
figure
plot(x, B,'r'); y6j
hold on
plot(x, diff_y,'b');

figure
plot(x, C,'r');
hold on
plot(x, diff_y,'b')