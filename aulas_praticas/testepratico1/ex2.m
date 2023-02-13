% alinea a)

load("L.mat");

pages = length(L)

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

% alinea c) -> matriz da google

beta = 0.85;
A = H*beta + (1-beta)*(ones(pages,pages)/pages);

% alinea d)

H1 = L;
H1(:,15) = 1/pages;
H1(:,24) = 1/pages;
H1(:,43) = 1/pages;
H1(:,69) = 1/pages;

erro = 1e-4;
pagerankd = ones(pages,1)/pages;
i = 0;

while 1
    pgrd = pagerankd;
    pagerankd = A*pagerankd;
    if max(abs(pagerankd - pgrd)) < erro
        break;
    end
end

% alinea e)

pagerankd(15)
pagerankd(24)
pagerankd(43)
pagerankd(69)
