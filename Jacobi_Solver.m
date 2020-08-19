function [] = Jacobi_Solver()
N  = 3;

A = [4 1 -1; 1 -5 2; 2 1 -5];

b = [7 4 -1];

X = zeros(N,1);

norm_value = Inf; 

tol = 10^ - 5;

iteration = 0;

while norm_value > tol
    
    X_old = X;
    
    for i = 1:N
        
        Z = 0;
        
        for j = 1:N
            
            if j ~= i
                Z = Z + A(i,j) * X(j);
            end
            
        end
        
        X(i) = (1 / A(i,i)) * (b(i) - Z);
    end
    
    iteration = iteration + 1;
    norm_value = abs(X_old - X);
end

disp("X:");
disp(X);

end

