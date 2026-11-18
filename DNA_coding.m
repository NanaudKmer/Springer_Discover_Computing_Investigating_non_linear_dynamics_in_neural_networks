function Pxl_DNA = DNA_coding(Pxl,Rule)
format long
a1 = bitand(Pxl,192)/64;
a2 = bitand(Pxl,48)/16;
a3 = bitand(Pxl,12)/4;
a4 = bitand(Pxl,3);
A = [a1,a2,a3,a4];
% clear Pxl_DNA
if Rule == 1
        for j = 1:4
            if A(1,j) == 0
                Pxl_DNA(1,j) = 'A';
            elseif A(1,j) == 1
                Pxl_DNA(1,j) = 'G';
            elseif A(1,j) == 2
                Pxl_DNA(1,j) = 'C';
            else
                Pxl_DNA(1,j) = 'T';
            end
        end
    
elseif Rule == 2
        for j = 1:4
            if A(1,j) == 0
                Pxl_DNA(1,j) = 'A';
            elseif A(1,j) == 1
                Pxl_DNA(1,j) = 'C';
            elseif A(1,j) == 2
                Pxl_DNA(1,j) = 'G';
            else
                Pxl_DNA(1,j) = 'T';
            end
        end
    
elseif Rule == 3
        for j = 1:4
            if A(1,j) == 0
                Pxl_DNA(1,j) = 'T';
            elseif A(1,j) == 1
                Pxl_DNA(1,j) = 'G';
            elseif A(1,j) == 2
                Pxl_DNA(1,j) = 'C';
            else
                Pxl_DNA(1,j) = 'A';
            end
        end
    
elseif Rule == 4
        for j = 1:4
            if A(1,j) == 0
                Pxl_DNA(1,j) = 'T';
            elseif A(1,j) == 1
                Pxl_DNA(1,j) = 'C';
            elseif A(1,j) == 2
                Pxl_DNA(1,j) = 'G';
            else
                Pxl_DNA(1,j) = 'A';
            end
        end
    
elseif Rule == 5
        for j = 1:4
            if A(1,j) == 0
                Pxl_DNA(1,j) = 'C';
            elseif A(1,j) == 1
                Pxl_DNA(1,j) = 'T';
            elseif A(1,j) == 2
                Pxl_DNA(1,j) = 'A';
            else
                Pxl_DNA(1,j) = 'G';
            end
        end
    
elseif Rule == 6
        for j = 1:4
            if A(1,j) == 0
                Pxl_DNA(1,j) = 'C';
            elseif A(1,j) == 1
                Pxl_DNA(1,j) = 'A';
            elseif A(1,j) == 2
                Pxl_DNA(1,j) = 'T';
            else
                Pxl_DNA(1,j) = 'G';
            end
        end
    
elseif Rule == 7
        for j = 1:4
            if A(1,j) == 0
                Pxl_DNA(1,j) = 'G';
            elseif A(1,j) == 1
                Pxl_DNA(1,j) = 'T';
            elseif A(1,j) == 2
                Pxl_DNA(1,j) = 'A';
            else
                Pxl_DNA(1,j) = 'C';
            end
        end
    
else
        for j = 1:4
            if A(1,j) == 0
                Pxl_DNA(1,j) = 'G';
            elseif A(1,j) == 1
                Pxl_DNA(1,j) = 'A';
            elseif A(1,j) == 2
                Pxl_DNA(1,j) = 'T';
            else
                Pxl_DNA(1,j) = 'C';
            end
        end
end