%Implementation of decimation and interpolation
clc;
n=0:59;
p=2;
q=3;
x= exp(-n/15).*sin((2*n*pi)/13 +pi/8);
y1=interp(x,p);
y2=decimate(y1,q);
y3=resample(x,p,q);

subplot(2,2,1);
stem(n,x);
title('Given Function');

subplot(2,2,2);
stem([0:119],y1);
title('Interpolation');

subplot(2,2,3);
stem([0:39],y2);
title('Decimation');

subplot(2,2,4);
stem([0:39],y3);
title('Interpolation and Decimation');
