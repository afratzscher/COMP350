function x = genp(A, b)
%genp.m Gaussian elimination (without pivoting)
% input: A is nxn nonsingular matrix
%        b is nx1 matrix
% output: x is solution of Ax = b
n = length(b);
for k = 1:n-1
    i = k+1:n;
    mult = A(i,k)/A(k,k);
    A(i,i) = A(i,i) - mult*A(k,i);
    b(i) = b(i) - mult*b(k);
end
x = zeros(n,1);
for k = n:-1:1
    x(k) = (b(k) - A(k, k+1:n)*x(k+1:n))/A(k,k);
end

