function x = Secret_key_4(OrigIm)
format long
Img = OrigIm;
K = hash(Img,'SHA256');
% K = sha256(Img);

for i = 1:64
    k = K(i);
    h(i) = hex2dec(k);
end
H = de2bi(h);
H = H(:);
Im = im2col(H,[8,1],'distinct');

for i = 1:32
    kk(i) = bi2de((Im(:,i))');
end

j = 1;
while j < 5
    HH(j) = 0;
    for i = 8*(j-1)+1:8*(j)
        HH(j) = bitxor(HH(j),kk(i));
    end
    j = j + 1;
end


x = HH/255;
for i = 1:4
    if x(i) == 0
        x(i) = 0.013;
    elseif x (i) == 1
        x(i) = 0.974;
    end  
end