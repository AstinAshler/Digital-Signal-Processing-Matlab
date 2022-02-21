clear all; close all
t = 0:0.01:24; n = 0:24; w = pi/5;
x1t = cos(w*t); x1n = cos(w*n);
x2t = cos(2*w*t); x2n = cos(2*w*n);
x3t = cos(3*w*t); x3n = cos(3*w*n);
x4t = cos(t); x4n = cos(n);
figure;
subplot(411); plot(t,x1t); hold on; stem(n,x1n,'r'); hold off;
subplot(412); plot(t,x2t); hold on; stem(n,x2n,'r'); hold off;
subplot(413); plot(t,x3t); hold on; stem(n,x3n,'r'); hold off;
subplot(414); plot(t,x4t); hold on; stem(n,x4n,'r'); hold off;
disp(' n x1[n] x2[n] x3[n] x4[n]')
disp( [n' x1n' x2n' x3n' x4n'])