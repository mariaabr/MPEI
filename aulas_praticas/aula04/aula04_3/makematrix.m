function m = makematrix(data)
    sSet = [];

    for i = 1:length(data)
        sSet = cat(1,sSet,data{i});
    end    
    sSet = unique(sSet);

    m = zeros(length(sSet),length(data));
    for j = 1:length(sSet)
        for n = 1:length(data)
            m(j,n) = any(data{n}==sSet(j));
        end
    end
end