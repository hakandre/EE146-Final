function [fruit,similarity] = fruit(color,shape)
%colors 1-Red, 2-Green, 3-Blue, 4-Yellow, 5-Orange, 6-Purple
%shape Features: Circle, Oval, 
fruits = zeros(1,7);

if(color==1)%red
    fruits(1) = fruits(1) +4;
    if(shape ==1) %Circle
        fruits(1) = fruits(1) + 5;
    elseif(shape ==2)
        fruits(1) = fruits(1)-1;
    end
end
if(color == 2)%Green
    fruits(2) = fruits(2) +4;
    if(shape == 1)
        fruits(2) = fruits(2)+4;
    else
        fruits(2) = fruits(2)+1;
    end
    
end
if(color == 3)%Blue
    fruits(3) = fruits(3) +8;
    if(shape == 1)
        fruits(3) = fruits(3) +2;
    elseif(shape ==2)
        fruits(3) = fruits(3) -3;
    end
end
if(color == 4)%Yellow
    fruits(4) = fruits(4) +7;
    if(shape == 1) 
        fruits(5) = fruits(5)-1; 
    elseif(shape== 2)
        fruits(4)=fruits(4)+ 3;
    end
            
end
if(color == 5)%Orange
    fruits(5) = fruits(5) +8;
    if(shape == 1)
        fruits(5) = fruits(5) +2;
    else
        fruits(5) = fruits(5) +1;
    end
end

if(color == 1)%Strawberry
    fruits(6) = fruits(6) +4;
    if(shape == 1)
        fruits(6) = fruits(6) -2;
    else
        fruits(6) = fruits(6) +5;
    end
end

if(color == 4)%Lemon
    fruits(7) = fruits(7) +7;
    if(shape == 1)
        fruits(7) = fruits(7) +2;
    else
        fruits(7) = fruits(7) -4;
    end
end

[similarity, index] = max(fruits);

fruit = index;
end

