function N = Newtons_1D_Opt(tol)

a = 0;
b = 2;
Xn = 0.25;
% initial guess of the minimum
err = 1;
N = 0;
% initializes iteration counter

while err > tol
    
    xtemp = Xn;
% stores the current Xn value to use to calculate the error
    Xn = Xn - (f1(Xn) / f2(Xn));
% applies Newton's method using the Xn value provided and resets the Xn
% value
    err = abs(xtemp - Xn);
% resets the error for each iteration
    N = N + 1;
% adds 1 to the iteration counter until the minimum is found with the given
% accuracy level
    
end

min = Xn;
% sets the minimum value as the Xn value

function val = f(x)

val = 0.5 - x * exp(-x^2);
% sets oiginal function that we are computing the minimum of

function val2 = f1(x)

val2 = (2 * x^2 * exp(-x^2)) - exp(-x^2);
% first derivative of the function

function val3 = f2(x)

val3 = (-4 * x^3 * exp(-x^2)) + (6 * x * exp(-x^2));
% second derivative of the function



%%% a) It takes 6 iteratons to achieve 1e-8 accuracy with an initial guess of
%%% x=0.25.
%%% b) With an initial guess of x=1.5 it takes 736 iterations to echieve
%%% 1e-8 accuracy.