close all; clear all
t = 0:0.01:20; n = 0:20;
x1t = cos(0.6*pi*t); x1n = cos(0.6*pi*n);
x2t = cos(1.4*pi*t); x2n = cos(1.4*pi*n);
x3t = cos(2.6*pi*t); x3n = cos(2.6*pi*n);
figure;
subplot(321); plot(t,x1t); title('cos (0.6 \pi t)')
subplot(322); stem(n,x1n); title('cos [0.6 \pi n]')
subplot(323); plot(t,x2t); title('cos (1.4 \pi t)')
subplot(324); stem(n,x2n); title('cos [1.4 \pi n]')
subplot(325); plot(t,x3t); title('cos (2.6 \pi t)')
subplot(326); stem(n,x3n); title('cos [2.6 \pi n]')