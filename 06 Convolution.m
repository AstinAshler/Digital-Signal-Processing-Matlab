clear all; close all;
x = 1:6;
k1 = 1:length(x);
h = 1:3;
k2 = 0:length(h)-1;
y = conv(x,h);
y = [0 y 0];
f1 = figure;
a1 = subplot(221); stem(k1,x); title('x[n]');
a2 = subplot(222); stem(k2,h); title('h[n]');
for n = 0:length(y)-1;
figure(f1);
a3 = subplot(223);
stem(k1,x,'linewidth',3); hold on;
stem(n-k2, h,'r');hold off;
axis([a1 a2 a3],[-3 10 0 6]);
title(['n = ' num2str(n)])
pause;
a4 = subplot(224);
stem(0:n, y(1:n+1), 'm'); title('y[n]');
axis(a4, [-3 10 0 30]);
pause;
end