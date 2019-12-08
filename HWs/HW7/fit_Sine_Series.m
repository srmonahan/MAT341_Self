function fit_Sine_Series()

N = 500;
xData = linspace(-pi, pi, N);
yData = ((0.25 * xData.^2).* cos(xData).^4.* sin(xData).^7)';

for i = 1:length(xData)
    A = [1 xData(i)]
end

bvec = inv(A.' * A) * A.' * yData;

for j = 0:12
    k = bvec(j) * xData(j);
end





err = yData - A * bvec;

%%% a)
%%% b) Fourier sine series