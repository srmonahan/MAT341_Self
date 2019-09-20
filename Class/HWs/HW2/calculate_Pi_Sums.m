function calculate_Pi_Sums()

tol = 10^(-6);
Ansum = 0;
Bmsum = 0;
suma = 0;
sumb1 = 0;
sumb2 = 0;
k = 0;
j = 0;
index = 0;
AVec = [];
BVec = [];

while abs(Ansum - pi) < tol
    
    k = k + 1;        
    
    suma = suma + ((-1)^k) / ((239^((2*k) + 1)) * ((2*k) + 1));
    
    Ansum = (6/sqrt(3)) * suma;
    
    index = index + 1;
    
    AVec(index) = Ansum
        
end

while abs(Bmsum - pi) < tol

    j = j + 1;
    
    sumb1 = sumb1 + ((-1)^j) / ((5^((2*k) + 1)) * ((2*k) + 1));
       
    sumb2 = sumb2 + ((-1)^j) / ((239^((2*k) + 1)) * ((2*k) + 1));
        
    Bmsum = 16*sumb1 - 4*sumb2;
    
    index = index + 1;
    
    BVec(index) = Bmsum
        
end
AVec
BVec