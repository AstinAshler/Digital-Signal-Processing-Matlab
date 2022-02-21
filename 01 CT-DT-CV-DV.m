clear all
close all
t = 0:0.01:10;
x = 5*sin(t)./sqrt(t+1);
nn = find(t == round(t)); %%% pointers to integer t
x_dt = x(nn);
n = t(nn); %%% integer values of t
x_q = round(x)
x_d = x_q(nn);
figure;
subplot(221); plot(t,x);
subplot(222); plot(t,x); hold on; stem(n, x_dt,'r'); grid on
subplot(223); plot(t,x,t,x_q,'r');
subplot(224); plot(t,x); hold on; stem(n, x_d,'r'); grid on