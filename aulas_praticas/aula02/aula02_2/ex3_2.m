%alinea a)

N = 1e5;
n = 4;
lancamentos = rand(n, N) > 0.5;

for i = 0:n
    probSimulacaoa(i+1) = sum(sum(lancamentos)== i)  / N;
end

probSimulacaoa
x = 0:4;
stem(x, probSimulacaoa)
xlabel('xx');
xlim([0 4]);
ylabel('Função massa de probabilidade');
grid on

%alinea b)
media = sum(x.*probSimulacaoa)
aux = (x - media).^2;
variancia = sum(aux.*probSimulacaoa)
dp = sqrt(variancia)

%alinea d)
p = 0.5;
k = 4;
n = 4;
prob = 0;

for y = 0:k
    prob(y+1) = nchoosek(n, y) * p^y * (1-p)^(n-y);
end

prob

%alinea e)
Ex = sum(x.*prob)
Varx = sum(((x - Ex).^2).*prob)

%alinea f)
%i)
probSimulacaofi = 1 - prob(1) - prob(2)

%ii)
probSimulacaofii = 1 - prob(3) - prob(4) - prob(5) 

%iii)
probSimulacaofiii = 1 - prob(1) - prob(5)
