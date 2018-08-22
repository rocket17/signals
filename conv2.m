%Convoluton sum
clc;

%x[n]
x = ones(1,10)
nx = 0:9
subplot(3,1,1),stem(nx,x,'k','linewidth',1.5);
title('step function:');
xlabel('time(in s)-->');
ylabel('step function-->');
axis([-12 12 -2 2]);
grid on;

%h[n]
h = 0.25*ones(1,4)
nh = 0:3
subplot(3,1,2),stem(nh,h,'k','linewidth',1.5);
title('step function:');
xlabel('time(in s)-->');
ylabel('step function-->');
axis([-12 12 -0.5 0.5]);
grid on;

%Convolution 
y = conv(x,h);
ny = (nx(1)+nh(1)):(nx(end)+nh(end));
subplot(3,1,3),stem(ny,y,'k','linewidth',1.5);
title(' y(n)= x(n)*h(n)');
xlabel('n---->');
ylabel('y---->');
axis([-2 14 -2 2]);
grid on;