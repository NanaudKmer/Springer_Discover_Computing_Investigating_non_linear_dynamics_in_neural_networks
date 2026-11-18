function EncImg = fun_Encryption_conf(X,z1)

format long
% key = round(key,15);
[sh, sw, sz] = size(X);
% siz = sh*sz*sw;
Img = X;

% z1 = Key_generation_art_conf(key(1,3), key(1,4), key(1,1), key(1,2), 2*siz);
EncImg = enscramble_arnold(Img(:),z1);
EncImg = uint8(reshape(EncImg,[sh sw sz]));