function bf = inser(bf,key,k)
m = length(bf);

for i=1:k
    key = [key num2str(i)];
    h = DJB31MA(key, 127);
    h = rem(h,m)+1;
    bf(h) = true;
end

end