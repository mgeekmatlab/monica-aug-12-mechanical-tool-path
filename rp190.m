clc
clear all
close all
n1=100;
xv=2*rand(1,n1)-1;
yv=2*rand(1,n1)-1;
zv=3./(1+xv.^2+yv.^2);
scatter3(xv,yv,zv);

xi=linspace(-1,1,30);
yi=xi';
[X,Y,Z]=griddata(xv,yv,zv,xi,yi,'v4');
surf(X,Y,Z);