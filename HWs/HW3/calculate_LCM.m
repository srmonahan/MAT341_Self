function lcm_val = calculate_LCM(x, y)
 
xvec = [x:x:x*y];
% vector of all of the multiples of x until x*y

for i=1:length(xvec)
   
        if mod(xvec(i), y)==0
        % finds the multiple of x that y divides
            xvec(i);
        end
end
xvec(i)
% prints out the first multiple of x that y divides