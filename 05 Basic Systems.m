clear all; close all
n = 0:20;
f1 = inline('sin(x)./sqrt(x)');
x1 = f1(n);
f2 = inline('abs(x)/10');
x2 = f2(n);
y1a = 2*x1;
y1b = 0.3*x1;
y2a = f1(n-5);
y2b = f1(n+5);
y3 = x1 + x2;
y4 = x1.*x2;
figure;
axisrange = [0 20 -2 2];
subplot(421); stem(n,x1); title('x_1[n]'); axis(axisrange)
subplot(422); stem(n,x2); title('x_2[n]'); axis(axisrange)
subplot(423); stem(n,y1a); title('2x_1[n]');axis(axisrange)
subplot(424); stem(n,y1b); title('0.3x_1[n]');axis(axisrange)
subplot(425); stem(n,y2a); title('x_1[n-5]');axis(axisrange)
subplot(426); stem(n,y2b); title('x_1[n+5]');axis(axisrange)
subplot(427); stem(n,y3);
title('x_1[n]+x_2[n]');axis(axisrange)
subplot(428); stem(n,y4); title('x_1[n]*x_2[n]');axis(axisrange)