clc;
t=-pi:0.05:pi;
y=sin(t);
subplot(4,1,1);
plot(t,y);
title('Sine Function');
xlabel('time-->');
ylabel('amplitude-->');
grid on;
x=sin(t-2);
subplot(4,1,2);
plot(t,x);
title('Time Shift');
xlabel('time-->');
ylabel('amplitude-->');
grid on;
z=sin(2*t);
subplot(4,1,3);
plot(t,z);
title('Time Scaling');
xlabel('time-->');
ylabel('amplitude-->');
grid on;
v=sin(-t);
subplot(4,1,4);
plot(t,v);
title('Reflection of Sine Wave')
xlabel('time-->');
ylabel('amplitude-->');
grid on;