function prob = estimate_Coin_In_Square_Probability(r, N)

x = rand();
y = rand();
count = 0;
% initializes the variables and counter used in the script

if ((x - r) > 0 && (x + r) < 1 && (y - r) > 0 && (y + r) < 1)
   
    count = count + 1;
% adds 1 to the counter if the coin leands within the square
    
end

prob = count / N;
% calculates the probability of the coin landing within the square by
% dividing the number of times the coin lands within the square by the
% total attemots