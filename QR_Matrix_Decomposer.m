function [] = QR_Matrix_Decomposer()

    A = [1 2 3 4; 5 6 7 8; 9 10 12 12; 13 14 10 6];

    N = 4;

    R = A; 

    Q = eye(N);

    for k = 1:N-1

        X = zeros(N,1);
    
        X(k:N,1) = R(k:N,k);

        no = norm(X);

        V = X; 
    
        V(k) = X(k) + no;

        s = norm(V);

        if s ~= 0, w = V / s; u = 2 * R' * w;

        R = R - w * u'; 

        Q = Q - 2 * Q *(w)*(w'); 
        
        end

    end
    
    disp("A:");
    disp(A);
    disp("R:");
    disp(R);
    disp("Q:");
    disp(Q);
end

