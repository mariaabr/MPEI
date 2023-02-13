%alinea a)
N = 1e5;
n = 20;
m = 1;

%caixa comercializada nao ter brinquedos com defeitos < 90%
p1 = 0.002;
p2 = 0.005;
pa = 0.001;

pdefeitos = p1 + p2 + pa;
ndefeitos = rand(n,N) < pdefeitos;
defeitos = ndefeitos > 0;

%processo de garantia de qualidade: 1<=m<20
ord = randperm(19);
%ord(1);
amostras = zeros(1,N);
for i = 1:m
    for c = 1:N
        amostras(c) = amostras(c) + defeitos(ord(i),c);
    end
end
amostras = amostras > 0;
probSimulacaoa = 1 - (sum(amostras)/N)

%alinea b)
N = 1e5;
n = 20;
M = 19;

%caixa comercializada nao ter brinquedos com defeitos < 90%
p1 = 0.002;
p2 = 0.005;
pa = 0.001;

pdefeitos = p1 + p2 + pa;
ndefeitos = rand(n,N) < pdefeitos;
defeitos = ndefeitos > 0;
caixas = sum(defeitos) > 0;

%processo de garantia de qualidade: 1<=m<20
for m = 1:M
    ord = randperm(19);
    amostras = zeros(1,N);
    for i = 1:m
        for c = 1:N
            amostras(c) = amostras(c) + defeitos(ord(i),c);
        end
    end
    amostras = amostras > 0;
    escaparam = caixas - amostras;                      % caixas com defeitos que escaparam ao processo de garantia de qualidade
    probSimulacaob = 1 - (sum(escaparam)/(N-sum(amostras)))
    
    if probSimulacaob >= 0.9
        mdesejado = m
        break
    end
end