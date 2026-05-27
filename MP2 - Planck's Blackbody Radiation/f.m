function y = f(x)
    if x==0
        y = 0;
    else
        y = x.^3/(exp(x)-1);
    end
end
