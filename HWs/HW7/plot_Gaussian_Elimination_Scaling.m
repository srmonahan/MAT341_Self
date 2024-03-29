function plot_Gaussian_Elimination_Scaling()

NVec = 2:1:100;
% initializes the vector matrix of N values to pass into
% go_Go_Gaussian_Elimination

for n = 1:length(NVec)
    
    gausop(n) = go_Go_Gaussian_Elimination(NVec(n));
% passes each N value through go_Go_Gaussian_Elimination and stores the OpCount into a vector

end

figure(1)
loglog(NVec , gausop , '-b' , 'LineWidth' , 5);
xlabel("N");
ylabel("Operation Count");
% plots and labels the axes of the logarithmic axes graph

figure(2)
plot(NVec , gausop , '-b' , 'LineWidth' , 5);
xlabel("N");
ylabel("Operation Count");
% plots and labels the axes of the regular axes graph

%%% a) The plot appears to be quadratic which makes sense because to row
%%% reduce a matrix you go through all the rows and all the columns. So say
%%% it takes n operations to go through all the columns, you then still go
%%% through all the rows.