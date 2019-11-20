function vary_Error_Tolerances_To_Compare()

errTolVec = [1e-1 1e-2 1e-3 1e-4 1e-5 1e-6 1e-7 1e-8 1e-9 1e-10 1e-11]
% creates the matrix of tolerance values to pass through the scripts

for i = 1:length(errTolVec)
    
    tol = errTolVec(i);
% calls each individual tolerance value
    
    grad1(i) = Gradient_Descent_1(tol , 0.5);
% stores the number of iterations it takes using the current tolerance for
% Gradient_Descent_1
    
    grad2(i) = Gradient_Descent_2(tol);
% stores the number of iterations it takes using the current tolerance for
% Gradient_Descent_2
    
end

figure (1)
semilogx(errTolVec , grad1 , '-b' , 'LineWidth', 5);
hold on
semilogx(errTolVec , grad2 , '-r' , 'LineWidth' , 5);
hold off
xlabel('Error Tolerance');
ylabel('# of Iterations');
legend('Fixed Step' , 'Barzilai-Borwein');
% plots and labels using a logarithmic x axis

figure(2)
loglog(errTolVec , grad1 , '-b' , 'LineWidth', 5);
hold on
loglog(errTolVec , grad2 , '-r' , 'LineWidth' , 5);
hold off
xlabel('Error Tolerance');
ylabel('# of Iterations');
legend('Fixed Step' , 'Barzilai-Borwein');
% plots and labels using logarithmic axes for both x and y

%%% a) The Barzilai-Borwein algorithm appears to converge faster to the
%%% minimum.
%%% b) The Barzilai-Borwein algorithm still appears to converge quicker.
%%% c) Using the Barzilai-Borwein algorithm is more of an advantage because
%%% it changes the step size each iteration based on the function values in
%%% order to converge quicker.
%%% d) I would choose the Barzilai-Borwein algorithm because it calculates
%%% a step size based on the funciton it is trying to minimize so it
%%% typically converges quicker than the fixed step-size method.