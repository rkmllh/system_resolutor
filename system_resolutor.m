function [x] = system_resolutor(A, b)
    if(RC(A, b) == true)
        [L, U] = LU_factorization(A);
        y = forward_sub(L, b);
        x = back_sub(U, y);
    else
        x = nan;
    end
end