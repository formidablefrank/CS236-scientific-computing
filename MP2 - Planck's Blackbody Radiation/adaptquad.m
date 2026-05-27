function Q = adaptquad(a, b, tau)
    temp = 0;
    Q = ((b-a)/6)*(f(a)+4*f((a+b)/2)+f(b));
    eps = abs(6 - Q);
    if(eps > tau)
        m = a + (b-a)/2;
        temp = adaptquad(a, m, tau/2) + adaptquad(m, b, tau/2);
    else
        Q = temp;
    end
end