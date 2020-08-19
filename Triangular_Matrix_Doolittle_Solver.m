function [] = Triangular_Matrix_Doolittle_Solver(A, b)
    [~,U,L,N] = Triangular_Matrix_Doolittle_Decomposer(A); 
    
    z = 0;
%Y matrix calculation    
    Y = zeros(N,1);
    Y(1)= b(1);
    
    for i = 2:N
       
            for k = 1:i-1
                
               z = z + L(i,k) * Y(k);
                    
            end
        
             Y(i)= b(i)- z;
             z = 0;
             
    end
        
    
    
    disp("Y:");
    disp(Y);
    
%Result calculation
    b = Y;
    
    X = zeros(N,1);
    
    for i = N:-1:1
           
            for k = N:-1:1
                if(i ~= k)
               z = z + U(i,k) * X(k);
                end
            end
       
             X(i)= (b(i) - z) / U(i,i);
             z = 0;
             
    end
    
    disp("X:");
    disp(X);
        
end 

