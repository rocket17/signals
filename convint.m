clc;
syms t tau real;
x= 1/(1+t^2);
subplot(2,1,1);
ezplot(x);
xlabel('t-->');
ylabel('x(t)-->');
grid on;


y=int(subs(x,t)*subs(x,t-tau),tau,-inf,inf);
z=simplify(y);
subplot(2,1,2);
ezplot(z);
xlabel('t-->');
ylabel('x(t)*x(t)-->');
grid on;
