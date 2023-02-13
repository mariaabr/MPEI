%% alinea a)
p = 0.4;
q = 0.6;

T = [p^2, 0, 0, q^2; (1-p)^2, 0, 0, q*(1-q); p*(1-p), 0, 0, q*(1-q); p*(1-p), 1, 1, (1-q)^2]

%% alinea b)
%inicialmente no estado A

x0 = [1;0;0;0];
transicoes = [5 10 100 200];

for i = 1:4
    probSimulacaob = (T^transicoes(i))*x0;
    fprintf("Probabilidade de estar em cada estado ao fim de %03d: \n A = %.8f \n B = %.8f \n C = %.8f \n D = %.8f \n", transicoes(i), probSimulacaob)
end

%% alinea c)
%Tv = v
%(T - I)v = 0
%sum(v) = 1
n = length(T);
M = [T-eye(n); ones(1,n)];
x = [zeros(n,1);1];
probSimulacaoc = M\x; % \ -> divisao de matrizes

fprintf("Probabilidade limite de cada estado: \n A = %.8f \n B = %.8f \n C = %.8f \n D = %.8f \n", probSimulacaoc)