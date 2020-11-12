% Q3.m    
% runs 10 times
% solves AX=B, where:
%         A is a 10 x 10 Pascal matrix
%         B is a 10 x 5 random matrix
% relies on lupp.m (same as implemented in class)

disp(' ');
disp('i    relative error   K(A)      relative residual          eps');
disp('--------------------------------------------------------------------------------');

for i = 1:10
    A = pascal(10);
    Xt = rand(10,5);
    B = A * Xt;

    [L, U, P] = lupp(A);
    L_y = P * B;
    y = inv(L) * P * B;
    Xc = inv(U) * y;
    
    % calculating for Xc 
    relerror = norm(Xc - Xt, 'fro')/norm(Xt, 'fro');
    KA = eps * norm(A, 'fro') * norm(inv(A), 'fro');
    relresid = norm(B - (A*Xc), 'fro') / (norm(A, 'fro') * norm(Xc, 'fro'));
    
    % printing
    fprintf("%i       ", i);
    fprintf("%e       ", relerror);
    fprintf("%e         ", KA);
    fprintf("%e       ", relresid);
    fprintf("%e       \n", eps);
end