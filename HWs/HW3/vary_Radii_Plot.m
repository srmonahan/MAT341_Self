function vary_Radii_Plot()

rVec = [0.01:0.005:0.10 0.1:0.01:0.5]
% initializes the vector of the r values to test

for i = 1 : length(rVec)
        
    estProb(i) = estimate_Coin_In_Square_Probability(rVec(i) , 1e5);
% finds the estimated probability of the coin landing in the square for all
% the different r values within rVec and stores those probabilities in a
% vector
    
end

plot(rVec , estProb)
% plots the estimated probabilities against the r values used to find them