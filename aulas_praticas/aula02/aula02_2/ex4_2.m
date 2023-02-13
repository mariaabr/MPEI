%alinea a)
%i)
N = 1e5;
n = 5;
defeituosas = rand(n, N) < 0.3;
probSimulacaoai = 0;

for i = 0:n
    probSimulacaoai(i+1) = sum(sum(defeituosas)== i)  / N;
end

probSimulacaoai

%ii)
x = 0:5;
fx = cumsum(probSimulacaoai)
stairs(x, fx)
xlabel('xx');
xlim([0 5]);
ylabel('Função de distribuição acumulada');
grid on

%iii)
probSimulacaoaiii = 1 - probSimulacaoai(4) - probSimulacaoai(5) - probSimulacaoai(6)