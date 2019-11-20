function N = Gradient_Descent_2(tol)
%takes an input of the error tolerance and outputs the iteration count

x = [1 ; 1.5];
% initilazes the first guess
err = 1;
% initializes error value
gam = 0.5;
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
    gam = (transpose(x - xprev) * (g(x) - g(xprev))) / (transpose(g(x) - g(xprev)) * (g(x) - g(xprev)));
% calculates Barzilai-Borwein step size
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

%%% a) 6 iterations
%%% b) 7 iterations