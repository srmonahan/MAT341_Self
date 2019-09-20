function plot_Vec = plot_Nested_Times()

N = [1:1:10 20:10:100 125 150 175 200 225 250];
M = length(N) - 1;
index = 0;

for i = 0:M
    
    index = index + 1;
    y(index) = calculate_Nested_For_Loop_Time(N);
    
end

lw = 3;

 loglog(N, y, 'm', 'LineWidth', lw);
 xlabel("N");
 ylabel("Times");
 