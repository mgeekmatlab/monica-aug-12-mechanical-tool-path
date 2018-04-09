function[X,Y,Z]=plotsurface(x,y,z,tolerance)
xi=linspace(min(x),max(x),((max(x)-min(x))/tolerance));
yi=linspace(min(y),max(y),((max(y)-min(y))/tolerance))';
[X,Y,Z]=griddata(x,y,z,xi,yi,'v4');
figure
surf(X,Y,Z);
view(3);
xlabel('x axis ')
ylabel('y axis ')
zlabel('z axis ')
title('surface')
axis([min(x)-1,max(x)+1,min(y)-1,max(y)+1,min(z)-1,max(z)+1]);
saveas(gcf, 'surface', 'jpg')
end