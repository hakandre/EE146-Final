function [color] = color(I)

[R,G,B] = imsplit(I);
dim = size(I);
figure
    subplot(1,3,1)
imhist(R);
title("Red Histogram")
    subplot(1,3,2)

imhist(G);
title("Green Histogram")
    subplot(1,3,3)
imhist(B);
title("Blue Histogram")
figure
    SumR =0;
    hR=imhist(R);
    for i = 1:length(hR)
        SumR = (i)*hR(i) + SumR;
    end
    SumR = SumR/(dim(:,1)*dim(:,2));
    
    SumG = 0;
    hG = imhist(G);
    for i = 1:length(hG)
        SumG = (i)*hG(i) + SumG;
    end
    SumG = SumG/(dim(:,1)*dim(:,2));
    SumB = 0;
    hB = imhist(B);
    for i = 1:length(hB)
        SumB = (i)*hB(i) + SumB;
    end
    SumB = SumB/(dim(:,1)*dim(:,2));
    
    

    dRG = abs(SumR-SumG);
    dRB = abs(SumR-SumB);
    dGB = abs(SumG-SumB);
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
    if(dRG/dGB >2 && SumB <SumR )
        color = 1; %RED
    elseif(SumG > SumR && SumG > SumB)
        color = 2;%GREEN
    elseif(SumB >SumR && SumB >SumG && dRB> dRG) %added dRB>80 to differentiate purple 
        color = 3;%BLUE
    elseif(dRG/dGB <1 && dRG/dGB >=0.1 && SumG>SumB && SumR>SumG)
        color = 4;%YELLOW
    elseif(dRG/dGB >1 && SumG> SumB && SumR > SumG)
        color = 5; %ORANGE
    elseif(SumR >SumG && SumB >SumG)
        color = 6; %PURPLE
    else 
        color = 7;
    end
        
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

