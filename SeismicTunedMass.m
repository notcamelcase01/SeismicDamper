clc
close all
clear all

xg = .01;
w1 = 1;
we = 1;
eta = 0.2;
w2 = 1;

dt = .05;
t_span = 0:dt:dt*1000;
x0 = [0 0 0 0]; %x1 , x1dot , x2 , x2dot 
f = @(t,x)[x(2);
    w2^2*eta*x(3) - (w2^2*eta + w1^2)*x(1) + we*we*xg*sin(we*t);
    x(4);
    we*we*xg*sin(we*t)-w2^2*(x(3)-x(1))];
[t,x] = ode45(f,t_span,x0);
plot(t,x(:,1));
hold on
xg = .01;
w1 = 1;
we = 1;
eta = 0.0;
w2 = 0;
f1 = @(t,x)[x(2);
    w2^2*eta*x(3) - (w2^2*eta + w1^2)*x(1) + we*we*xg*sin(we*t);
    x(4);
    we*we*xg*sin(we*t)-w2^2*(x(3)-x(1))];
[t,x] = ode45(f1,t_span,x0);
plot(t_span,x(:,1));
hold off



