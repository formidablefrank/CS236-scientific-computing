function [err, I] = simpson(h, b)
    x = 0:h:b;
    I = 0;
    for i = 1:length(x)-1
        a = x(i);
        b = x(i+1);
        temp = ((b-a)/6)*(f(a)+4*f((a+b)/2)+f(b));
        I = I + temp;
    end
    err = pi^4/15 - I;
end