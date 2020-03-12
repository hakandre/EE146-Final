clear
close all
Apple0 = imread('Fruits/Apple/74_100.jpg');
Apple1 = imread('Fruits/Apple/321_100.jpg');
Apple2 = imread('Fruits/Apple/5_100.jpg');
Apple3 = imread('Fruits/Apple/r_321_100.jpg');

gApple0 = imread('Fruits/GreenApple/4_100.jpg');
gApple1 = imread('Fruits/GreenApple/r_5_100.jpg');
gApple2 = imread('Fruits/GreenApple/r_48_100.jpg');
gApple3 = imread('Fruits/GreenApple/r_94_100.jpg');

Orange0 = imread('Fruits/Orange/4_100.jpg');
Orange1 = imread('Fruits/Orange/r_32_100.jpg');
Orange2 = imread('Fruits/Orange/r_63_100.jpg');
Orange3 = imread('Fruits/Orange/r_326_100.jpg');

Banana0 = imread('Fruits/Banana/87_100.jpg');
Banana1 = imread('Fruits/Banana/12_100.jpg');
Banana2 = imread('Fruits/Banana/158_100.jpg');
Banana3 = imread('Fruits/Banana/r_12_100.jpg');

Blueberry0 = imread('Fruits/Blueberry/31_100.jpg');
Blueberry1 = imread('Fruits/Blueberry/r_69_100.jpg');
Blueberry2 = imread('Fruits/Blueberry/r_203_100.jpg');
Blueberry3 = imread('Fruits/Blueberry/r_253_100.jpg');

Strawberry0 = imread('Fruits/Strawberry/3_100.jpg');
Strawberry1 = imread('Fruits/Strawberry/99_100.jpg');
Strawberry2 = imread('Fruits/Strawberry/r_7_100.jpg');
Strawberry3 = imread('Fruits/Strawberry/r_58_100.jpg');

Lemon0 = imread('Fruits/Lemon/3_100.jpg');
Lemon1 = imread('Fruits/Lemon/327_100.jpg');
Lemon2 = imread('Fruits/Lemon/r_6_100.jpg');
Lemon3 = imread('Fruits/Lemon/r_214_100.jpg');

image =Lemon1; % Image 
image = padarray(image, [100 100], 255);
imshow(image);
title("Raw image");
%Outputs Raw Image

[fruitColor] = color(image); % 1 - Red, 2 - Green, 3 - Blue, 4 - Yellow, 5 - Orange, 6 - Purple
[majorA, minorA, xCenters, yCenters,s, Shape] = shape(image);

t=1;
ellipseConstant = [];
for i = 1:length(majorA)
    if(majorA(i)/minorA(i) >=0 && majorA(i)/minorA(i) ~= 0)
       
        ellipseConstant(t) = majorA(i)/minorA(i);
        t = t+1;
    end
end
ellipseConstant

%fruitShape = shape(image);

%Fruit Detection
    %add code to include shape features 
    
    
 [Fruit,similarity] = fruit(fruitColor,Shape);
 if(Fruit == 1) 
     display("The Fruit is an Apple")
 elseif(Fruit == 2)
     display("The Fruit is a Green Apple")
 elseif(Fruit == 3)
     display("The Fruit is a Blueberry")
 elseif(Fruit == 4)
     display("The Fruit is a Banana")
 elseif(Fruit == 5) 
     display("The Fruit is an Orange")
 elseif(Fruit == 6)
     display("The Fruit is a Strawberry")
 elseif(Fruit == 7)
     display("The Fruit is a Lemon")
 end
 Similarity_percentage = similarity/10 *100


