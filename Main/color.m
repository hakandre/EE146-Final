function [SumR, SumG, SumB] = color(I)
[R,G,B] = imsplit(I);
dim = size(I);
%{
for i = 1:dim(1)
    for j = 1:dim(2)
        if R(i,j) == 255
            R(i,j) = 0;
        end
    end
end
%}    
figure
    subplot(1,3,1)

histogram(R);
title("RED")
    subplot(1,3,2)

histogram(G);
title("GREEN")
    subplot(1,3,3)
histogram(B);
title("BLUE")

    SumR = sum(R(1:255));
    SumG = sum(G(1:255));
    SumB = sum(B(1:255));
    
    figure
    subplot(1,3,1)
    imshow(R)
    title('red image')
    subplot(1,3,2)
    
    imshow(G)
    title('green image')
    subplot(1,3,3)
    
    imshow(B)
    title('blue image')
    
    
%{
color code:
1: red
2: green
3: blue
4: yellow
5: orange
6: purple
%}
end

