function ConfImg = fun_Encryption_Conf_DNA(X,z1)
format long

    sh = size(X,1);
    sw = size(X,2);
    sz = size(X,3);
    siz = sh*sw*sz;

    %% --------------------------------------------------------------------
    % generation de la sequence et index sequence
    % ---------------------------------------------------------------------

%     z1 = Key_generation_art_conf(key(1,3), key(1,4), key(1,1), key(1,2), 2*siz*4);
%     K = Key_generation_art_xor(key(1,1), key(1,2), key(1,3), key(1,4), siz);
%     Pimg = bitxor(double(X(:)),K');
%     Pimg = reshape(Pimg,[256,256]);
 
    %% --------------------------------------------------------------------
    % Règle de conversion de la Index chaotic sequence
    % ---------------------------------------------------------------------
    
    [~,Pos] = sort(z1);
    P = X(:);
    Rul_2 = mod((double(z1)+Pos*sum(z1)),8)+1;
    
    %% --------------------------------------------------------------------
    % DNA coding
    % ---------------------------------------------------------------------
    
    DNA_Pxl{1,:} = [];
    Pxl = double(P);
    for i = 1:siz
        DNA_Pxl{1,i} = DNA_coding(Pxl(i,1),Rul_2(i,1));
    end
    
    %% --------------------------------------------------------------------
    % DNA confusion
    % ---------------------------------------------------------------------
    
    for i = 1:siz
        for j = 1:4
            DNA_Pxl_mat{i,j} = DNA_Pxl{1,i}(1,j);
        end
    end
    DNA_conf = enscramble_arnold_dna(DNA_Pxl_mat(:)',z1);
    
    %% --------------------------------------------------------------------
    % DNA decoding
    % --------------------------------------------------------------------
    
    Y = reshape(DNA_conf,[siz,4]);
    V{1,:} = [];
    for i = 1:siz
        for j = 1:4
            DNA_Pxl{1,i}(j,1) = Y{i,j};
        end
        V{1,i} = DNA_Pxl{:,i}';
    end
    
    Pxl_diff = zeros(1,siz);
    g = randi(8);
    
    for i = 1:siz
        Pxl_diff(1,i) = DNA_decoding(V{1,i},1);
    end
    
    ConfImg = reshape(Pxl_diff,[sh, sw, sz]);
    ConfImg = uint8(ConfImg);
end