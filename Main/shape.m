function [A, B,Xc,Yc] = shape(I)
Ig = rgb2gray(I);
t = graythresh(Ig);
Ibin = imbinarize(Ig,'adaptive','ForegroundPolarity','dark','Sensitivity',t);
% [centers , radii]= imfindcircles(I, [10 700])
% 
 figure
    imshow(Ibin);
%     viscircles(centers, radii,'EdgeColor','b');
%     
    s = regionprops(Ibin,{...
    'Centroid',...
    'MajorAxisLength',...
    'MinorAxisLength',...
    'Orientation'})
   
t = linspace(0,2*pi,50);
i = 1;
flag =0;
for n = 1:length(s)
    if(s(n).MajorAxisLength <= length(Ibin(:,1)) && s(n).MajorAxisLength <=length(Ibin(1,:)))
        if(s(n).MajorAxisLength > length(Ibin(:,1))*0.1 && s(n).MajorAxisLength > length(Ibin(1,:))*0.1)
            s_norm(i) = s(n);
            i = i +1;
            flag = 1;
        end
    end
    
    
end
hold on
if(flag== 0)
    s_norm = [];
end
if(~isempty(s_norm))
    for k = 1:length(s_norm)
        A(k) = s_norm(k).MajorAxisLength/2;
        B(k) = s_norm(k).MinorAxisLength/2;
        Xc(k) = s_norm(k).Centroid(1);
        Yc(k) = s_norm(k).Centroid(2);
        phi = deg2rad(-s_norm(k).Orientation);
        x = Xc(k) + A(k)*cos(t)*cos(phi) - B(k)*sin(t)*sin(phi);
        y = Yc(k) + A(k)*cos(t)*sin(phi) + B(k)*sin(t)*cos(phi);
        plot(x,y,'r','Linewidth',5)
    end
else
    A = [0];
    B = [0];
    Xc = [0];
    Yc = [0];
end

hold off
%RETURN SHAPE DETECTED
% 1. Circular
% 2. Banana
% 3. Pear




end

