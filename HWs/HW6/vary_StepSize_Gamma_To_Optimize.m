function vary_StepSize_Gamma_To_Optimize()

for i = 1:15
    
    gam(i) = i/100;
% creates a matrix of step sizes to run through Gradient_Descent_1 script
    
end

for i = 1:length(gam)
    
    gradit(i) = Gradient_Descent_1(0.02, gam(i));
% stores the number of iterations it takes for each gamma value in a matrix
    
end

gradit

semilogx(gam , gradit , '-b' , 'LineWidth' , 5);
xlabel('Gamma');
ylabel('Iterations');
legend('Fixed Step');
% plots and labels the two matrices against each other to show how changing
% the step size drastically changes the number of iterations it takes to
% optimize the function
%%% a) The 'best' step size for this particular function seems to be 0.15,
%%% which makes sense because it is the largest step size and we saw in
%%% class that the larger the step size the quicker it is able to reach a
%%% minimum