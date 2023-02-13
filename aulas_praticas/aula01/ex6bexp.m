p = 0.3;
k = 2;
n = 5;

for x = 0:k
    P(x+1) = nchoosek(n, x) * p^x * (1-p)^(n-x);
end

P