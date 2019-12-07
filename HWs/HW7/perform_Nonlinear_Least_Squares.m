function perform_Nonlinear_Least_Squares(N)

 data = give_NonLinear_Least_Squares_Data(N);
 
 tol = 1e-5;
 err = 1;
 beta = [1 0.5 0.3]';
 % initializes tolerance value, beta vector, and error (which is adjusted
 % within the script to l2 norm
 while err > tol
 % continues running script until the error value is less than the given
 % tolerance allowed
     for i = 1:N
         x = data(i , 1);
         expy = exp(-1 * ((x - beta(2))^2) / ((2 * beta(3))^2));
         J(i,1) = expy;
         J(i,2) = beta(1) * ((x - beta(2))/(beta(3))^2) * expy;
         J(i,3) = beta(1) * ((x - beta(2))^2/beta(3)^3) * expy;
% forms J
         y(i) = (data(i,2) - f(data(i,1) , beta));
% forms deltayk
         
     end
     
     K = transpose(J) * J;
     delb = inv(K) * transpose(J) * y';
% finds the pseudo inverse
     beta2 = beta + delb;
% calculates beta^k+1 in order to calculate the new error value
     err = sqrt((transpose(beta2 - beta)) * (beta2 - beta));
% adjusts the error each iteration based on the current and previous beta
% values
     beta = beta2;
% resets beta^k to beta^k+1 for the next iteration
 end
 
 m = 20;
 plot(x,y,'-b', "LineWidth", 6)
 legend('Data','Model Fit');
 
    function val = f(x,beta)
        val = beta(1) * exp(-((x - beta(2))^2)/(2 * (beta(3)^2)));