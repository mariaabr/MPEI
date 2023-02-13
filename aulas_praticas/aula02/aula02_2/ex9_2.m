%alinea a)
%X -> variavel aleatoria continua com distribuicao normal
%X = classificacoes dos alunos de um determinado curso
%valores teóricos miu->média, sigma-> desvio, sigma quadrado->variância

N = 1e7;
desviopadrao = 2;
media = 14;

classificacoes = desviopadrao.*randn(1,N) + media; %por defaul o randn() = randn()*1 + 0 com dp = e m = 0
%mediaclass = sum(classificacoes)/N;

sucessos = ((classificacoes>=12)&(classificacoes<=16));
probSimulacaoa = sum(sucessos)/N

%alinea b)
sucessos = ((classificacoes>=10)&(classificacoes<=18));
probSimulacaob = sum(sucessos)/N

%alinea c)
sucessos = (classificacoes>=10);
probSimulacaoc = sum(sucessos)/N

%alinea d)
%function normcdf(valor,media,desviopadrao)
%da
probSimulacaoda = normcdf(16,14,2) - normcdf (12,14,2)
%db
probSimulacaodb = normcdf(18,14,2) - normcdf (10,14,2)
%dc
probSimulacaodc = 1 - normcdf (10,14,2)