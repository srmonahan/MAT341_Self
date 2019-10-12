function lcm_val = calculate_LCM(x, y)


xvec = [x:x:x*y];
yvec = [y:y:x*y];
n = 1;

for i=1:length(xvec)
   
        if mod(xvec(i), y)==0
            xvec(i);
        end
end
xvec(i)