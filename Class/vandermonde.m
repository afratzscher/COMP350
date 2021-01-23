function c = vandermonde()
% can also run for lagrange and newton b/c same result

np1 = 2; % change
x = [0;1]; %change
y = [1;0]; %change
% val = 1;

A = zeros(np1, np1);
A(:,1) = ones(np1, 1);
for j = 2:np1
    A(:,j) = A(:, j-1) .* x(:);
end
c = A\y;



