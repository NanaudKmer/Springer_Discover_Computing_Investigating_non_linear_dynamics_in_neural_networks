function [CC_h, CC_v, CC_d] = CC_calc(Img,isvisual)
format long
A = double(Img);

% -----------------
% Horizontal
% -----------------

x_h = A(:,1:end-1);
y_h = A(:,2:end);
CC_h = hesap(x_h,y_h);
CC_h = CC_h(1,2);
% -----------------
% Vertical
% -----------------

x_v = A(1:end-1,:);
y_v = A(2:end,:);
CC_v = hesap(x_v,y_v);
CC_v = CC_v(1,2);
% -----------------
% Diagonal
% -----------------

x_d = A(1:end-1,1:end-1);
y_d = A(2:end,2:end);
CC_d = hesap(x_d,y_d);
CC_d = CC_d(1,2);
% -----------------
% Visualistion
% -----------------
if isvisual == 1
    figure
    grafik(x_h,y_h)
    title('Horizontal')
    figure
    grafik(x_v,y_v)
    title('Vertical')
    figure
    grafik(x_d,y_d)
    title('Diagonal')
end
