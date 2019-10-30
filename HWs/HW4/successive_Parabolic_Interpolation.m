function successive_Parabolic_Interpolation(tol)

x1 = 0;
x2 = 0.6;
x3 = 1.2;
% sets initial points to test
err = 1;
% initializes an error that will be adjusted based on the function values
itcount = 0;
% initializes an iteration counter

while err > tol
    
    A = [x1^2 x1 1; x2^2 x2 1; x3^2 x3 1];
% creates a matrix using the initial points 
    coeffs = inv(A)* [f(x1); f(x2); f(x3)];
% creates a new matrix of coefficients from the original matrix, A    
    a = coeffs(1);
    b = coeffs(2);
    c = coeffs(3);
% assigns the values of the coefficients matrix to a, b, and c to be used
% to find the vertex
    vertex = -b/(2*a);
% 
    x3 = x2;
    x2 = x1;
    x1 = vertex;
% reassigns the points being tested to include the vertex in the matrix, A
    err = abs(x3 - x1);
% calculates the error as the distance between x1 and x3
    itcount = itcount + 1;
% adds 1 to the counter for each iteration run
    
end

itcount
% prints the number of iterations it took to calculate the minimum

function val = f(x)
val = 0.5 - x*exp(-x^2);
% sets the function that we are trying to find the minimum of

%%% a) It takes 32 iterations to achieve 1e-8 accuracy with the given
%%% initial guesses.
%%% b) Changing the initla x3 to 2 changes the number of iterations
%%% required to find the minimum to 39 with 1e-8 accuracy. This makes sense
%%% because we started further away from the minimum so the number of
%%% iteration should have gone up, as it did. MATLAB did not
%%% issue any warnings when I ran this script.