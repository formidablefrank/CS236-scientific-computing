function dy = func(~, y)
    dy = zeros(3,1);
    dy(1) = 10*(y(2) - y(1));
    dy(2) = 28*y(1) - y(2) - y(1)*y(3);
    dy(3) = y(1)*y(2) - 8.0/3*y(3);
end