% Part B
x=linspace(0, 50, 10);
th = x*(180\pi) 

plot(th, th)
hold on
sin_func = sin(th)
plot(th, sin_func)
legend("Theta", "Sin(Theta)")

%We find the point at which 

percentage_d = (th - sin_func)./sin_func;

for i = 1:length(percentage_d)
    if percentage_d(i) > 0.0500
        index = i;
        break
    end
end

asin(th(index))*180/pi

%The theta value of 35.57 with the small angle  
%approximation gives us a 5% error.

%part
time_s = [0 25]
%initial value condition
yo = [1.0 1.0]
[t,y] = ode45('fn',time_s, yo );
figure;
subplot(1,2,1)

plot(t,y(:,1),'-');
xlabel('time');
title('\theta (t)');


%figure;
subplot(1,2,2)
plot(t,y(:,2),'-');
xlabel('time');
title('theta');
