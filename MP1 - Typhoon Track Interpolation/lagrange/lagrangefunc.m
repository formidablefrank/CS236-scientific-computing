function fp = lagrangefunc(t, y, p)
%x is a vector of independent values
%y is the vector of dependent values
%p is the point where we want to evaluate the lagrange polynomial
    n = length(t);
    l = length(p);
    fp = zeros(1);
    for m = 1:l
        fp(l) = 0;
        for j = 1:n
            la = 1;
            for k = 1:n
                if(j~=k)
                    la = la * (p(m) - t(k));
                else
                    continue
                end
            end
            lb = 1;
            for k = 1:n
                if(j~=k)
                    lb = lb * (t(j) - t(k));
                else
                    continue
                end
            end
            fp(m) = fp(m) + y(j) * la/lb;
        end
    end
end