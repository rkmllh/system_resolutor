function [x] = back_sub(A, b)

    n = size(A, 1);
    
    if(n == size(A, 2)) == false
        fprintf("Not a square matrix!\n");
        return;
    elseif (n == size(b, 1)) == false
        fprintf("Not a valid product!\n");
        return;
    end
    
    x = zeros(1, n)';
    x(n) = b(n) / A(n, n);
    i = n - 1;
    accum = 0;

    while i >= 1
        accum = 0;
    
        for j = i + 1 : n
            accum = accum + A(i, j) * x(j); 
        end
        
        x(i) = 1 / A(i, i) * (b(i) - accum);
        i = i - 1;
    end
end