function [centers,radii] = shape(I)
[circles , radius]= imfindcircles(I, [10 400])

centers = circles(1,:); 
radii = radius(1);
imshow(I)
viscircles(centers, radii,'EdgeColor','b');
%RETURN SHAPE DETECTED
% 1. Circular
% 2. Banana
% 3. Pear



end

