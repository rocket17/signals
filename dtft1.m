clc;
clear;
w=-2*pi:0.01*pi:2*pi;
n=-2:3;
x=[2 -3 1 5 6 8];
subplot(3,1,1);
stem(n,x,'r','linewidth',2);
title('Discrete Signal x(n)');
xlabel('n-->');
ylabel('x(n)-->');
grid on;
axis([-4 4 -5 10]);

count1=1;
count2=1;
y=zeros(size(w));
for r=-2*pi:0.01*pi:2*pi;
    

    for n1=-2:3;
       p=x(count1)*exp(-1j*r*n1);
       y(count2)=p+y(count2);
       count1=count1+1;
    end
   count2=count2+1;
   count1=1;
end

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