%% Final Project Program
clear
close all


%% COLOR TESTING
Iblue = imread('blue.jpg');
Iyellow=imread('pooh.png');
Igreen = imread('brocchampton.jpg');
Ired = imread('Appfel.jpg');
Iorange = imread('apple.png');
Ipurple = imread('purple_vikings.jpg');
%imshow(I)

[bSumR, bSumG, bSumB,bdRG,bdRB,bdGB, colorBlue] = color(Iblue); % 1 - Red, 2 - Green, 3 - Blue, 4 - Yellow, 5 - Orange, 6 - Purple
[rSumR, rSumG, rSumB,rdRG,rdRB,rdGB, colorred] = color(Ired);
[gSumR, gSumG, gSumB,gdRG,gdRB,gdGB, colorgreen] = color(Igreen);
[ySumR, ySumG, ySumB,ydRG,ydRB,ydGB, coloryellow] = color(Iyellow);
[oSumR, oSumG, oSumB,odRG,odRB,odGB, colororange] = color(Iorange);
[pSumR, pSumG, pSumB,pdRG,pdRB,pdGB, colorpurple] = color(Ipurple);


%% SHAPE TESTING
Icircle = imread('circles.png')
[circles,rad] = shape(Icircle)

%template = tmatch(I); % returns string name of detected fruit.



