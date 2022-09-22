function [x] = forward_sub(A, b)
    n = size(A, 1);
    
    if(n == size(A, 2)) == false
        fprintf("Not a square matrix!\n");
        return;
    elseif (n == size(b, 1)) == false
        fprintf("Not a valid product!\n");
        return;
    end

    x = zeros(size(A, 1), 1);
    x(1) = b(1) / A(1,1);

    for i = 2 : n
        acc = 0;
        for j = 1 : i - 1
            acc = acc + A(i, j) * x(j);
        end
        x(i) = 1 / A(i,i) * (b(i) - acc);
    end
end