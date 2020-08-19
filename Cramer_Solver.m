function [] = Cramer_Solver(A, b)
    N = size(A);
    B = A;
    D = det(A);
    for j = 1:N
        for i = 1:N
            A(i,j) = b(i,1);   
             d = det(A)/D;
        end
        for i = 1:N
            
           
            
        end
        
        A = B;
        X(j,1) = d;
    end
    disp("X:");
    disp(X);
end

 