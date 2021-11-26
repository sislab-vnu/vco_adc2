% matlab mathematic model of second order noise shapping
OSR = 250;
OBG = 2.5;
fs = 12*10^6;
% ntf = synthesizeNTF(3, OSR, 0, OBG, 0);
% ntf = ()
% L1 = 1/ntf -1;
% l = impulse(L1,10);
% x1 = impulse(c2d(tf([1], [1 0]), 1), 10);
% x2 = impulse(c2d(tf([1], [1 0 0]), 1), 10);
% 
% K = [x1 x2]\l;
Kv1 = 0.36;  f0 = 0.24;
Kv2 = 0.36;  f0 = 0.2;

Ac = [0 0; Kv2 0];
Bc = [Kv1 f0 -1; 0 f0 -1;];
Cc = [0 1];
Dc = [0 0 0];

sys_ct = ss(Ac, Bc, Cc, Dc);
sys_dt = c2d(sys_ct, 1);

u = 0.42*sin(2*pi*0.2/OSR*(0:1:2^15));
K_offset = ones(1, length(u));
u_ = [u ; K_offset];
Ad = sys_dt.A;
Bd = sys_dt.B;
Cd = sys_dt.C;
Dd = sys_dt.D;

ABCD = [Ad Bd; Cd Dd];
[v,xn,xmax,y] = simulateDSM(u_, ABCD, 6, zeros(2,1));
% plot(v);


[P1, f] = periodogram(v, blackmanharris(length(v), 'periodic'), length(v), fs);
figure(1);
plot (f, 10*log10(P1)-60);
% [P2, f] = periodogram(v-y, hanning(length(v), 'periodic'), length(v), 1);
% grid on;
% figure(2);
% % plot (f, 10*log10(P2));
% % figure(3);
% plot(f,10*log10(P1./P2));
% grid on;