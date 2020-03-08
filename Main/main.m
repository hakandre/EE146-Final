%% Final Project Program
clear
close all
Iblue = imread('blue_fruit.jpg');
Iyellow=imread('yellemon.jpeg');
Igreen = imread('greenApple.jpg');
Ired = imread('Appfel.jpg');
Iorange = imread('orange.jpg');
figure;
%imshow(I)

[bSumR, bSumG, bSumB,bdRG,bdRB,bdGB, colorBlue] = color(Iblue); % 1 - Red, 2 - Green, 3 - Blue, 4 - Yellow, 5 - Orange, 6 - Purple
[rSumR, rSumG, rSumB,rdRG,rdRB,rdGB, colorred] = color(Ired);
[gSumR, gSumG, gSumB,gdRG,gdRB,gdGB, colorgreen] = color(Igreen);
[ySumR, ySumG, ySumB,ydRG,ydRB,ydGB, coloryellow] = color(Iyellow);
[oSumR, oSumG, oSumB,odRG,odRB,odGB, colororange] = color(Iorange);
%template = tmatch(I); % returns string name of detected fruit.



