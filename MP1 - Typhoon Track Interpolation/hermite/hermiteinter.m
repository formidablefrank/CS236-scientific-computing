%given time, intervals of 6 hours
t = 0:6:174;
%given latitudes
phi = [6.1, 6.1, 6.3, 6.4, 6.4, 6.5, 6.9, 7.1, 7.3, 7.6, 7.9, 8.2, 8.7, 9.4, 10.2, 10.6, 11.0, 11.4, 11.8, 12.4, 12.6, 13.4, 14.5, 15.5, 16.5, 17.9, 19.3, 20.5, 21.8, 23.2];
%given longitudes
lambda = [151.5, 150.1, 148.7, 147.2, 145.7, 144.2, 142.9, 141.3, 139.7, 138.0, 136.1, 134.3, 132.7, 131.0, 129.0, 126.9, 124.7, 122.5, 120.4, 117.9, 116.2, 114.6, 113.1, 111.5, 110.1, 109.2, 108.0, 107.4, 107.3, 107.9];
%timesteps where we want to interpolate
query = 0:1:174;

%cubic spline interpolation function for lambda. enforcing periodic
%condition. D^1 and D^2 are equal on both ends
pp_lambda = pchip(t,lambda);
i_lambda = ppval(pp_lambda, query);

%plot original and interpolated values of lambda
figure;
plot(t,lambda,'o',query,i_lambda,':.');
xlim([0 174]);
xlabel('t');
ylabel('\lambda');
title('Monotonic Hermite Interpolation in \lambda');
daspect([1 1 1]);

%cubic spline interpolation function for phi
pp_phi = pchip(t,phi);
i_phi = ppval(pp_phi, query);

%plot original and interpolated values of phi
figure;
plot(t,phi,'o',query,i_phi,':.');
xlim([0 174]);
xlabel('t');
ylabel('\phi');
title('Monotonic Hermite Interpolation in \phi');
daspect([1 1 1]);

%now, plot lambda vs. phi for position
figure;
plot(i_lambda,i_phi,'-');
xlabel('\lambda');
ylabel('\phi');
title('Monotonic Hermite Interpolation in position');
daspect([1 1 1]);
labels = cellfun(@num2str, num2cell(query), 'UniformOutput', false);
%text(i_lambda,i_phi,labels,'VerticalAlignment','top', 'HorizontalAlignment','left','FontName','normal','FontSize',8,'Rotation',75,'FontWeight','normal');