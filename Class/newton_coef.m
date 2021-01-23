function a = newton_coef(x, y)

% SEPERATE FROM NEWTON_EVAL FILE!
% x = [-1; 0; 1; 2]; %change
% y = [1.937; 1; 1.349; -0.995]; %change

np1 = length(x);
for k = 1:(np1-1)
    y(k+1:np1) = (y(k+1:np1) - y(k)) ./ (x(k+1:np1) - x(k));
end
a=y;