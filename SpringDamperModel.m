clc
close all
clear all

wn = 1;
eta = 0.1;
dt = .05;
t_span = 0:dt:50;
x0 = [1 0]; %x1 , x1dot , x2 , x2dot 
f = @(t,x)[x(2);
    -(2*eta*wn*x(2)+x(1)*wn^2)];
[t,x] = ode45(f,t_span,x0);
plot(t_span,x(:,1));
