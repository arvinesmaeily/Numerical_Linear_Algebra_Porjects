function [] = Positive_Definite_Checker()

    N = 2;
    
    A = [4 -8; -8 20];
    
    for i = 1:N
        X_positive(i,1) = i;
    end
    
    for i = 1:N
        X_negative(i,1) = (-1) * i;
    end
    
    flag = 0;
    
    z = X_positive' * A * X_positive;
    
    y = X_negative' * A * X_negative;
    
    if(z < 0)
        flag = 1;
    end
    if(y < 0)
        flag = 1;
    end
    
    if flag == 1
        disp('Not positive definite');
    end
    if flag == 0
        disp('Positive definite');
    end
    
end

