clear all; close all
n = -10:10;
d = n == 0; u = n >= 0;
w = 0.5; c = cos(w*n); s = sin(w*n);
figure;
subplot(221); stem(n,d); title('unit impulse')
subplot(222); stem(n,u); title('unit step')
subplot(223); stem(n,c); title('cos(wn)')
subplot(224); stem(n,s); title('sin(wn)')
e1 = (1.1).^n; e2 = 0.9.^n; e3 = (-1.1).^n; e4 = (-0.9).^n;
figure;
subplot(221); stem(n,e1); title ('b^n, b > 1')
subplot(222); stem(n,e2); title ('b^n, 0 < b < 1')
subplot(223); stem(n,e3); title ('b^n, b < -1')
subplot(224); stem(n,e4); title ('b^n, -1 < b < 0')
z1 = 0.6*(1+j) ; ec = z1.^n;
figure;
subplot(221); stem(n,real(ec)); title('real')
subplot(222); stem(n,imag(ec)); title('imaginary')
subplot(223); stem(n,abs(ec)); title('magnitude')
subplot(224); stem(n,angle(ec)); title('phase')
%% Then change z1 to 0.6*(1-j) 