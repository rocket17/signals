clc;
clear;
w=-2*pi:0.01*pi:2*pi;
n=0:20;
h=10*0.8.^n;
subplot(3,1,1);
stem(n,h,'r','linewidth',2);
title('Impulse Response of System h(n)');
xlabel('n-->');
ylabel('h(n)-->');
grid on;
axis([-1 20 -5 15]);

q=exp(-1j*n'*w);
y=h*q;

subplot(3,1,2);
plot(w,abs(y),'k','linewidth',2);
title('Magnitude');
xlabel('w-->');
ylabel('abs(y)-->');
grid on;

subplot(3,1,3);
plot(w,angle(y),'b','linewidth',2);
title('Phase Plot');
xlabel('w-->');
ylabel('angle(y)-->');
grid on;