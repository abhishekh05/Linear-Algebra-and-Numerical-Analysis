function int = trapezoidal(a,b,n,func)
h = (b-a)/n;
x = a+h:h:b-h;
int = h/2*(2*sum(func(x))+func(a)+func(b));