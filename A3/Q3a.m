function num = Q3a(x,n)

num = x;
for k = 1:n-1
    for j = k+1:n
        num = num + 1;
    end
end