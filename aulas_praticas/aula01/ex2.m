N= 1e5;
p = 0.5;
k = 2; %nu´mero de caras
n = 3; %nu´mero de lanc¸amentos
lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)==k;
probSimulacao = sum(sucessos)/N