clc;
clear;
w=-2*pi:0.01*pi:2*pi;
n=0:9;
x=ones(1,10);

subplot(3,1,1);
stem(n,x,'r','linewidth',2);
title('Discrete Signal x(n)');
xlabel('n-->');
ylabel('x(n)-->');
grid on;
axis([-1 13 -1 2]);

y=x*exp(-1j*n'*w);

subplot(3,1,2);
plot(w,abs(y),'k','linewidth',2);
title('Magnitude');
xlabel('w-->');
ylabel('abs(y)');
grid on;

subplot(3,1,3);
plot(w,angle(y),'b','linewidth',2);
title('Phase Plot');
xlabel('w-->');
ylabel('angle(y)-->');
grid on;