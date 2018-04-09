function[x,y,z]=calculations(x,y,z,tolerance)
%[X,Y,Z]=calculations(x,y,z,tolerance)
rangey=unique(y);
rangex=unique(x);
p2=[];
for i=1:length(rangey)
    x1=[];
    z1=[];
    for j=1:length(y)
        if rangey(1,i)==y(1,j)
            x1=cat(2,x1,x(1,j));
            z1=cat(2,z1,z(1,j));
        end
    end
    
    x1
    y1=rangey(1,i)
    z1
    a=polyfit(x1,z1,2)
    x2=[min(x):tolerance:max(x)]
    i
    z2=polyval(a,x2)
    len=length(x2);
    y2=y1*ones(1,len);
    p2=cat(1,p2,[x2',y2',z2']);
    
end


x=p2(:,1)';
y=p2(:,2)';
z=p2(:,3)';
rangey=unique(y);
rangex=unique(x);
p3=[];
for i=1:length(rangex)
    y1=[];
    z1=[];
    for j=1:length(x)
        if rangex(1,i)==x(1,j)
            y1=cat(2,y1,y(1,j));
            z1=cat(2,z1,z(1,j));
        end
    end
    
    y1
    x1=rangex(1,i)
    z1
    a=polyfit(y1,z1,2)
    y2=[min(y):tolerance:max(y)]
    i
    z2=polyval(a,y2)
    len=length(y2);
    x2=x1*ones(1,len);
    p3=cat(1,p3,[x2',y2',z2']);
    
end

x=p3(:,1)';
y=p3(:,2)';
z=p3(:,3)';
end