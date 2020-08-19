function [] = Gauss_Seidel_Solver()

N = 3;

A = [4 1 -1; 1 -5 2; 2 1 -5];

b = [7 4 -1];

X = zeros(N,1);

z = 0;

X_old = X;

for n = 1:1000
    
    for i = 1:N
        
        for j = 1:N
            
            if (j ~= i)
                
                z = z + (A(i,j) / A(i,i)) * X_old(j);
                
            end
            
        end
        
        X(i) = -z + b(i) / A(i,i);
        
        z = 0;
    end
    
    if(abs(X(i) - X_old(j)) < 0.001)
        
        break;
    
    end
    
    X_old = X;
    
end

disp("X:");
disp(X);

end

