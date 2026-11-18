function Pxl = DNA_decoding(Pxl_DNA,Rule)
format long
n = length(Pxl_DNA);
% if n == 4
%     a1 = Pxl_DNA(1,1);
%     a2 = Pxl_DNA(1,2);
%     a3 = Pxl_DNA(1,3);
%     a4 = Pxl_DNA(1,4);
% else
    
% clear Pxl_bi
for i = 1:n
    if Pxl_DNA(1,i) == 'A'
        if Rule == 1
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 0;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 0;
        elseif Rule == 2
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 0;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 0;
        elseif Rule == 3
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 1;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 1;
        elseif Rule == 4
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 1;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 1;
        elseif Rule == 5
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 1;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 0;
        elseif Rule == 6
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 0;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 1;
        elseif Rule == 7
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 1;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 0;
        else
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 0;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 1;
        end
    elseif Pxl_DNA(1,i) == 'T'
        if Rule == 1
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 1;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 1;
        elseif Rule == 2
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 1;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 1;
        elseif Rule == 3
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 0;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 0;
        elseif Rule == 4
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 0;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 0;
        elseif Rule == 5
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 0;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 1;
        elseif Rule == 6
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 1;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 0;
        elseif Rule == 7
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 0;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 1;
        else
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 1;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 0;
        end
    elseif Pxl_DNA(1,i) == 'C'
        if Rule == 1
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 1;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 0;
        elseif Rule == 2
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 0;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 1;
        elseif Rule == 3
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 1;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 0;
        elseif Rule == 4
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 0;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 1;
        elseif Rule == 5
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 0;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 0;
        elseif Rule == 6
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 0;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 0;
        elseif Rule == 7
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 1;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 1;
        else
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 1;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 1;
        end
    else
        if Rule == 1
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 0;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 1;
        elseif Rule == 2
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 1;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 0;
        elseif Rule == 3
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 0;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 1;
        elseif Rule == 4
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 1;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 0;
        elseif Rule == 5
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 1;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 1;
        elseif Rule == 6
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 1;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 1;
        elseif Rule == 7
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 0;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 0;
        else
            Pxl_bi(1,(2*n)-(2*(i-1)+0)) = 0;
            Pxl_bi(1,(2*n)-(2*(i-1)+1)) = 0;
        end
    end
end
Pxl = bi2de(Pxl_bi,'right-msb');

