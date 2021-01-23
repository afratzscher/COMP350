function val = newton_runge_eval(a, x, xx)

% given x and y
% DOESNT rely on newton-coef file!

% x = [0;2;3;4]; %change
% y = [7;11;28;63]; %change
% xx = [10;20]; %x's to evaluate
% a = newton_coef(x,y);

np1 = length(a);
pval = a(np1)*ones(size(xx));
for i = (np1-1):-1:1
    pval = a(i) + (xx-x(i)) .* pval;
end
val = pval;