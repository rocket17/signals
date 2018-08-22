%Convoluton sum
clc;

%x[n]
x = [2 4 -2];
nx = 0:2;
subplot(3,1,1),stem(nx,x,'k','linewidth',1.5);
title('x(n)');
xlabel('n---->');
ylabel('x---->');
axis([-2 5 -3 5]);
grid on;

%h[n]
h = [1 0.5];
nh = 0:1;
subplot(3,1,2),stem(nh,h,'k','linewidth',1.5);
title('h(n)');
xlabel('n---->');
ylabel('h---->');
axis([-2 5 -3 5]);
grid on;

%Convolution 
y = conv(x,h);
ny = (nx(1)+nh(1)):(nx(end)+nh(end));
subplot(3,1,3),stem(ny,y,'k','linewidth',1.5);
title(' y(n)= x(n)*h(n)');
xlabel('n---->');
ylabel('y---->');
axis([-2 5 -2 6]);
grid on;