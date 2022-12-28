f1 = 852;
f2=1477;
fs = 8000;
n = 1600;
t = (0:(n-1))/fs;
f = (-n/2:n/2-1) * (fs/n);

x1 =@(t)sin(2*pi*f1*t);
% subplot(5,3,1);
% plot(t,x1(t));
% title('x1 =sin(2*pi*f1*t)');
% xlabel('Time');
% ylabel('Amplitude');
% sound(x1(t));

x2 = @(t)sin(2*pi*f2*t);
% subplot(5,3,2);
% plot(t,x2(t));
% xlabel('Time');
% ylabel('Amplitude');
% title('x2 =sin(2*pi*f2*t)');
%  sound(x2(t));
 
x =@(t)((sin(2*pi*f1*t)+sin(2*pi*f2*t)));
subplot(5,3,3);
plot(t,x(t));
xlabel('Time');
ylabel('Amplitude');
title('x =(sin(2*pi*f1*t) + sin(2*pi*f2*t))');
sound(x(t)); 

%Fourier Transform

 s1 = abs(fft(x1(t))); 
 title('Spectrum of x1 ');
 xlabel('frequency');
 ylabel('Amplitude');
 s1shift = fftshift(s1);
 subplot(5,3,4);
 plot(f,s1shift);
 

 s2 = abs(fft(x2)); 
 title('Spectrum of x2 ');
 xlabel('frequency');
 ylabel('Amplitude');
 s2shift = fftshift(s2);
 subplot(5,3,5);
 plot(f,s2shift);
 
 
 s3 = abs(fft(x)); 
 title('Spectrum of x ');
 xlabel('frequency');
 ylabel('Amplitude');
 s3shift = fftshift(s3);
 subplot(5,3,6);
 plot(f,s3shift);
 
 
 
   

 

     