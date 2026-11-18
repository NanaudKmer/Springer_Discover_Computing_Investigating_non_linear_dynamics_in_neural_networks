function chi = Chi_calc(Img)
format long
[sh,sw,sz] = size(Img);

if sz == 1
    X = double(Img);
else    
    R = Img(:,:,1);
    G = Img(:,:,2);
    B = Img(:,:,3);
    GL = zeros(sh,sw,sz);
    for i = 1:sh
        for j = 1:sw
            GL(i,j) = 0.299*R(i,j)+0.587*G(i,j)+0.114*B(i,j);
        end
    end
    X = double(GL);
end

X = X(:);
H_x = unique(X);
z_x = zeros(1, 256);
Vp_x = zeros(1, 256);

for i = 1:length(H_x)
    z_x(H_x(i)+1) = length(find(X == H_x(i)));
    Vp_x(H_x(i)+1) = 1*z_x(H_x(i)+1)/length(X);
end

f = (sh*sw)/256;
chi = 0;
for i = 0:255
    chi = chi + ((z_x(i+1)-f)^2)/f;
end
end



