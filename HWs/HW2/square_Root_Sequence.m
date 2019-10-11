function val = square_Root_Sequence(m, n)

tol = 10^(-3);
dif = 1;
tm = 0;

while dif > tol
    
    tn = sqrt(m);
    
    for i = 1:n
        
        tn = sqrt(m + (-1)^n * tn);
        
    end
    
    n = n + 1;
    dif = abs(tm - tn);
    tm = tn;
    
    if n >= 1300
        
        break
        
    end
        
end
tn

% square_Root_Sequence(13, 1000) = 3.1401
% square_Root_Sequence(31, 1000) = 5.0902
% square_Root_Sequence(43, 1000) = 6.0765