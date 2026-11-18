clc
clear
close all
warning('off')
format long
i = 4;
Img = imread('mri256.tif');               % Image à chiffrer
Ini_xy = Secret_key_4(Img);
Ini_xy = round(Ini_xy,15);
[sh, sw, sz] = size(Img);               % Dimension de l'image
siz = sh*sw*sz;                         % Nombre de pixel
[key_mod, key_bit, key_conf_dna] = Key_generation_Zelkif(2.01, Ini_xy(1,1), Ini_xy(1,2), Ini_xy(1,3), Ini_xy(1,4), siz);

tic
Img_dif = fun_Encryption_mod(Img,key_bit);
Img_perm = fun_Encryption_Conf_DNA(Img_dif,key_conf_dna);
Enc = fun_Encryption_mod(Img_perm,key_mod);
time_enc = toc

% Entropy
% -------------------------------------------------------------------------

Ent_1 = entropy(Img)                    % Entropie de l'image en clair
Ent_2 = entropy(Enc)                 % Entropie de l'image chiffrer

lse_1 = lse_calc(Img)                    % Entropie de l'image en clair
lse_2 = lse_calc(Enc)                 % Entropie de l'image chiffrer

xlswrite('Data.xlsm',Ent_1,i,'B1')
xlswrite('Data.xlsm',lse_1,i,'C1')
xlswrite('Data.xlsm',Ent_2,i,'B2')
xlswrite('Data.xlsm',lse_2,i,'C2')
% Histogrammes
% -------------------------------------------------------------------------

figure(1), imshow(Img);
figure(2), imshow(Enc);
figure(3), imhist(Img);
figure(4), imhist(Enc);

% coefficients de correlation
% -------------------------------------------------------------------------

[ccx_1, ccy_1, ccz_1] = CC_calc(Img,0)
[ccx_2, ccy_2, ccz_2] = CC_calc(Enc,0)

xlswrite('Data.xlsm',ccx_1,i,'D1')
xlswrite('Data.xlsm',ccy_1,i,'E1')
xlswrite('Data.xlsm',ccz_1,i,'F1')
xlswrite('Data.xlsm',ccx_2,i,'D2')
xlswrite('Data.xlsm',ccy_2,i,'E2')
xlswrite('Data.xlsm',ccz_2,i,'F2')
% chi-carre
% -------------------------------------------------------------------------

ch_1 = Chi_calc(Img)
ch_2 = Chi_calc(Enc)

xlswrite('Data.xlsm',ch_1,i,'A1')
xlswrite('Data.xlsm',ch_2,i,'A2')