function dy = TLN(t, y, I1)

%     alpha = a; beta = b; k1 = c; k2 = d; w11 = e; w22 = f;
%     alpha = 3.32; beta = 3; k1 = 0.2; k2 = 0.3; w11 = -0.15; w22 = 0.2;
    a1 = 0.1; a2 = 0.1; b11 = 0.2; b12 = 0.5; b21 = 5; b22 = 2; c1 = 0.1; c2 = 0.1; beta1 = 1; beta2 = 1.5;
    d1 = 1; d2 = 1; alpha1 = 3.5; alpha2 = 1; I2 = 2;
    dy = zeros(4,1);
    dy(1) = -a1*y(1) + b11*tanh(alpha1*y(1) + beta1) + b12*tanh(alpha2*y(2) + beta2) + y(3) + I1;
    dy(2) = -a2*y(2) + b21*tanh(alpha1*y(1) + beta1) + b22*tanh(alpha2*y(2) + beta2) + y(4) + I2;
    dy(3) = -c1*y(3) - d1*tanh(alpha1*y(1) + beta1);
    dy(4) = -c2*y(4) - d2*tanh(alpha2*y(2) + beta2);
    
% end