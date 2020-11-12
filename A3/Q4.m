function det = Q4()
% lupp: LU factorization with partial pivoting
% 
% input:  A  
% output: L, U and P such that PA = LU
%

% initialize A
n = 100;

A = zeros(n, n);

% fill A s.t. Aij = |i-j|
for i = 1:n
    for j = 1:n
        A(i,j) = abs(i-j);
    end
end

n = size(A, 1);
P = eye(n);
ctr = 0;


for k = 1:n-1
    [maxval, maxidx] = max(abs(A(k:n, k)));
    q = maxidx + k - 1;
    if maxval == 0, error('A is singular'), end
    if q ~= k
        A([k, q], :) = A([q, k], :);
        P([k,q], :) = P([q,k], :);
        ctr = ctr + 1;
    end
    i = k+1:n;
    A(i,k) = A(i,k)/A(k,k);
    A(i,i) = A(i,i) - A(i,k)*A(k,i);
end
L = tril(A, -1) + eye(n);
U = triu(A);

%get determinant
diagL = diag(L);
diagU = diag(U);
detP = (-1)^ctr;

det = prod(diagL) * detP * prod(diagU);
