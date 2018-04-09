%mainnew
clc;close all; clear all;
inputtype=input('\n enter 1 to give points matrix from terminal or \n press 2 for matrix already defined \n');
switch inputtype
    case 1
        %% take control points from user
        r=3;c=2;
        while (floor(sqrt(r)))^2~=r
        p=input('enter all control points in this syntax \n ''[x1,y1,z1;x2,y2,z2 ...];'' \n ');
        [r,c]=size(p);
        end
    otherwise
        %% or define control points here
        p=[1, 1, 1;
        1, 2, 2;
        1, 3, 1;
        1, 4, 1;
        2, 1, 1;
        2, 2, 2;
        2, 3, 1;
        2, 4, 2;
        3, 1, 1;
        3, 2, 1;
        3, 3, 1;
        3, 4, 2;
        4, 1, 1;
        4, 2, 1;
        4, 3, 1;
        4, 4, 1;];
end
tolerance=input('enter tolerance')
%% calculations
[r,c]=size(p)
x=p(:,1)';
y=p(:,2)';
z=p(:,3)';

%% PLOT SURFACE 
[x1,y1,z1]=plotsurface(x,y,z,tolerance);
%% PLOT TOOL PATH FOR ABOVE SURFACE 
plotpath(x1,y1,z1);

%% MAKE SMOOTH SURFACE
[X,Y,Z]=calculations(x,y,z,tolerance);
%% PLOT SURFACE 
[X1,Y1,Z1]=plotsurface(X,Y,Z,tolerance);
%% PLOT TOOL PATH FOR ABOVE SURFACE 
plotpath(X1,Y1,Z1);