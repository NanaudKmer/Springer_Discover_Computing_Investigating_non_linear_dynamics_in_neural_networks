function [key_mod, key_bit, key_conf_dna] = Key_generation_Zelkif(I1, x1_o, x2_o, u1_o, u2_o, siz)
siz_mod = siz;
siz_bit = siz_mod;
% siz_conf = siz*2;
siz_conf_dna = siz*8;


CI = [x1_o, x2_o, u1_o, u2_o];
options = odeset('RelTol',5e-3,'AbsTol',5e-3);
[~,y] = ode45(@(t,y) TLN(t, y, I1), (0:0.005:(siz+1000000)*0.005), CI, options);

k1 = y(:,1);
XX = mod(floor((k1+100)*10^10),(siz+1000000))+1;
[~,idx] = unique(XX);
[~,key_x] = sort(idx);
key_v = mod(key_x,256);
key_mod = key_v(end-siz_mod+1:end);

k2 = y(:,3);
XX = mod(floor((k2+100)*10^10),(siz+1000000))+1;
[~,idx] = unique(XX);
[~,key_x] = sort(idx);
key_v = mod(key_x,256);
key_bit = key_v(end-siz_bit+1:end);

% k3 = y(:,3);
% XX = mod(floor((k3+100)*10^10),(siz+1000000))+1;
% [~,idx] = unique(XX);
% [~,key_x] = sort(idx);
% key_v = mod(key_x,siz_conf);
% key_conf = key_v(end-siz_conf+1:end);

k4 = y(:,4);
XX = mod(floor((k4+100)*10^10),(siz+1000000))+1;
[~,idx] = unique(XX);
[~,key_x] = sort(idx);
key_v = mod(key_x,siz_conf_dna);
key_conf_dna = key_v(end-siz_conf_dna+1:end);