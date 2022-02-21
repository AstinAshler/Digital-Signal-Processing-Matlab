clear all;
close all;
n = -10:10;
e = (1.1).^n;
u_R1 = e.*(n >= 5);
u_R2 = e.*(n >= 0);
u_R3 = e.*(n >= -5);
u_L1 = e.*(n <= 5);
u_L2 = e.*(n <= 0);
u_L3 = e.*(n <= -5);
figure;
subplot(321); stem(n,u_R1);
subplot(323); stem(n,u_R2);
subplot(325); stem(n,u_R3);
subplot(322); stem(n,u_L1);
subplot(324); stem(n,u_L2);
subplot(326); stem(n,u_L3);
%% Which are left-sided, rightsided, causal,
%% anticausal, and non-causal?