function[]=plotpath(X,Y,Z)
%[]=plotpath(X,Y,Z)
x=X;
y=Y;
z=Z;
figure
hold on
len=length(Y);
for i=1:len;
    plot3(X(i,:),Y(i,:),Z(i,:));
    if i<len;
        if mod(i,2)==0
            plot3(X(i:i+1,1),Y(i:i+1,1),Z(i:i+1,1));
        elseif mod(i,2)==1
            plot3(X(i:i+1,len),Y(i:i+1,len),Z(i:i+1,len));
        end
    end
end
view(3);
xlabel('x axis ');
ylabel('y axis ');
zlabel('z axis ');
title(' tool path ');

x2=min(min(x));
y2=min(min(y));
z2=min(min(z));

x3=max(max(x));
y3=max(max(y));
z3=max(max(z));
axis([x2-1,x3+1,y2-1,y3+1,z2-1,z3+1]);
text(x(1,1),y(1,1),z(1,1),'start point');
text(x(length(x)),y(length(y)),z(length(z)),'end point');
saveas(gcf, 'tool path', 'jpg');
end