function EncImg = fun_Encryption_mod(X,z1)

format long
% key = round(key,15);
[sh, sw, sz] = size(X);
% siz = sh*sz*sw;
Img = X;

% z1 = Key_generation_art_xor(Ini(1,1), Ini(1,2), key(1,1), key(1,2), siz);
EncImg = mod((double(Img(:))+z1),256);
EncImg = uint8(reshape(EncImg,[sh sw sz]));