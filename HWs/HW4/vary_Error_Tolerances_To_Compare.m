function vary_Error_Tolerances_To_Compare()

errTolVec = [1e-1 1e-2 1e-3 1e-4 1e-5 1e-6 1e-7 1e-8 1e-9 1e-10 1e-11 1e-12];
count = 0;
itcount = 0;

for i = 1 : length(errTolVec)
    
    tol = errTolVec(i);
    
    golden_Search(tol);
    goldVec(i) = itcount;
       
    successive_Parabolic_Interpolation(tol);
    paraVec(i) = count;
    
end

goldVec
paraVec