f1 = 852;
f2 = 1477;
t=0:1/8000:0.2;
x = @(t)(sin(2*pi*f1*t) + sin(2*pi*f2*t));
sound(x(t));
plot(t,x(t));

