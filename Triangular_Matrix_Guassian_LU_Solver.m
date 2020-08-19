function [] = Triangular_Matrix_Guassian_LU_Solver(A, b)

    [~,U,~,N] = Triangular_Matrix_Guassian_LU_Decomposer(A);
         
    T = 0;
    
    for k = N:-1:1
    
        for i = k+1:N
        
            T = T + U(k,i) * X(i); 
            
        end
        
        X(k) = (b(k) - T) / U(k,k);
        
    end
    disp("X:");
    disp(X);
    
end

