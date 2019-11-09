function N = Nelder_Mead(tol)

for i = 1:3

    xvec = [0.35 -0.25 1.5];
    yvec = [2.8 0.3 0.5];
    fvec(i) = f(xvec(i), yvec(i));
    N = 0;
    
end

err = 1;

while err > tol
    
    [fNew, indsVec] = sort(fvec);
    
    x1 = xvec(indsVec(1));
    x2 = xvec(indsVec(2));
    x3 = xvec(indsVec(3));
    
    y1 = yvec(indsVec(1));
    y2 = yvec(indsVec(2));
    y3 = yvec(indsVec(3));
    
    Xm = 0.5 * [(x1+x2) ; (y1+y2)];
    Xr = 2*Xm - [x3 ; y3];
    
    if f(Xr(1) , Xr(2)) < f(x3, y3)
        
        x3 = Xr(1);
        y3 = Xr(2);
        
    elseif f(Xr(1), Xr(2)) >= f(x3, y3)
        
        Xc = 0.5 * (Xm + [x3 ; y3]);
        
        if f(Xc(1), Xc(2)) < f(x3, y3)
            
            x3 = Xc(1);
            y3 = Xc(2);
            
        else
            
            x2 = 0.5 * (x1 + x2);
            y2 = 0.5 * (y1 + y2);
            x3 = 0.5 * (x1 + x3);
            y3 = 0.5 * (y1 + y3);
            
        end
    end
    
    fvec(1) = f(x1, y1);
    fvec(2) = f(x2, y2);
    fvec(3) = f(x3, y3);
    
    xvec(1) = x1;
    xvec(2) = x2;
    xvec(3) = x3;
    
    yvec(1) = y1;
    yvec(2) = y2;
    yvec(3) = y3;
    
    err = abs(fvec(3) - fvec(1));
    
    N = N + 1;
    
end

function val = f(x, y)

val = -(sin(x) + cos(y));