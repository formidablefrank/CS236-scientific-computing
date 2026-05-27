Z(1,1:10) = [5:5:50];
Z(1:10,1) = [0 0.002 0.005 0.01 0.02 0.05 0.1 0.2 0.5 1]';
for i = 2:10
for j = 2:10
Z(i,j) = simpson(Z(j,1),Z(1,i));
end
end
format long;
disp(Z);
surf(Z);
set(gca,'dataaspectratio',[1 1 1],'projection','perspective','box','on');
xlabel('This is an x label','fontsize',14,'fontweight','bold','color',[1 0 0]);
ylabel('This is a y label','fontsize',14,'fontweight','bold','color',[0 0 0]);
zlabel('This is a z label','fontsize',14,'fontweight','bold','color',[0 0 1]);
h = rotate3d;
set(h,'ActionPostCallback',@align_axislabels);