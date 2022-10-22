clc
clear 
close all

%%Using eigen value method to get Modes of Vibration for a 3 story Building

M = diag([2250 2250 2250]);
K = [10364.44*2 -10364.44 0;
    -10364.44 10364.44*2 -10364.44;
    0 -10364.44 10364.44];

[V,D] = eig(K/2.25);
D = sqrt(D);

V(:,1) = V(:,1)/V(3,1);
V(:,2) = V(:,2)/V(3,2);
V(:,3) = V(:,3)/V(3,3);
Y = [0,1,2,3];
V = V';
figure;


subplot(1,3,1);
plot([0,V(1,:)],Y,'-o');

grid on
subplot(1,3,2);
plot([0,V(2,:)],Y,'-o');



grid on
subplot(1,3,3);
plot([0,V(3,:)],Y,'-o');

grid on