function fit_Polynomial_Series()

N = 50;
xData = linspace(-2*pi, 2*pi, N);
yData = cos(xData)';
err = 0;
tol = 1e-5;

for i = 1:length(xData) 
    A(i,:) = [ 1 xData(i) xData(i)^2 xData(i)^3 xData(i)^4 xData(i)^5 xData(i)^6 xData(i)^7 xData(i)^8 xData(i)^9 xData(i)^10 xData(i)^11];
end

bvec = inv(A.'* A) * A.'* yData;

for j = 1:12
    k = bvec(j) * xData(j);
end

while err>tol
    err = yData - A * bvec;
end

plot(xData, yData, '.b', 'MarkerSize', 6);