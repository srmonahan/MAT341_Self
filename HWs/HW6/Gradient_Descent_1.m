function N = Gradient_Descent_1(tol, gamma)
%function takes 2 inputs; tolerance and step size, and returns iteration
%count

x = [1.0 ; 1.5];
% initilazes the first guess
err = 1;
% initializes error value
tol = 1e-8;
% sets an acceptable tolerance level
gam = gamma;
% initializes step size value since 2 values are needed to calculate the
% Barzilai-Borwein step size
N = 0;
% initializes iteration counter

while err > tol
    
    xprev = x;
% stores the current x value before it is reassigned
    x = x - gam * g(x);
% reassigns x using the gamma step size multiplied by the gradient
    err = sqrt(transpose(x - xprev) * (x - xprev));
% l^2 error calculated using the dot product
    N = N + 1;
% adds 1 to the iteration counter after each iterarion
    
end

x
% prints x, which should be the minimum when the err<tol

function val = f(x)

val = -sin(x(1)) - cos(x(2));
% original function I put in here unneccasarily 

function grad = g(x)

grad = [-cos(x(1)) ; sin(x(2))];
% gradient of f(x) that is used throughout the script

%%% a) 28 iterations
%%% b) 10 iterations
%%% c) 28 iterations