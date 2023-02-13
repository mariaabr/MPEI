% alinea a)

load("L.mat");

pages = length(L);

x = sum(L);

% identificar as páginas que são dead-end

for i = 1:pages
    if x(i) == 0
        fprintf("dead-end na posição %d \n", i)
    end
end

% alinea b)

H = zeros(pages(1),pages(1));
n = 0;

for i = 1:100
    n = sum(L(:,i));
    H(:,i) = L(:,i)/n;
end

H

% alinea c) -> matriz da google

beta = 0.85;
A = H*beta + (1-beta)*(ones(pages,pages)/pages)

% alinea d)

pagerankd = ones(1,pages(1))/pages(1);
pagerankd = H.*pagerankd

% alinea e) -> como fazer???

max = zeros(1,3);

for j = 1:3
    for i = 1:length(pagerankd)
        if pagerankd(i) > max(j)
            max(j) = pagerankd(i);
        end
    end
end

max