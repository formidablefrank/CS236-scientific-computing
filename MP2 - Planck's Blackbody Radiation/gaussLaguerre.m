function [I, t, err] = gaussLaguerre(order)
    tic();
    syms x;
    xi = flip(roots(sym2poly(laguerreL(order, x))));
    wi = w(xi);
    I = 0;
    for i=1:order
        I = I + wi(i) * (exp(xi(i)) * power(xi(i), 3)) / (exp(xi(i)) - 1);
    end
    t = toc();
    err = abs(pi^4/15-I);
end

function wi = w(roots)
    n = length(roots);
    wi = zeros(1,n);
    for i = 1:n
        xi = roots(i);
        wi(i) = xi/power(n+1,2)/power(laguerreL(n+1,xi), 2);
    end
end