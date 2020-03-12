%% Final Project Program
clear
close all


%% COLOR TESTING
close all
Iblue = imread('TestFruits/blue.jpg');
Iyellow=imread('TestFruits/lem.jpg');
Igreen = imread('TestFruits/brocchampton.jpg');
Ired = imread('TestFruits/Appfel.jpg');
Iorange = imread('TestFruits/Orange.jpg');
Ipurple = imread('TestFruits/purple_vikings.jpg');
%imshow(I)

[bSumR, bSumG, bSumB,bdRG,bdRB,bdGB, colorBlue] = color(Iblue); % 1 - Red, 2 - Green, 3 - Blue, 4 - Yellow, 5 - Orange, 6 - Purple
[rSumR, rSumG, rSumB,rdRG,rdRB,rdGB, colorred] = color(Ired);
[gSumR, gSumG, gSumB,gdRG,gdRB,gdGB, colorgreen] = color(Igreen);
[ySumR, ySumG, ySumB,ydRG,ydRB,ydGB, coloryellow] = color(Iyellow);
[oSumR, oSumG, oSumB,odRG,odRB,odGB, colororange] = color(Iorange);
[pSumR, pSumG, pSumB,pdRG,pdRB,pdGB, colorpurple] = color(Ipurple);


%% SHAPE TESTING
close all
Icircle = imread('TestFruits/blueberry.jpg');
[majorA, minorA, xCenters, yCenters] = shape(Icircle);


%template = tmatch(I); % returns string name of detected fruit.



