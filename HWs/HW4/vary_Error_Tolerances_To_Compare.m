function vary_Error_Tolerances_To_Compare()

errTolVec = [1e-1 1e-2 1e-3 1e-4 1e-5 1e-6 1e-7 1e-8 1e-9 1e-10 1e-11 1e-12];


for i = 1 : length(errTolVec)
    
    tol = errTolVec(i);
    
    goldVec(i) = golden_Search(tol);
       
    paraVec(i) = successive_Parabolic_Interpolation(tol);
end

goldVec
paraVec

semilogx(errTolVec, goldVec, '-b', 'LineWidth', 5)
hold on
loglog(errTolVec, paraVec, '-r', 'LineWidth', 5)
legend('Golden Search' , 'Successive Parabolic Interpolation')
hold off

%%% a) For less accurate tolerances, the successive parabolic interpolation
%%% converges faster.
%%% b) When the accuracy threshold is increased the successive parabolic
%%% interpolation takes longer and longer to converge. No, the golden
%%% search algorithm converges quicker at higher accuracy thresholds. One
%%% of the algorithms changes its convergence speed because it has more
%%% points to check where the golden search method closes in on the minimum
%%% relatively quickly.