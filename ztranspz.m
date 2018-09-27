clc;
clear all;		
w = -2*pi:pi/100:2*pi;
a = [1 -0.9];
b = [1 0];
subplot(3,1,1);
zplane(b,a);
y=freqz(b,a,w);
grid on;

subplot(3,1,2);
plot(w,abs(y),'linewidth',1);
title('Magnitude spectrum of y');
xlabel('Frequency(Hz)');
ylabel('Magnitude(unit)');
grid on;

subplot(3,1,3);
plot(w,angle(y),'linewidth',1);
title('Phase spectrum of y');
xlabel('Frequency(Hz)');
ylabel('Angle(Degree)');
grid on;

