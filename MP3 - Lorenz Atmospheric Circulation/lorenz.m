options = odeset('RelTol',1e-5,'AbsTol',[1e-5 1e-5 1e-5]);
init = [0 1 0];
time = [0 100];
[T,Y] = ode45(@func,time,init,options);
figure;
plot(T,Y(:,1),'-',T,Y(:,2),'-.',T,Y(:,3),'.');
xlabel('t');
ylabel('position');
title('Trajectory of particle - time-series (orig)');
legend('x', 'y', 'z');

figure;
plot3(Y(:,1), Y(:,2), Y(:,3));
xlabel('x');
ylabel('y');
zlabel('z');
title('Trajectory of particle - phase portrait (orig)');

init2 = [0.05 0.9 0.05];
[T,Y2] = ode45(@func,time,init2,options);
figure;
plot(T,Y2(:,1),'-',T,Y2(:,2),'-.',T,Y2(:,3),'.');
xlabel('t');
ylabel('position');
title('Trajectory of particle - time-series (perturbed)');
legend('x', 'y', 'z');

figure;
plot3(Y2(:,1), Y2(:,2), Y2(:,3));
xlabel('x');
ylabel('y');
zlabel('z');
title('Trajectory of particle - phase portrait (perturbed)');

%[0 1 0] => [-4.1813   -4.8319   20.6072]
%[0.05 0.9 0.05] => [-5.4432   -3.0529   26.8831]
%redefine the problem
%show graphs
%small change introduces big results - a characteristic in chaos theory
%explain parameters in atmospheric circulation
%unpredictable trajectory of a particle