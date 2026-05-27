function fp = hermite(t, y, q)
    n = length(t);
    A = zeros(n);
    for i = 1:n
        for j = 1:n
            A(i,j) = hermiteH(j-1, t(i));
        end
    end
    disp(cond(A));
    x = inv(A) * y';
    
    m = length(q);
    for i = 1:m
        H = zeros(1, n);
        for j = 1:n
            H(j) = hermiteH(j-1, q(i));
        end
        fp(i) = sum(x .* H');
    end
end