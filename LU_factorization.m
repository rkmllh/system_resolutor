function [L, U] = LU_factorization(A)
    
    n = size(A,1);
    U = zeros(n, n);
    L = zeros(n, n);
    m = 0;

    if not(n == size(A,2))
        fprintf("Not a square matrix!\n");
        return;
    end

    for k = 1 : (n - 1)
        
        if (A(k, k) == 0)
            return;
        end

        for i = k + 1 : n
            m = A(i, k) / A(k, k);
            for j = k + 1 : n
                A(i, j) = A(i, j) - m * A(k, j);
            end
            L(i, k) = m;
        end
    end

    U = triu(A);
    s = size(L);
    L(1 : s(1) + 1 : s(1) * s(2)) = 1;
    
end