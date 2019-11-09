function N = golden_Search(tol)

a = 0;
% sets the lower bound for the x-values
b = 2;
% sets the upper bound for the x-values
t = (sqrt(5) - 1) / 2;
% sets the step size as half the square root of 5 - 1
x1 = a + (1 - t) * (b - a);
x2 = a + t * (b - a);
% chooses the x-values based on the step size
f1 = f(x1);
f2 = f(x2);
% plugs in the x1 and x2 values to the function below to find their
% y-values
N = 0;
% initializes the iteration counter

while (b - a) > tol
    
% runs until the distance between a and b is less than the inputted
% tolerance
    
    if f1 > f2
        
% only makes the following reassigments if f1 is greater than f2
        
        a = x1;
        x1 = x2;
        f1 = f2;
        x2 = a + t * (b - a);
        f2 = f(x2);
        
% modifies the points being tested by moving the left bound closer to the
% right by an interval of t
        
    else
        
% if f1 < f2 the following reassignments are made instead
        
        b = x2;
        x2 = x1;
        f2 = f1;
        x1 = a + (1 - t) * (b - a);
        f1 = f(x1);
        
% modifies the points being tested by moving the right bound closer to the
% left by an interval of t
        
    end
    
    N = N + 1;
    
% adds 1 to the iteration counter until the minimum if found with the given
% tolerance
    
end

function val = f(x)

val = 0.5-x*exp(-x^2);

% tells golden_Search what function to find the minimum of

%%% It takes 40 iterations to achieve 1e-8 accuracy.