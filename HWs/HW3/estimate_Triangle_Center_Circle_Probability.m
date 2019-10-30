function prob = estimate_Triangle_Center_Circle_Probability(N)

r = 2;
ang1 = 2 * pi * rand();
ang2 = 2 * pi * rand();
ang3 = 2 * pi * rand();
count = 0;

if (((ang1 - pi) > ang2) && ((ang1 - pi) > ang3))
    
    count;
    
else
    
    count = count + 1;
    
end

prob = count / N;