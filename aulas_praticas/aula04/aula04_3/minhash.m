function hash_d = minhash(data,k)
p = primes(10000);
hash_d = zeros(k,width(data));
k_lst = p(randperm(length(p),k));

for j = 1:length(k_lst)
    for n = 1:width(data)
        hash_d(j,n) = min(mod(find(data(:,n)==1),k_lst(j)));
    end
end
end