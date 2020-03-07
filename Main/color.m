function [SumR, SumG, SumB] = color(I)
[R,G,B] = imsplit(I);
    
    
figure
histogram(R);
title("RED")
figure
histogram(G);
title("GREEN")
figure
histogram(B);
title("BLUE")

    SumR = sum(R(20:200));
    SumG = sum(G(20:200));
    SumB = sum(B(20:200));
    
    imshow(R)
    
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

