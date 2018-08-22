%Convoluton properties:
clc;

figure(1)
%R1[n]
r1 = [1 2 3 -5 6];
nr1 = -2:2;
subplot(3,1,1),stem(nr1,r1);
title('R1');
xlabel('n---->');
ylabel('R2---->');
axis([-5 6 -6 7]);
grid on;

%R2[n]
r2 = [0 2 3 5 7];
nr2 = -2:2;
subplot(3,1,2),stem(nr2,r2);
title('R2');
xlabel('n---->');
ylabel('R2---->');
axis([-5 6 -1 8]);
grid on;

%x[n]
x = [1 2 3 4 0];
nx = -2:2;
subplot(3,1,3),stem(nx,x);
title('x(n)');
xlabel('n---->');
ylabel('x---->');
axis([-5 6 -3 5]);
grid on;


figure(2)
% commutative
%Convolution R1[n]*R2[n]
y = conv(r1,r2);
ny = (nr1(1)+nr2(1)):(nr1(end)+nr2(end));
subplot(2,2,1),stem(ny,y);
title('COMMUTATIVE PROPERTY: y(n)= R1(n)*R2(n)');
xlabel('n---->');
ylabel('y---->');
axis([-5 6 -6 50]);
grid on;

%Convolution R2[n]*R1[n]
y1 = conv(r2,r1);
ny = (nr1(1)+nr2(1)):(nr1(end)+nr2(end));
subplot(2,2,2),stem(ny,y1);
title('COMMUTATIVE PROPERTY: y(n)= R2(n)*R1(n)');
xlabel('n---->');
ylabel('y---->');
axis([-5 6 -6 50]);
grid on;

%ASSOCIATIVE PROPERTIES
y3 = conv(r2,x);
y4 = conv(r1,y3);
subplot(2,2,3),stem(y4);
title('ASSOCIATIVE PROPERTY: y(n)= R1(n)*[R2(n)*x(n)]');
xlabel('n---->');
ylabel('y---->');
axis([-5 6 -6 200]);
grid on;

y5 = conv(r1,r2);
y6 = conv(y5,x);
subplot(2,2,4),stem(y6);
title('ASSOCIATIVE PROPERTY: y(n)= [R1(n)*R2(n)]*x(n)');
xlabel('n---->');
ylabel('y---->');
axis([-5 6 -6 200]);
grid on;

figure(3)
%DISTRIBUTIVE PROPERTIES
y3 = r2+x;
y6 = conv(r1,y3)
subplot(2,2,1),stem(y6);
title('DISTRIBUTIVE PROPERTY: y(n)= R1(n)*[R2(n)+x(n)]');
xlabel('n---->');
ylabel('y---->');
axis([-2 10 -6 50]);
grid on;

y3 = conv(r2,r1);
y4 = conv(x,r1);
y5 = y3+y4
subplot(2,2,2),stem(y5);
title('DISTRIBUTIVE PROPERTY: y(n)= [R1(n)*R2(n)]+[R1(n)*x(n)]');
xlabel('n---->');
ylabel('y---->');
axis([-2 10 -6 50]);
grid on;

%IDENTITY PROPERTY
%x[n]
x = [1 2 3 4 0];
nx = -2:2;
subplot(2,2,3),stem(nx,x);
title('x(n)');
xlabel('n---->');
ylabel('x---->');
axis([-5 6 -1 5]);
grid on;

d = 1;
y7 = conv(d,x);
ny7 = -2:2
subplot(2,2,4),stem(ny7,y7);
title('IDENTITY PROPERTY');
xlabel('n---->');
ylabel('x---->');
axis([-5 6 -1 5]);
grid on;