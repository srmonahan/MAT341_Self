function OpCount = go_Go_Gaussian_Elimination(N)

A = rand(N,N);
% creates a random NxN matrix
c = 1;
% starts by looking at the first column of the matrix
r = 2;
% start by looking at the second row of the matrix
s = 2;
% starts looking at the second row
div = A(1,1);
% takes the first element of the first colummn in order to divide the rest
% of the row by it
OpCount = 0;
% initializes the operation counter

for h = 1:N
% passes over each element in the first row
    A(1,h) = A(1,h)/div;
% divides each element of the first row by the element in the first column
    OpCount = OpCount + 1;
% adds 1 to the operation counter
end

for i = 1:(N-1)
% chooses the column in which we want to replace all elements in to be zero
% except one. ie every element except the one in the first row in the first
% column we want to be 0
    for j = r:N
% passes over the rows to begin replacing
        scl = A(j,i);
% stores the value of the element we should use to scale each row
        for k = c:N
            A(j,k) = A(j,k) - scl * A((r-1),k);
% passes over each element in the row and replaces it by the scaled value
            OpCount = OpCount + 2;
% adds 2 to the operation counter because each time it is running
% multiplication and subtraction
        end
    end
    
    div = A(r,s);
% resets the divisor to the next nonzero leading coefficient because the
% only nonzero leading coefficient we want is 1

for l = 1:N
    A(r,l) = A(r,l)/div;
% divides each element in the current row by the newly assigned divisor
    OpCount = OpCount + 1;
% adds 1 to the operation counter
end

c = c + 1;
% moves onto the next column
r = r + 1;
% moves on to the rows that have yet to be replaced
s = s + 1;
end
A;
% prints out the matrix in echelon form
% now that our matrix is in echelon form we want to row reduce it to rref

M = N-1;
% if rows 1 thorugh (N-1) are in order then the last row will also be in
% order so we only have to pass over N-1 rows

for c2 = N:-1:2
% starts in the last column
    for r2 = M:-1:1
% starts in the second to last row because the last will fall into place on
% its own
beZero = A(r2,c2);
% stores the value of the element in the current location
A(r2,c2) = A(r2,c2) - beZero * A(M+1,c2);
% transforms the nonzero nonleading coefficients to 0
OpCount = OpCount + 2;
% adds 2 to the operation counter because each time it is running
% multiplication and subtraction
    end
    M = M - 1;
% changes the last row bound from the last row to the second to last row;
% then the second to last row to the third to last row, etc. because they
% are already in order
end
A;
% prints out row reduced matrix
        