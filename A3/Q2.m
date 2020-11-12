function [num] = Q2(x,n)

num = x
for i = 1:n
    for j = 1:i
        for k = j:n
            num = num + 1;
        end
    end
end