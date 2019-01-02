f = @(x)(1+25*(x.^2)).^-1;
five_space=linspace(-1,1,5);
eleven_space=linspace(-1,1,11);
two_one_space=linspace(-1,1,21);
x=linspfive_Aace(-1,1,100);
%a)
figure;
fiveFirst = five_space;
yfiveFirst = lagr(x,fiveFirst,f(fiveFirst));
plot(x,yfiveFirst,'-');
hold on;
plot(x,f(x),'-.');
legend("five_space points", "Function");
hold on;

figure
bEleven = eleven_space;
ybEleven = lagr(x,bEleven,f(bEleven));
plot(x,ybEleven,'-');
hold on;
plot(x,f(x),'-.');
legend("Polynomial ","Function");
title("eleven_space points")

figure
xTwoOne = two_one_space;
yTwoOne = lagr(x,xTwoOne,f(xTwoOne));
plot(x,yTwoOne,'-');
hold on;
plot(x,f(x),'-.');
legend("Polynomial ","Function");
title("Twenty One points")

%b)
xFiveb = five_space;
yFiveb = interp1(x,f(x),xFiveb,'linear');
figure
plot(xFiveb,yFiveb,'-o');
hold on;
plot(x,f(x),'-.');
legend("Using Linear Splines","Actual Function");
title("five_space points")

xElevenb = eleven_space;
yElevenb = interp1(x,f(x),xElevenb,'linear');
figure
plot(xElevenb,yElevenb,'-o');
hold on;
plot(x,f(x),'-.');
legend("Linear Splines","Function");
title("eleven_space points")

xTwoOneb = two_one_space;
yTwoOneb = interp1(x,f(x),xTwoOneb,'linear');
figure
plot(xTwoOneb,yTwoOneb,'-o');
hold on;
plot(x,f(x),'-.');
legend("Linear Splines","Function");
title("Twenty One points")

%c)
FivexC = five_space;
FiveyC = interp1(x,f(x),FivexC,'spline');
figure
plot(FivexC,FiveyC,'-o');
hold on;
plot(x,f(x),'-.');
legend("Cubic Splines (not a knot)","Function");
title("five points")

elevenXC = eleven_space;
elevenYC = interp1(x,f(x),elevenXC,'spline');
figure
plot(elevenXC,elevenYC,'-o');
hold on;
plot(x,f(x),'-.');
legend("Using Cubic Splines(not-a-knot)","Actual Function");
title("eleven points")

TwoOneXC = two_one_space;
TwoOneYC = interp1(x,f(x),TwoOneXC,'spline');
figure
plot(TwoOneXC,TwoOneYC,'-o');
hold on;
plot(x,f(x),'-.');
legend("Cubic Splines","Function");
title("Twenty One points")