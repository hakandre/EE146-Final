function [centers,radii,s] = shape(I)
I = imbinarize(I(:,:,1),'adaptive','ForegroundPolarity','dark','Sensitivity',0.4)
[centers , radii]= imfindcircles(I, [10 700])

figure
    imshow(I)
    viscircles(centers, radii,'EdgeColor','b');
    
    s = regionprops(I,{...
    'Centroid',...
    'MajorAxisLength',...
    'MinorAxisLength',...
    'Orientation'})
   
t = linspace(0,2*pi,50);

hold on
for k = 1:length(s)
    a = s(k).MajorAxisLength/2;
    b = s(k).MinorAxisLength/2;
    Xc = s(k).Centroid(1);
    Yc = s(k).Centroid(2);
    phi = deg2rad(-s(k).Orientation);
    x = Xc + a*cos(t)*cos(phi) - b*sin(t)*sin(phi);
    y = Yc + a*cos(t)*sin(phi) + b*sin(t)*cos(phi);
    plot(x,y,'r','Linewidth',5)
end
hold off
%RETURN SHAPE DETECTED
% 1. Circular
% 2. Banana
% 3. Pear



end

