function [COLOR] = color(I)
    I_R = I(:,:,1);
    I_G = I(:,:,2);
    I_B = I(:,:,3);
    COLOR = I;
    
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

