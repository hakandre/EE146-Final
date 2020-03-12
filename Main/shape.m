function [A, B,Xc,Yc,s, Shape] = shape(I)
Ig = rgb2gray(I);
Ig =medfilt2(Ig);
Hg = fspecial('average');
%Ig = imfilter(Ig, Hg);



Ie = edge(Ig,'canny',0.1);
t = graythresh(Ig);
Ibin = imbinarize(Ig,'adaptive','ForegroundPolarity','dark','Sensitivity',t*1.2);
% [centers , radii]= imfindcircles(I, [10 700])

 figure
 imshow(Ibin);
 title("Binarized Image")
 figure
 imshow(Ie);
 title("Edge Detection")
 hold on
 
%     viscircles(centers, radii,'EdgeColor','b');
%     
    s = regionprops(Ie,{...
    'Centroid',...
    'MajorAxisLength',...
    'MinorAxisLength',...
    'Orientation'})
   
t = linspace(0,2*pi,50);
i = 1;
flag =0;
for n = 1:length(s)
    if((s(n).MajorAxisLength <= length(Ibin(:,1))+20 && s(n).MajorAxisLength <= length(Ibin(1,:))+20))
        if(s(n).MajorAxisLength > length(Ibin(:,1))*0.05 && s(n).MajorAxisLength > length(Ibin(1,:))*0.05)
            s_norm(i) = s(n);
            i = i +1;
            flag = 1;
        end
    end
end

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
    Xc= [0];
    Yc= [0];
end
hold off


[value, index] = max(B)
axisBig = A(index)/B(index)

if(isempty(A))
    Shape = 0; % No shape
    display("No shape detected")
elseif(axisBig > 1.3)
    Shape = 2; %Ell5pse
    display("Ellipse")
elseif(axisBig <=1.3)
    Shape = 1; %CIRCLE
    display("Circle")
else 
    Shape = -1;
end
end
