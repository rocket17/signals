clc;
clear all;
z=[0 10i -10i];
p=[-0.5+5i -0.5-5i -3 -4];
k=2;
s1=zpk(z,p,k);
s2=tf(s1);
w=-2*pi:0.001:2*pi;
h=freqresp(s2,w);
h1=squeeze(h);
subplot(2,2,(1:2));
pzplot(s2);
grid on;

subplot(2,2,3);
plot(w,abs(h1),'linewidth',2);
title('Magnitude','linewidth',2,'fontsize',12);
xlabel('w');
ylabel('Amplitude');
grid on;

subplot(2,2,4);
plot(w,angle(h1),'linewidth',2);
title('phase','linewidth',2,'fontsize',12);
xlabel('w');
ylabel('Angle(Degree)');
grid on;

