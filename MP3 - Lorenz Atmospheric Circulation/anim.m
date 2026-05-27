figure;
A = animatedline(init(1), init(2), init(3), 'Color', 'red', 'LineWidth', 1);
B = animatedline(init2(1), init2(2), init2(3), 'Color', 'blue', 'LineWidth', 1);
title('Trajectory of particle - phase portrait (orig + perturbed)');
for k = 1:length(Y)
    addpoints(A, Y(k:k,1),Y(k:k,2),Y(k:k,3));
    addpoints(B, Y2(k:k,1),Y2(k:k,2),Y2(k:k,3));
    if(mod(k, 5) == 0)
        drawnow;
    end
end