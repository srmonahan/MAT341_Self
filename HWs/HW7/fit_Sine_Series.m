function fit_Sine_Series()

N = 500;
xData = linspace(-pi, pi, N);
yData = ((0.25 * xData.^2).* cos(xData).^4.* sin(xData).^7)';
tol = 1e-5;
err = 0;

for i = 1:length(xData)
    A(i,:) = [1 xData(i)];
end

bvec = inv(A.'* A) * A.'* yData;

for j = 1:length(bvec)
    k = bvec(j) * xData(j);
    res = yData - A * bvec;
end

while err>tol
    err = (yData' * yData) - (bvec' * A' * yData) + (bvec' * A' * A * bvec);

end

res
plot(xData, yData, '.b', 'MarkerSize', 6)

%%% a)
%%% b) Fourier sine series