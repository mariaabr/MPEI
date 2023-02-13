%alinea a)
N = 1e5;
p = 0.5; %probabilidade rapaz
k = 1; %numero rapaz
n = 2; %numero filhos

filhos = rand(n,N) >= p;
sucessos = sum(filhos) >= k;
probSimulacaoa = sum(sucessos)/N

%alinea c)
N = 1e5;
p = 0.5;
n = 2;

filhos = rand(n,N) >= p;
sucessos1 = sum(filhos) == 2;
sucessos2 = sum(filhos) >= 1;
probSimulacaoc = sum(sucessos1)/sum(sucessos2)

%alinea d)
N = 1e5;
p = 0.5;
n = 2;

filhos = rand(n,N) >= p;
sucessos1 = sum(filhos) == 2;
sucessos2 = sum(filhos(1,:)); %reduz a matriz exclusivamente a uma linha cujo primeiro filho e rapaz
probSimulacaod = sum(sucessos1)/sum(sucessos2)

%p1 = sum(sum(filhos)==2);
%p2 = sum(sum(filhos)>=1);
%probc = p1/p2;

%alinea e)
N = 1e5;
p = 0.5;
n = 5;

filhos = rand(n, N) >= p;
sucessos1 = sum(filhos) == 2;
sucessos2 = sum(filhos) >= 1;
probSimulacaoe = sum(sucessos1)/sum(sucessos2)

%alinea f)
N = 1e5;
p = 0.5;
n = 5;

filhos = rand(n, N) >= p;
sucessos1 = sum(filhos) >= 2;
sucessos2 = sum(filhos) >= 1;
probSimulacaof = sum(sucessos1)/sum(sucessos2)







