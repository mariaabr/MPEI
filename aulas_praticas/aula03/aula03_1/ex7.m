%% alinea a)

H = [0, 0, 0, 0, 1/3, 0; 1, 0, 0, 0, 1/3, 0; 0, 1/2, 0, 1, 0, 0; 0, 0, 1, 0, 0, 0; 0, 1/2, 0, 0, 0, 0; 0, 0, 0, 0, 1/3, 0]

pages = 6;
iter = 10;
pageranka = ones(pages,1)/pages; %% how?!
for i = 1:10
    pageranka = H*pageranka;
end

pageranka

%% alinea b)

disp("spider trap -> C e D");
disp("dead-end -> F");

%% alinea c)

Hc = H;
Hc(:,6) = 1/pages;
pagerankc = ones(pages,1)/pages;
for i = 1:10
    pagerankc = Hc*pagerankc;
end

pagerankc

%% alinea d) -> como se faz a alinea d)

beta = 0.8;

u = Hc(:,6);
Hd = beta*H + (1-beta)*(ones(pages,pages)/pages);
pagerankd = Hd^10 * u

result = sum(pagerankd)

%% alinea e) -> como se faz a alinea e)

erro = 1e-4;
pageranke = u;
i = 0;

while 1
    i = i + 1;
    pgre = pageranke;
    pageranke = Hd*pageranke;
    if max(abs(pageranke - pgre)) < erro
        break;
    end
end

fprintf("São necessárias %d interações\n", i)