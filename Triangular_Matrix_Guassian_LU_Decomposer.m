function [A,U,L,N] = Triangular_Matrix_Guassian_LU_Decomposer(A)

N = size(A);
U = zeros(N);
L = zeros(N);

for i = 1:N
    L(i,i)=1;
end

for i = 1:N
    U(1,i) = A(1,i);
end

for i = 2:N
    
    for j = 1:N
        
        for k = 1:i-1
            z = 0;
            if(k == 1)
                z = 0;
            else
                for l = 1:k-1
                    
                z = z + L(i,l) * U(l,k);
                
                end
                
            end
            L(i,k) = (A(i,k) - z) / U(k,k); 
        
            
        end
        for k = i:N
            
            w = 0;
            
            for l = 1:i-1
            
                w = w + L(i,l) * U(l,k);
                
            end    
            
            U(i,k) = A(i,k) - w;
                
        end
    
    
    end
disp("A:");
disp(A);
disp("L:");
disp(L);
disp("U:");
disp(U);
end


