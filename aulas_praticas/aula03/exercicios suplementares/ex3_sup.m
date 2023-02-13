%% alinea a)

H = [0 1/2 1/2 0 1/4 0; 1 0 0 0 1/4 0; 0 0 0 1 1/4 0; 0 0 1/2 0 1/4 1; 0 0 0 0 0 0; 0 1/2 0 0 0 0]

beta = 0.85;
pages = 6;

pageranka = H*beta + (1-beta)*(ones(pages,pages)/pages);

pgr1 = ones(pages,1)/pages;

while(true)
    pgr2 = H*pgr1;
    if (abs(pgr2 - pgr1) < 0.01);
        break
    end
    pgr1 = pgr2;
end

disp(pgr2);
disp("A pág.com maior pagerank é c.fr com valor: " + max(pgr2));
disp("A pág.com menor pagerank é e.com com valor: " + min(pgr2));