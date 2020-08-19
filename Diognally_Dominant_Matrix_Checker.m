function [] = Diognally_Dominant_Matrix_Checker()
    
    N = 3;
    M = 3;
    A = [5 1 2; 2 -4 1; 3 -2 -6];
    B = [-3 2 1; 1 -7 3; -1 -4 5];
    
    %Row Diagonal Dominant Matrix
    
    check = 1;
    
    for i = 1:N
       
        T = 0;
       
        for j = 1:N
            
            if(j~=i)
               
                T = T + abs(A(i,j));  
            
            end
            
        end
        
        if(abs(A(i,i)) <= T)
            
            check = 0;
            
        end
        
         
        
    end
    
    if(check == 1)
    
        disp("Row Diagonal Dominant Matrix");
    
    end
    
    if(check == 0)
    
        disp("Not a Row Diagonal Dominant Matrix");
    
    end
    
    %Column Diagonal Dominant Matrix
    
    check = 1;
    
    for j = 1:M
        
       T = 0;
        
       for i = 1:M
            
            if(j~=i)
               
                T = T + abs(B(i,j));  
            
            end
            
        end
        
        if(abs(B(j,j)) <= T)
            
            check = 0;
            
        end
        
         
        
    end
    
    if(check == 1)
    
        disp("Column Diagonal Dominant Matrix");
    
    end
    
    if(check == 0)
    
        disp("Not a Column Diagonal Dominant Matrix");
    
    end
end

