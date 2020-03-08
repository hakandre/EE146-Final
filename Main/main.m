%% Final Project Program
clear
close all
I = imread('blue.jpg');
figure;
imshow(I)

[SumR, SumG, SumB] = color(I); % 1 - Red, 2 - Green, 3 - Blue, 4 - Yellow, 5 - Orange, 6 - Purple

shapeType = shape(I); % 1. Circular 2. Banana 3. Pear

template = tmatch(I); % returns string name of detected fruit.



