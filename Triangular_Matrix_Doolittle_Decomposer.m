function [A,U,L,N] = Triangular_Matrix_Doolittle_Decomposer(A)
    
N = size(A);

L = A;

for j = 1:N

    for i = j+1:N
        
        m(i,j) = -(L(i,j)/L(j,j));
        
    end
    
end


for i = 1:N
    
    for  j= 1:N
        
        if i < j
            L(i,j) = 0;
        end
        
        if i == j
            L(i,j) = 1;
        end
        
        if i > j
            
            L(i,j) = -(m(i,j));
            
        end
        
    end
    
end

U = A/L;
disp("A:");
disp(A);
disp("L:");
disp(L);
disp("U:");
disp(triu(U));

end

