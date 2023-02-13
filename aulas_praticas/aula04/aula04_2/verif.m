function filter = verif(bf,key,k)
filter = true;
m = length(bf);

for i = 1:k
    key = [key num2str(i)];
    h = DJB31MA(key, 127);
    h = rem(h,m)+1;
    if bf(h) == false
        filter = false;
        break;
    end
end

end