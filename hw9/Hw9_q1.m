clc
clear
syms x
L=pi
f=(sin(x)).^2
sum_f=0
n=5
a0=(1/L)*int(f,x,[-L,L]); 
 for i = 1:n    
 
 an=(1/L)*int(f*cos(i*x),x,[-L,L]);
 bn=(1/L)*int(f*sin(i*x),x,[-L,L]);   
 sum_f=sum_f+(an*cos(i*x)+bn*sin(i*x)) 
 
 end 
 fn = sum_f + a0/2;
 figure
 ezplot(x,f,[-L,L])
 
 hold on;
 ezplot(x,fn,[-L,L])
 hold off
 %Q1 part1 b
syms x
L=pi
n=5
fn1 = 0;
sum_f1 = 0;
sum_f2  = 0;
fn2 = 0;

a01=(1/L)*int(x+pi,x,[-L,0]); 
a02=(1/L)*int(x,x,[0,L]); 

 for i = 1:n    
 
 an1=(1/L)*int((x+pi)*cos(i*x),x,[-L,0]);
 bn1=(1/L)*int((x+pi)*sin(i*x),x,[-L,0]);   
 sum_f1=sum_f1+(an1*cos(i*x)+bn1*sin(i*x)) 
 
 an2=(1/L)*int(x*cos(i*x),x,[0,L]);
 bn2=(1/L)*int(x*sin(i*x),x,[0,L]);   
 sum_f2=sum_f2+(an2*cos(i*x)+bn2*sin(i*x))
 end 
 fn1 = sum_f1 + a01/2;
 fn2 = sum_f2 + a02/2;
 fn_fin=fn1+fn2
 
 figure
 ezplot(x,fn_fin,[-pi,pi]);
 hold on
 fplot(x+pi,[-L,0])
 hold on
 fplot(x,[0,L])
 
