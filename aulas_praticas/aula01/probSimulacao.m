function [probabilidade] = probSimulacao(pc, p, nc, nexp) %% p, nc, nexp são os parâmetros de entrada
%% pc = probabilidade de sair cara
%% p = número de lançamentos
%% nc = número de caras
%% nexp = números de experiências
%% probabilidade é o output da função, o que é returnado

lancamentos = rand(p,nexp) > pc;
sucessos = sum(lancamentos) == nc;
probabilidade = sum(sucessos)/nexp;

end
