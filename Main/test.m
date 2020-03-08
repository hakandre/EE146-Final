clear
close all
I = imread('brocchampton.jpg');

[R, G,B] = imsplit(I);

h = imhist(R);
    SumR = sum(R(1:255));
    SumG = sum(G(1:255));
    SumB = sum(B(1:255));
figure
subplot(1,3,1)
imhist(R);
title("RED")
subplot(1,3,2)
imhist(G);
title("GREEN")
subplot(1,3,3)
imhist(B);
title("BLUE")