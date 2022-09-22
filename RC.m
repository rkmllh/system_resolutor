function v = RC(A, b)
    v = false;
    if rank(A) == rank([A, b])
        v = true;
    end
end