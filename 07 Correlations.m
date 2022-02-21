close all; clear all;
x = 0.2*[1 1 1 1 3 4 -2 -1 1 1 1 1 1 1];
y = 0.2*[3 4 -2 -1];
ryy = xcorr(y,y);
ryx = xcorr(y,x);
rxy = xcorr(x,y);
rxy2 = conv(x,fliplr(y));
figure;
a1 = subplot(321); stem(x); title('x[n]');
a2 = subplot(322); stem(y); title('s[n]');
a3 = subplot(323); stem(ryy); title('r_{yy}[n]');
a4 = subplot(324); stem(ryx); title('r_{yx}[n]');
a6 = subplot(326); stem(rxy); title('r_{xy}[n]');
a5 = subplot(325); stem(rxy2); title('r_{xy}2[n]');
axis([a1 a2 a3 a4 a5 a6],[0 25 -1 1.5]);
%%% Compare their lengths