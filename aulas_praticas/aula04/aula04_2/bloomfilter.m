function filter = bloomfilter(keys,n)
filter = zeros(1,n)

for i=1:length(keys)
    str = keys{i};
    pos = DJ(str, i)+1;
    filter(pos) = 1;

    pos = DJ(str, i+1)+1;
    filter(pos) = 1;
end

end